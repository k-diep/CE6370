`timescale 1ns / 1ps

module top_testbench;

    // Inputs to the top module
    reg CLOCK_50;
    reg [31:0] DATA_IN;

    // Outputs from the top module
    wire [31:0] DATA_OUT;
    wire nn_done;
    wire nn_start;
    wire [6:0] HEX0;

    // Instantiate the Unit Under Test (UUT)
    top uut (
        .CLOCK_50(CLOCK_50), 
        .DATA_IN(DATA_IN), 
        .DATA_OUT(DATA_OUT),
        .nn_done(nn_done)
    );
    
    localparam dly = 10;

    // Clock generation
    initial begin
        CLOCK_50 = 0;
//        forever #10 CLOCK_50 = ~CLOCK_50;  // 50MHz clock
    end
    always #10 CLOCK_50 = ~CLOCK_50;

    // Test sequence
    initial begin
        // Initialize Inputs
        DATA_IN = 0;

        // Wait for global reset
        #100;
        

        DATA_IN = 32'b00000000000000000000000000000000;
		#dly;DATA_IN = 32'b00010000000000000000001111100000;
		#dly;DATA_IN = 32'b00100000000011100111100000000001;
		#dly;DATA_IN = 32'b00111000000111000000001000011100;
		#dly;DATA_IN = 32'b01001100000001000000010001100000;
		#dly;DATA_IN = 32'b01010100000001000110000001000000;
		#dly;DATA_IN = 32'b01100100001000000100000001000010;
		#dly;DATA_IN = 32'b01110000010000001100001000000100;
		#dly;DATA_IN = 32'b10000001100000100000001111110000;
		#dly;DATA_IN = 32'b10010010000000011100000001100000;
		#dly;DATA_IN = 32'b10100000000000000110000000000000;
		#dly;DATA_IN = 32'b10110000010000000000000000000100;
		#dly;DATA_IN = 32'b11000000000000000000110000000000;
		#dly;DATA_IN = 32'b11010000000010000000000000000001;
		#dly;DATA_IN = 32'b11101000000000000000000000000000;
		#dly;
		
		wait(nn_done);
		#10;
		

        // Finish simulation
        #100;
        $finish;
    end
    // Monitor outputs
    initial begin
        $monitor("Time = %d, max_i = %d, data_in=%b, nn_done=%b", $time, DATA_OUT[27:24], DATA_IN, nn_done);
        // ... (monitor other outputs similarly)
    end
    

endmodule
