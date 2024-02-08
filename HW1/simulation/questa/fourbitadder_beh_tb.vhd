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
-- Generated on "09/05/2023 18:21:26"
                                                            
-- Vhdl Test Bench template for design  :  fourbitadder_beh
-- 
-- Simulation tool : Questa Intel FPGA (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fourbitadder_beh_vhd_tst IS
END fourbitadder_beh_vhd_tst;
ARCHITECTURE fourbitadder_beh_arch OF fourbitadder_beh_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT fourbitadder_beh
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Cin : IN STD_LOGIC;
	Cout : BUFFER STD_LOGIC;
	S : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : fourbitadder_beh
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
        -- code executes for every event on sensitivity list
		wait for 1 ns;
		A <= "0000";
		B <= "0000";
		Cin <= '0';
		
		wait for 1 ns;
		A <= "0000";
		B <= "0000";
		Cin <= '1';
		
		wait for 1 ns;
		A <= "0010";
		B <= "0010";
		Cin <= '0';
		
		wait for 1 ns;
		A <= "0010";
		B <= "0010";
		Cin <= '1';
		
		wait for 1 ns;
		A <= "0010";
		B <= "0100";
		Cin <= '0';
		
		wait for 1 ns;
		A <= "0010";
		B <= "0100";
		Cin <= '1';
		
		wait for 1 ns;
		A <= "1111";
		B <= "1111";
		Cin <= '0';
		
		wait for 1 ns;
		A <= "1111";
		B <= "1111";
		Cin <= '1';
WAIT;                                                        
END PROCESS always;                                          
END fourbitadder_beh_arch;
