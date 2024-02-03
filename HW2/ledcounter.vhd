library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; -- NEEDED to USE +/- for STD_LOGIC data types
entity ledcounter is
port( clk: in std_logic;
reset: in std_logic;
direction: in std_logic;
count: out std_logic_vector(3 downto 0)
);
end ledcounter;
architecture Behavioral of ledcounter is
signal pre_count: std_logic_vector(31 downto 0);
begin
process(clk, reset)
begin
if (reset = '0') then
pre_count <= (others => '0');
elsif (clk='1' and clk'event) then
if (direction = '1') then
pre_count <= pre_count + '1' ;
else
pre_count <= pre_count - '1' ;
end if;
end if;
end process;
--assign the 4 most significant bits to the output
count <= pre_count(31 downto 28);
end Behavioral;