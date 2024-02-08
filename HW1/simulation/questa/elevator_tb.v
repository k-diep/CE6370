// Copyright (C) 2023  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// *****************************************************************************
// This file contains a Verilog test bench template that is freely editable to  
// suit user's needs .Comments are provided in each section to help the user    
// fill out necessary details.                                                  
// *****************************************************************************
// Generated on "09/09/2023 23:44:51"
                                                                                
// Verilog Test Bench template for design : elevator
// 
// Simulation tool : Questa Intel FPGA (Verilog)
// 

`timescale 1 ns/ 1 ns
module elevator_vlg_tst();
// constants                                           
// general purpose registers
//reg eachvec;
// test vector input registers
reg clk;
reg [3:0] current_floor;
reg [3:0] destination_floor;
reg overweight;
reg reset;
// wires                                               
wire arrived;
wire [3:0]  current_floor_output;
wire [1:0]  direction;
wire overweight_signal;

// assign statements (if any)                          
elevator i1 (
// port map - connection between master ports and signals/registers   
	.arrived(arrived),
	.clk(clk),
	.current_floor(current_floor),
	.current_floor_output(current_floor_output),
	.destination_floor(destination_floor),
	.direction(direction),
	.overweight(overweight),
	.overweight_signal(overweight_signal),
	.reset(reset)
);
initial                                                
begin                                                  
// code that executes only once                        
// insert code here --> begin                          
                                                       
// --> end                                             
$display("Running testbench");                       
end                                                    
always                                                 
// optional sensitivity list                           
// @(event1 or event2 or .... eventn)                  
begin                                                  
// code executes for every event on sensitivity list   
// insert code here --> begin                          
#0 clk = 1'b0; reset = 1'b0; overweight = 1'b0;
#50 reset = 1'b1;
#50 reset = 1'b0;
#50 destination_floor = 3'b111; current_floor = 3'b000;
#300 reset = 1'b1;
#50 reset = 1'b0;
#50 destination_floor = 3'b000; current_floor = 3'b111;
#300 reset = 1'b1;
#50 reset = 1'b0;
#50 overweight = 1'b1;
#50 reset = 1'b1;
$finish;
end
always #50 clk = ~clk;
                                                 
endmodule

