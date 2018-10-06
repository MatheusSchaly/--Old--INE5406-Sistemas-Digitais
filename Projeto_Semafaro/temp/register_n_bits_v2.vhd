library ieee;
use ieee.std_logic_1164.all;

entity register_n_bits is
	generic (N: positive := 8);
	port(
		-- control inputs
		clock, reset, enable: in std_logic;
		-- data inputs
		inpt: in std_logic_vector(N-1 downto 0);
		-- data outputs
		outpt: out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture archRegister of register_n_bits is
	signal cs: std_logic_vector ((N - 1) downto 0);
	begin
	
		P: process (clock, reset) is
		begin
			if reset='1' then --asynchronous reset
				cs <= (others=>'0'); -- reset state
			elsif rising_edge(clock) then
				if(enable = '1') then
					cs <= inpt;
				end if;
			end if;
		end process;
		
		-- output logic (combinatorial)
		
		outpt <= cs;
	
end architecture;














