// ============================================================================
// Copyright (c) 2013 by Terasic Technologies Inc.
// ============================================================================
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// ============================================================================
//           
//  Terasic Technologies Inc
//  9F., No.176, Sec.2, Gongdao 5th Rd, East Dist, Hsinchu City, 30070. Taiwan
//  
//  
//                     web: http://www.terasic.com/  
//                     email: support@terasic.com
//
// ============================================================================
//Date:  Mon Jun 17 20:35:29 2013
// ============================================================================

`define ENABLE_HPS

module top(
      ///////// CLOCK /////////
      input              CLOCK_50,
      input[31:0] DATA_IN,
      output reg[31:0] DATA_OUT,
      output nn_done, 
      output reg nn_start,
 
      /////////// HEX0 /////////
      output      [6:0]  HEX0
      //
      /////////// HEX1 /////////
      //output      [6:0]  HEX1,
      //
      /////////// HEX2 /////////
      //output      [6:0]  HEX2,
      //
      /////////// HEX3 /////////
      //output      [6:0]  HEX3,
      //
      /////////// HEX4 /////////
      //output      [6:0]  HEX4,
      //
      /////////// HEX5 /////////
      //output      [6:0]  HEX5,
      //
      /////////// LEDR /////////
	  //output		[9:0]   LEDR
);



  
  reg[3:0] data_add;
  
	
  reg[399:0] nn_input;
  
  
  wire nn_idle;
  wire nn_ready;
  wire nn_reset;
  
  
  wire[15:0] layer10[0:9];
  wire[0:9] layer10_ap_vld;
  
  reg [15:0] max_layer10;
  reg [3:0] max_i;
  integer i;
  
  
  //assign HEX5 = 7'b111_1111;
  //assign HEX4 = 7'b111_1111;
  //assign HEX3 = 7'b111_1111;
  //assign HEX2 = 7'b111_1111;
  //assign HEX1 = 7'b111_1111;
  //assign LEDR[0] = nn_done;
  //assign LEDR[1] = nn_start;
  //assign LEDR[2] = nn_ready;
  //assign LEDR[3] = nn_idle;
  //assign LEDR[9:6] = data_add;
  
  dec_7seg hex0(max_i , HEX0);
 
  
  myproject nn(
		 .ap_clk(CLOCK_50),
         .ap_rst(nn_reset),
         .ap_start(nn_start),
         .ap_done(nn_done),
         .ap_idle(nn_idle),
         .ap_ready(nn_idle),
         .input0_ap_vld(nn_start),
         .input0(nn_input),
         .layer10_out_0(layer10[0]),
         .layer10_out_0_ap_vld(layer10_ap_vld[0]),
         .layer10_out_1(layer10[1]),
         .layer10_out_1_ap_vld(layer10_ap_vld[1]),
         .layer10_out_2(layer10[2]),
         .layer10_out_2_ap_vld(layer10_ap_vld[2]),
         .layer10_out_3(layer10[3]),
         .layer10_out_3_ap_vld(layer10_ap_vld[3]),
         .layer10_out_4(layer10[4]),
         .layer10_out_4_ap_vld(layer10_ap_vld[4]),
         .layer10_out_5(layer10[5]),
         .layer10_out_5_ap_vld(layer10_ap_vld[5]),
         .layer10_out_6(layer10[6]),
         .layer10_out_6_ap_vld(layer10_ap_vld[6]),
         .layer10_out_7(layer10[7]),
         .layer10_out_7_ap_vld(layer10_ap_vld[7]),
         .layer10_out_8(layer10[8]),
         .layer10_out_8_ap_vld(layer10_ap_vld[8]),
         .layer10_out_9(layer10[9]),
         .layer10_out_9_ap_vld(layer10_ap_vld[9])
  );


  
always@(DATA_IN)begin
	data_add = DATA_IN[31:28];
	nn_start =0;
	case (data_add)
		4'd0: nn_input[399:372] = DATA_IN[27:0];
		4'd1: nn_input[371:344] = DATA_IN[27:0];
		4'd2: nn_input[343:316] = DATA_IN[27:0];
		4'd3: nn_input[315:288] = DATA_IN[27:0];
		4'd4: nn_input[287:260] = DATA_IN[27:0];
		4'd5: nn_input[259:232] = DATA_IN[27:0];
		4'd6: nn_input[231:204] = DATA_IN[27:0];
		4'd7: nn_input[203:176] = DATA_IN[27:0];
		4'd8: nn_input[175:148] = DATA_IN[27:0];
		4'd9: nn_input[147:120] = DATA_IN[27:0];
		4'd10: nn_input[119:92] = DATA_IN[27:0];
		4'd11: nn_input[91:64]  = DATA_IN[27:0];
		4'd12: nn_input[63:36]  = DATA_IN[27:0];
		4'd13: nn_input[35:8]   = DATA_IN[27:0];
		4'd14: begin
        nn_input[7:0] = DATA_IN[27:20];
        nn_start = 1;
		end
		default: ; // Do nothing 
	endcase

  
  end
 
  
//	always@(posedge nn_done)begin
//		max_i = 0;
//		max_layer10 = layer10[0]; 
//		for(i=1; i<10; i=i+1)begin
//			if (layer10[i]>max_layer10)begin
//				max_i = i;
//				max_layer10 = layer10[i];
//			end
//		end
//		DATA_OUT[31:24] = {4'b1111, max_i};
//	end
always@(layer10_ap_vld)begin
		if ((layer10_ap_vld == 10'b11111_11111)&&(nn_done == 1'b1)) begin
			max_i = 0;
			max_layer10 = layer10[0]; 
			for(i=1; i<10; i=i+1)begin
				if (layer10[i]>max_layer10)begin
					max_i = i;
					max_layer10 = layer10[i];
				end
			end
			DATA_OUT[31:24] = {4'b1111, max_i};
		end
	end

endmodule

  