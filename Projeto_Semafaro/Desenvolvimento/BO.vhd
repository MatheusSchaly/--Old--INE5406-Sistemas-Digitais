library ieee;
use ieee.std_logic_1164.all;

entity BO is
	port(
		-- operative inputs
		clock, reset: in std_logic;
		ecktimer, rstcktimer, rsttime, etime, eNS, cMuxP, eP, eEW: in std_logic;
		cMuxNS, cMuxEW: in std_logic_vector(1 downto 0);

		-- operative outputs
		s1, s45, s50, s55, s100, s105, s110, s135, s140: out std_logic;
		NS, EW: out std_logic_vector(2 downto 0);
		P: out std_logic_vector(1 downto 0)
		
	);
end entity;

architecture archBO of BO is
--components:
--	register_n_bits            xxxx
-- adder_n_bits               done!
-- compareIfEqual_n_bits      xxxx
-- muxes                      xxxx

component adder_n_bits
	generic(N: positive := 8);
	port(
		inpt0, inpt1: in std_logic_vector(N-1 downto 0);
		outpt: out std_logic_vector(N-1 downto 0)
	);
end component;

component register_n_bits
	port(
		
	);
end component;

begin

	
	--RAM_inst : RAM PORT MAP (
	--	address	 => address_sig,
	--	clock	 => clock_sig,
	-- data	 => data_sig,
	--	wren	 => wren_sig,
	--	q	 => q_sig
	);

	-- ...
end architecture;