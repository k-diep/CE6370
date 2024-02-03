library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity sincos_sevensegment is
	port (
		a      : in  std_logic_vector(9 downto 0); 	--      a.a
		areset : in  std_logic                   ; 					-- areset.reset
		c      : out std_logic_vector(4 downto 0); 							--      c.c
		clk    : in  std_logic                   ; 					--    clk.clk
		s      : out std_logic_vector(4 downto 0); 							--      s.s
		
		c_frac : out std_logic_vector(6 downto 0); -- cosine fractional part
		c_int  : out std_logic_vector(6 downto 0); -- cosine integer part
		c_sign : out std_logic_vector(6 downto 0); -- cosine signed part
		
		s_frac : out std_logic_vector(6 downto 0); -- sine fractional part
		s_int  : out std_logic_vector(6 downto 0); -- sine integer part
		s_sign : out std_logic_vector(6 downto 0) -- sine signed part
	);
end entity sincos_sevensegment;

ARCHITECTURE rtl OF sincos_sevensegment IS

component sincos_CORDIC_0 is
		port (
			clk    : in  std_logic                    ;           -- clk
			areset : in  std_logic                    ;           -- reset
			a      : in  std_logic_vector(9 downto 0) ; 				-- a
			c      : out std_logic_vector(4 downto 0) ;           -- c
			s      : out std_logic_vector(4 downto 0)             -- s
		);
end component sincos_CORDIC_0;


-- Holds absolute value of the binary bits
signal c_2, s_2 : std_logic_vector(4 downto 0) := "00000";
	
-- Holds signed part of sin and cos
signal c_s, s_s : std_logic;

-- Holds integer value of sin and cos
signal c_i, s_i : std_logic;

-- Holds fractional value of sin and cos
signal c_f, s_f : std_logic_vector(2 downto 0) := "000";

signal c_temp: std_logic_vector(4 downto 0);
signal s_temp: std_logic_vector(4 downto 0);
BEGIN
	-- Instance of the sincos module
	cordic_0 : component sincos_CORDIC_0
		port map (
			clk	,
			areset,
			a		,
			c		,
			s
		);
	
	--c_temp <= c;
	--s_temp <= s;
	
	sincos_process : process(c, s) is
	BEGIN
	
	--Signs
	c_s <= c(4);
	s_s <= s(4);

-- Signed Logic
---------------------------------------------	
	--Checking sign of cosine
	if (c_s = '1') then
		c_sign <= "0000001"; -- make minus(-) sign
		-- two's complement ONLY if sign is negative (msb is equal to one), otherwise use original value
		c_2 <= not (c) + "00001";
	else
		c_sign <= "0000000"; -- (all off) represent positive
		c_2 <= c;
	end if;
		
	--Checking sign of sine
	if (s_s = '1') then
		s_sign <= "0000001"; -- make minus(-) sign
		s_2 <= not (c) + "00001";
	else
		s_sign <= "0000000"; -- (all off) represent positive
		s_2 <= s;
	end if;

-- Integer Logic	
----------------------------------------------
	c_i <= c_2(3);
	s_i <= s_2(3);
	-- Int of cosine
	if (c_i = '1') then
		c_int <= "0110000"; -- make 1
	else
		c_int <= "1111110"; -- make 0
	end if;
	
	-- Int of sine
	if (s_i = '1') then
		s_int <= "0110000"; -- make 1
	else
		s_int <= "1111110"; -- make 0
	end if;
		
-- Fraction Logic	
----------------------------------------------
	c_f <= c_2(2 downto 0);
	s_f <= s_2(2 downto 0);
		
		-- Hardcode these value
		case c_f is
			when "000" => c_frac <= "1111110"; -- .000 rounds to .0
			when "001" => c_frac <= "0110000"; -- .125 rounds to .1
			when "010" => c_frac <= "1111001"; -- .25  rounds to .3
			when "011" => c_frac <= "0110011"; -- .375 rounds to .4
			when "100" => c_frac <= "1011011"; -- .5   rounds to .5
			when "101" => c_frac <= "1011111"; -- .675 rounds to .7
			when "110" => c_frac <= "1111111"; -- .75  rounds to .8
			when "111" => c_frac <= "1111011"; -- .875 rounds to .9
		end case;
		
		case s_f is
			when "000" => s_frac <= "1111110"; -- .000 rounds to .0
			when "001" => s_frac <= "0110000"; -- .125 rounds to .1
			when "010" => s_frac <= "1111001"; -- .25  rounds to .3
			when "011" => s_frac <= "0110011"; -- .375 rounds to .4
			when "100" => s_frac <= "1011011"; -- .5   rounds to .5
			when "101" => s_frac <= "1011111"; -- .675 rounds to .7
			when "110" => s_frac <= "1111111"; -- .75  rounds to .8
			when "111" => s_frac <= "1111011"; -- .875 rounds to .9
		end case;
		
end process sincos_process;
end architecture rtl;

