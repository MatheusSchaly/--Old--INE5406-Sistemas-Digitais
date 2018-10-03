library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity traffic_light_top is
port(
	reset, clock: in std_logic;
	NS, EW: out std_logic_vector(2 downto 0);
	P: out std_logic_vector(1 downto 0)
);
end entity;

architecture archTop of traffic_light_top is
	begin
		
end architecture;