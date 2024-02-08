-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it. 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY fulladder_rtl IS
PORT (
	A: in std_logic;
	B: in std_logic;
	Cin: in std_logic;
	S: out std_logic;
	Cout: out std_logic);
END fulladder_rtl;

ARCHITECTURE behav OF fulladder_rtl IS
BEGIN

-- S (Based on the schematic)
S <= (A XOR B) XOR Cin ;
--Cout (Based on the schematic)
Cout <= (A AND B) OR ((A XOR B) AND Cin) ;
END behav;