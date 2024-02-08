-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use ieee.std_logic_arith.all;

ENTITY fourbitadder_beh IS
PORT (
-- Difference from full adder is that A, B, S are vectors of 4 bits rather than 1 bit.
	A: in std_logic_vector(3 downto 0); 
	B: in std_logic_vector(3 downto 0);
	Cin: in std_logic;
	S: out std_logic_vector(3 downto 0);
	Cout: out std_logic);
END fourbitadder_beh;

ARCHITECTURE behavioral OF fourbitadder_beh IS
	signal temp: std_logic_vector(4 downto 0);
BEGIN
	-- Concate 0 to the left of A and B to prevent and record overflow 
	temp <= ('0' & A) + ('0' & B) + Cin;
	-- S is the 3 significant bits (3 bits from right) and Cout is the most significant
	S <= temp(3 downto 0);
	Cout <= temp(4);
END behavioral;