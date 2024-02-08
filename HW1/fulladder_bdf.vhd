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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"
-- CREATED		"Mon Sep  4 15:48:52 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY fulladder_bdf IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		Cin :  IN  STD_LOGIC;
		S :  OUT  STD_LOGIC;
		Cout :  OUT  STD_LOGIC
	);
END fulladder_bdf;

ARCHITECTURE bdf_type OF fulladder_bdf IS 

SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_4 AND Cin;


SYNTHESIZED_WIRE_2 <= A AND B;


SYNTHESIZED_WIRE_4 <= A XOR B;


S <= SYNTHESIZED_WIRE_4 XOR Cin;


Cout <= SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3;


END bdf_type;