library ieee;
use ieee.std_logic_1164.all;

entity register_n_bits is
	generic (N: positive := 8);
	port(
		-- control inputs
		clk, reset: in std_logic;
		-- data inputs
		input: in std_logic_vector(N-1 downto 0);
		-- control outputs
		-- data outputs
		output: out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture arch_register of register_n_bits is
	subtype InternalState is std_logic_vector(N-1 downto 0); -- ...
	signal next_state, curr_state: internal_state;
begin
	-- next state logic (combinatorial)
	next_state <= input; -- nextState <=  ...
	
	-- memory element (sequential)
	ME: process (clk, reset) is
	begin
		if reset='1' then 
			curr_state <= (others => '0'); -- reset state
			-- curr_state <= ...
		elsif rising_edge(clk) then
			curr_state <= nextState;
		end if;
	end process;
	
	-- output logic (combinatorial)
	output <= curr_state;
	-- <output> <= ... curr_state ...
	
end architecture;














