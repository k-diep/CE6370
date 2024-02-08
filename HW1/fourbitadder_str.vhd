-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY fourbitadder_str IS
PORT (
-- Difference from full adder is that A, B, S are vectors of 4 bits rather than 1 bit.
	A: in std_logic_vector (3 downto 0); 
	B: in std_logic_vector (3 downto 0);
	Cin: in std_logic;
	S: out std_logic_vector (3 downto 0);
	Cout: out std_logic);
END fourbitadder_str;

-- Instantiate the full adder struct
ARCHITECTURE struct OF fourbitadder_str IS
component fulladder_rtl IS
  port( 
	A: in std_logic;
	B: in std_logic;
	Cin: in std_logic;
	S: out std_logic;
	Cout: out std_logic);

END component;
signal C0, C1, C2, C3: std_logic;

BEGIN
-- Using the full adders from earlier 
F0:fulladder_rtl port map (A(0), B(0), Cin, S(0), C0);
F1:fulladder_rtl port map (A(1), B(1), C0, S(1), C1);
F2:fulladder_rtl port map (A(2), B(2), C1, S(2), C2);
F3:fulladder_rtl port map (A(3), B(3), C2, S(3), C3);
-- Cout will be the Cout of the last fulladder(C3)
Cout <= C3;
END struct;