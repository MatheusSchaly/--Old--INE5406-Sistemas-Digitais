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
--	register_n_bits            done!
-- adder_n_bits               done!
-- compareIfEqual_n_bits      done!
-- muxes                      xxxx

component adder_n_bits
	generic(N: positive := 8);
	port(
		inpt0, inpt1: in std_logic_vector(N-1 downto 0);
		outpt: out std_logic_vector(N-1 downto 0)
	);
end component;

component register_n_bits
	generic (N: positive := 8);
	port(
		clock, reset, enable: in std_logic;
		inpt: in std_logic_vector(N-1 downto 0);
		outpt: out std_logic_vector(N-1 downto 0)
	);
end component;

component compareIfEqual_n_bits
	generic(N: integer := 8);
	port( 
		inpt0, inpt1: in std_logic_vector(N-1 downto 0);
		outpt: out std_logic
	);
end component;

component mux
	
end component;

begin

	Rcktimer : register_n_bits PORT MAP(clock, reset, enable, inpt, outpt);
	Acktimer : adder_n_bits PORT MAP(inpt0, inpt1, outpt);
	Cs1 : compareIfEqual_n_bits PORT MAP(inpt0, inpt1, s1);
	
	Rtime : register_n_bits PORT MAP(clock, reset, enable, inpt, outpt);
	Atime : adder_n_bits PORT MAP(inpt0, inpt1, outpt);
	Cs45 : compareIfEqual_n_bits PORT MAP(inpt0, inpt1, s45);
	Cs50 : compareIfEqual_n_bits PORT MAP(inpt0, inpt1, s50);
	Cs55 : compareIfEqual_n_bits PORT MAP(inpt0, inpt1, s55);
	Cs100 : compareIfEqual_n_bits PORT MAP(inpt0, inpt1, s100);
	Cs105 : compareIfEqual_n_bits PORT MAP(inpt0, inpt1, s105);
	Cs110 : compareIfEqual_n_bits PORT MAP(inpt0, inpt1, s110);
	Cs135 : compareIfEqual_n_bits PORT MAP(inpt0, inpt1, s135);
	Cs140 : compareIfEqual_n_bits PORT MAP(inpt0, inpt1, s140);
	
	MNS: mux PORT MAP();
	RNS : register_n_bits PORT MAP(clock, reset, enable, inpt, outpt);
	
	MP: mux PORT MAP();
	RP : register_n_bits PORT MAP(clock, reset, enable, inpt, outpt);
	
	MEW: mux PORT MAP();
	REW : register_n_bits PORT MAP(clock, reset, enable, inpt, outpt);

end architecture;