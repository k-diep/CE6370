-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/04/2023 17:33:27"
                                                            
-- Vhdl Test Bench template for design  :  fulladder_rtl
-- 
-- Simulation tool : Questa Intel FPGA (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fulladder_rtl_vhd_tst IS
END fulladder_rtl_vhd_tst;
ARCHITECTURE fulladder_rtl_arch OF fulladder_rtl_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL S : STD_LOGIC;
COMPONENT fulladder_rtl
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	Cin : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	S : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fulladder_rtl
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Cin => Cin,
	Cout => Cout,
	S => S
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN
                                                         
	wait for 1 ns;
	A <= '0';
	B <= '0';
	Cin <= '0';
	
	wait for 1 ns;
	A <= '0';
	B <= '0';
	Cin <= '1';
	
	wait for 1 ns;
	A <= '0';
	B <= '1';
	Cin <= '0';

	wait for 1 ns;
	A <= '0';
	B <= '1';
	Cin <= '1';
	
	wait for 1 ns;
	A <= '1';
	B <= '0';
	Cin <= '0';
	
	wait for 1 ns;
	A <= '1';
	B <= '0';
	Cin <= '1';
	
	wait for 1 ns;
	A <= '1';
	B <= '1';
	Cin <= '0';
	
	wait for 1 ns;
	A <= '1';
	B <= '1';
	Cin <= '1';  
WAIT;                                                        
END PROCESS always;                                          
END fulladder_rtl_arch;
