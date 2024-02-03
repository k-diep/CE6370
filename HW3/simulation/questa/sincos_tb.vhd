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
-- Generated on "10/01/2023 17:12:58"
                                                            
-- Vhdl Test Bench template for design  :  sincos
-- 
-- Simulation tool : Questa Intel FPGA (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sincos_vhd_tst IS
END sincos_vhd_tst;
ARCHITECTURE sincos_arch OF sincos_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL areset : STD_LOGIC;
SIGNAL c : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL c_frac : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL c_int : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL c_sign : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL s_frac : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL s_int : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL s_sign : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT sincos
	PORT (
	a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	areset : IN STD_LOGIC;
	c : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	c_frac : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	c_int : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	c_sign : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	clk : IN STD_LOGIC;
	s : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	s_frac : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	s_int : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	s_sign : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : sincos
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	areset => areset,
	c => c,
	c_frac => c_frac,
	c_int => c_int,
	c_sign => c_sign,
	clk => clk,
	s => s,
	s_frac => s_frac,
	s_int => s_int,
	s_sign => s_sign
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;

clk_process: PROCESS
BEGIN
	clk <= '0';
	wait for 5 ns;
	clk <= '1';
	wait for 5 ns;
END PROCESS clk_process;
                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list
			--Case 1
	--wait for 10 ns;
	a <= "0000000000";
	areset <= '1';
	wait for 10 ns;
	areset <= '0';
	wait for 20 ns;
	
	-- Case 2
	
	wait for 10 ns;
	a <= "0000001000";
	--Reset
	areset <= '1';
	wait for 10 ns;
	areset <= '0';
	wait for 20 ns;
	
	-- Case 3
	wait for 10 ns;
	a <= "0000100000";
	--Reset
	areset <= '1';
	wait for 10 ns;
	areset <= '0';
	wait for 20 ns;
	
	-- Case 4
	wait for 10 ns;
	a <= "1000000000";
	areset <= '1';
	wait for 10 ns;
	areset <= '0';
	wait for 20 ns;
	
	-- Case 5
	wait for 10 ns;
	a <= "1110000000";
	areset <= '1';
	wait for 10 ns;
	areset <= '0';
	wait for 20 ns;
WAIT;                                                        
END PROCESS always;                                          
END sincos_arch;
