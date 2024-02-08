/*********************************************************************/
/*********************************************************************/
/*********************************************************************/
/*********************************************************************/
/********************* OUR WAIN PROJECT CODE *************************/
/*********************************************************************/
/*********************************************************************/
/*********************************************************************/
/*********************************************************************/

#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include "hwlib.h"
#include "socal/socal.h"
#include "socal/hps.h"
#include "socal/alt_gpio.h"
#include "hps_0.h"
 
#define HW_REGS_BASE ( ALT_STM_OFST )
#define HW_REGS_SPAN ( 0x04000000 )
#define HW_REGS_MASK ( HW_REGS_SPAN - 1 )
 
 
 //base addresses for the read and write
#define PIO_NN_INPUT_BASE	0x00 // 32 bits for the actual image bits
#define FPGA_PIO_READ	    0x10 // 8 bits for testing,receiving from FPGA
#define FPGA_PIO_WRITE	    0x20 // 8 bits for testing, sending to FPGA


// Function to preprocess the image
void preprocess_image(unsigned char source[28][28], unsigned char dest[20][20]) {
    for (int i = 4; i < 24; i++) {
        for (int j = 4; j < 24; j++) {
            dest[i - 4][j - 4] = source[i][j] >= 128 ? 1 : 0;
        }
    }
}
 

// convert command line number to integer 
int my_atoi(const char *str) {
    int res = 0;  // Initialize result

    // Iterate through each character of the string
    for (int i = 0; str[i] != '\0'; ++i) {
        if (str[i] >= '0' && str[i] <= '9') {  // Check if the character is a digit
            res = res * 10 + str[i] - '0';  // Update the result
        } else {
            // Handle non-numeric character; you might want to add error handling here
            break;
        }
    }

    return res;
}

unsigned int extractResultBits(unsigned int number) {
    // Shift right by 23 bits, so the 24th bit becomes the least significant bit
    // Then apply a mask of 0x0F (binary 1111) to extract the last 4 bits
    return (number >> 24) & 0x0F;
}

int main(int argc, char *argv[]) {
 

 if (argc != 3) {
        printf("Usage: %s <image_index>\n", argv[0]);
        return 1;
    }
 
    int image_index_lower_limit = my_atoi(argv[1]);
    if (image_index_lower_limit < 0) {
        printf("Invalid image index: Image index have to be between 0 and 9999.\n");
        return 1;
    }

    int image_index_upper_limit = my_atoi(argv[2]);
    if (image_index_upper_limit > 9999) {
        printf("Invalid image index: Image index have to be between 0 and 9999.\n");
        return 1;
    }

    void *virtual_base;
    int fd;
    //void *h2p_lw_image_addr;
	void *h2p_lw_addr_ACTUAL_IMAGE_DATA; //write
    void *h2p_lw_addr_outputFromHPS; //write
	void *h2p_lw_addr_inputFromFPGA; //read


 
    // map the address space for the LED registers into user space
    if ((fd = open("/dev/mem", (O_RDWR | O_SYNC))) == -1) {
        printf("ERROR: could not open \"/dev/mem\"...\n");
        return 1;
    }

    virtual_base = mmap(NULL, HW_REGS_SPAN, (PROT_READ | PROT_WRITE), MAP_SHARED, fd, HW_REGS_BASE);
	
    if (virtual_base == MAP_FAILED) {
        printf("ERROR: mmap() failed...\n");
        close(fd);
        return 1;
    }
  
  	// image write handle
	h2p_lw_addr_ACTUAL_IMAGE_DATA = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + PIO_NN_INPUT_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	
 	// testing write handle
	h2p_lw_addr_outputFromHPS = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + FPGA_PIO_WRITE ) & ( unsigned long)( HW_REGS_MASK ) );

	// testing read handle
	h2p_lw_addr_inputFromFPGA = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + FPGA_PIO_READ) & ( unsigned long)( HW_REGS_MASK ) );

int number_of_correctly_classified_image = 0;
int total_number_of_classified_image = 0;
// BEGIN LOOP HERE
//int image_index;
for (int image_index = image_index_lower_limit; image_index <= image_index_upper_limit; image_index++) {
	
    // Read and preprocess MNIST image
    unsigned char image[28][28];
    unsigned char processed_image[20][20];
 
    // Code to read MNIST image
    FILE *mnist_file;
    unsigned char mnist_header[16];
    int mnist_image_size = 28 * 28; // Each MNIST image is 28x28 pixels
 
    mnist_file = fopen("t10k-images.idx3-ubyte", "rb"); // Replace with the path to your MNIST file
    if (mnist_file == NULL) {
        fprintf(stderr, "Cannot open MNIST file\n");
        close(fd);
        return 1;
    }
 /********************************************************
 ****************START: PRINTING THE LABEL****************
 ********************************************************/ 
 
    FILE *file;
    unsigned int magicNumber, numberOfItems;

    //open the label 
    file = fopen("t10k-labels.idx1-ubyte", "rb");

    if (file == NULL) {
        fprintf(stderr, "Cannot open label file\n");
        return 1;
    }

    // Read the magic number and number of items
    fread(&magicNumber, sizeof(magicNumber), 1, file);
    fread(&numberOfItems, sizeof(numberOfItems), 1, file);

    // Convert from Big Endian to Little Endian
    magicNumber = __builtin_bswap32(magicNumber);
    numberOfItems = __builtin_bswap32(numberOfItems);

    // Validate the image index
    if (image_index < 0 || image_index >= numberOfItems) {
        fprintf(stderr, "Image index must be between 0 and %u\n", numberOfItems - 1);
        fclose(file);
        return 1;
    }

    // Seek to the specified label
    fseek(file, 8 + image_index, SEEK_SET); // Skip header and go to specified label
    // Read and display the label
    unsigned char label;
    fread(&label, sizeof(label), 1, file);
    printf("\nLabel of image %d: %d\n\n", image_index, label);

    // Close the file
    fclose(file);
	
 // Reading and processin image
    fread(mnist_header, sizeof(mnist_header), 1, mnist_file);     // Read the MNIST file header (16 bytes)
    fseek(mnist_file, mnist_image_size * image_index, SEEK_CUR);      // Skip to the specified image
    fread(image, 1, mnist_image_size, mnist_file);      // Read the image
    fclose(mnist_file);      // Close the file
    preprocess_image(image, processed_image);      //process the image into binary and crop it to 20x20 image
 
 /********************************************************
 ***START: PRINTING ONLY THE IMAGE IN 20 BY 20 FORMAT****
 ********************************************************/
 printf("\nSTART: PRINTING ONLY THE IMAGE IN 20 BY 20 FORMAT\n");
		for (int i = 0; i < 20; i++) {
			for (int j = 0; j < 20; j++) {
				printf("%u ", processed_image[i][j]);
			}
			printf("\n"); // New line at the end of each row
		}
 printf("\n END: PRINTING ONLY THE IMAGE IN 20 BY 20 FORMAT\n");
 /********************************************************
 ****end: PRINTING ONLY THE IMAGE IN 20 BY 20 FORMAT*****
 ********************************************************/

 // Variables for data packing and addressing
unsigned int data_word, returned_from_FPGA, DATA_OUT_returned_from_FPGA;

int pixelCount = 399;  // Counter for the number of pixels processed
// Use a while loop to ensure all pixels are sent
while (pixelCount >= 0) {
    // Reset data_word for each new packet
    data_word = 0;
    // Calculate the address from the pixelCount
    int address = ((399 - pixelCount) / 28) % 15; // Address increments every 28 pixels and wraps at 15
    // Set the first 4 bits as the address
    data_word |= (address & 0xF) << 28;
    // Pack the next 28 bits with pixel data
    for (int k = 0; k < 28 && pixelCount >= 0; k++, pixelCount--) {
        // Calculate the row and column for the current pixel
        int row = pixelCount / 20;
        int col = pixelCount % 20;
        unsigned char pixel = processed_image[row][col];
        data_word |= (pixel & 0x1) << (27 - k);
    }
    // Write the data word to the FPGA
    *(uint32_t *)h2p_lw_addr_ACTUAL_IMAGE_DATA = data_word;
}

//SECOND SEDNING TO TRIGGER RESULT
pixelCount = 399;  // Counter for the number of pixels processed
while (pixelCount >= 0) {
    // Reset data_word for each new packet
    data_word = 0;
    int address = ((399 - pixelCount) / 28) % 15; // Address increments every 28 pixels and wraps at 15
    data_word |= (address & 0xF) << 28;
    for (int k = 0; k < 28 && pixelCount >= 0; k++, pixelCount--) {
        // Calculate the row and column for the current pixel
        int row = pixelCount / 20;
        int col = pixelCount % 20;
        unsigned char pixel = processed_image[row][col];
        data_word |= (pixel & 0x1) << (27 - k);
    }
    *(uint32_t *)h2p_lw_addr_ACTUAL_IMAGE_DATA = data_word;
}

    // Wait for FPGA to complete processing
    // wait 100ms
	usleep( 100*1000 );
	// receive value

    // Write the DATA_OUT variable from the HDL from the FPGA
	DATA_OUT_returned_from_FPGA = *(uint32_t *)h2p_lw_addr_ACTUAL_IMAGE_DATA;
    printf("\n\n\n value DATA_OUT variable from the HDL from the FPGA \n");
	printf("The values are: ");
	// in binary
	for (int bit = 31; bit >= 0; bit--) {
		printf("%u", (DATA_OUT_returned_from_FPGA >> bit) & 1);
	}
	printf("\n"); // New line after printing the binary number
		
/////////////////////////////////////////////////////////////////////////////////////////////
/********************************************************************************************/		
/******************START: 	Extract the output, convert and compare with input***************/		
/********************************************************************************************/		
    unsigned int Result = extractResultBits(DATA_OUT_returned_from_FPGA);
    printf("The decimal value of the Result is (24th to 27th bits) is: %u\n\n", Result);

    printf("Actual value is %d, predicted value is %d\n", label, Result);

    if (Result == label) {
        printf("CORRECT Prediction\n");
		number_of_correctly_classified_image++;
    	total_number_of_classified_image++;
    } else {
        printf("INCORRECT Prediction\n");
    	total_number_of_classified_image++;
    }
/********************************************************************************************/		
/******************END: 	Extract the output, convert and compare with input***************/		
/********************************************************************************************/		
}

// END OF LOOP
int accuracy = 0;
accuracy = ((number_of_correctly_classified_image *100)/total_number_of_classified_image);
    printf("\n\n **************** CLASSIFICATION RESULT DATA ***********************\n\n");
    printf("TOTAL NUMBER OF PREDICTED IMAGES IS: %d\n", total_number_of_classified_image);
	printf("NUMBER OF CORRECTLY PREDICTED IMAGES IS: %d\n\n", number_of_correctly_classified_image);
	printf("        ACCURACY IS: %d percent \n\n\n", accuracy);
	

    // Clean up
    if (munmap(virtual_base, HW_REGS_SPAN) != 0) {
        printf("ERROR: munmap() failed...\n");
        close(fd);
        return 1;
    }
 
    close(fd);
    return 0;
}

