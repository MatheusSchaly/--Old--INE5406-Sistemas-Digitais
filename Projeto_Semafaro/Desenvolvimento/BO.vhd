library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.math_real.all;

entity BO is
	port(
		-- operative inputs
		clock, reset: in std_logic;
		ecktimer, rstcktimer, rsttime, etime, eNS, eP, eEW: in std_logic;
		cMuxP, cMuxNS, cMuxEW: in std_logic_vector(1 downto 0);

		-- operative outputs
		s1, s45, s50, s55, s100, s105, s110, s135, s140: out std_logic;
		
		-- data outputs
		NS, EW: out std_logic_vector(2 downto 0);
		P: out std_logic_vector(1 downto 0)
	);
end entity;

architecture archBO of BO is

--components:
--	register_n_bits            done!
-- adder_n_bits               done!
-- compareIfEqual_n_bits      done!
-- mux_nxm                    done!
-- clock_x                    done!

component clock_x is
	generic(maxValue: integer := 140);
	port(
		clock, reset, enable: in std_logic;
		outpt: out std_logic_vector(integer(ceil(log2(real(maxValue))))-1 downto 0)
	);
end component;

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

component mux_nxm
	generic(
		qtdInputs: integer := 3;
		lenght: integer := 3
	);
	port(
		inpt: in std_logic_vector(qtdInputs*lenght-1 downto 0); 
		sel: in std_logic_vector(integer(ceil(log2(real(lenght))))-1 downto 0);
		outpt: out std_logic_vector(qtdInputs-1 downto 0)
	);
end component;


--signal declaration

signal saicktimer, saisomacktimer: std_logic_vector (25 DOWNTO 0);
signal saitime, saisomatime: std_logic_vector (7 DOWNTO 0);
signal saimuxNS, saimuxEW, sairegNS, sairegEW: std_logic_vector (2 DOWNTO 0);
signal saimuxP, sairegP: std_logic_vector (1 DOWNTO 0);

-- signal clock_50: std_logic_vector (25 DOWNTO 0); -- talvez esteja errado
-- signal clock_140: std_logic_vector (7 DOWNTO 0); -- talvez esteja errado

begin
	
	Rcktimer : register_n_bits GENERIC MAP (26) PORT MAP(clock, rstcktimer, ecktimer, saisomacktimer, saicktimer); -- talvez clock errado(clock_50 ao inves de clock)
	Acktimer : adder_n_bits GENERIC MAP (26) PORT MAP(saicktimer, "00000000000000000000000001", saisomacktimer);
	Cs1 : compareIfEqual_n_bits GENERIC MAP (26) PORT MAP(saicktimer, "10111110101111000010000000", s1);
	
	Rtime : register_n_bits PORT MAP(clock, rsttime, etime, saisomatime, saitime); -- talvez clock errado(clock_140 ao inves de clock)
	Atime : adder_n_bits PORT MAP(saitime, "00000001", saisomatime);
	Cs45 : compareIfEqual_n_bits PORT MAP(saitime, "00101101", s45);
	Cs50 : compareIfEqual_n_bits PORT MAP(saitime, "00110010", s50);
	Cs55 : compareIfEqual_n_bits PORT MAP(saitime, "00110111", s55);
	Cs100 : compareIfEqual_n_bits PORT MAP(saitime, "01100100", s100);
	Cs105 : compareIfEqual_n_bits PORT MAP(saitime, "01101001", s105);
	Cs110 : compareIfEqual_n_bits PORT MAP(saitime, "01101110", s110);
	Cs135 : compareIfEqual_n_bits PORT MAP(saitime, "10000111", s135);
	Cs140 : compareIfEqual_n_bits PORT MAP(saitime, "10001100", s140);
	
	MNS: mux_nxm GENERIC MAP (qtdInputs => 3, lenght => 3) PORT MAP("100010001", cMuxNS, saiMuxNS);
	RNS : register_n_bits GENERIC MAP (3) PORT MAP(clock, reset, eNS, saimuxNS, sairegNS);
	
	--MP: mux_nxm GENERIC MAP (qtdInputs => 2, lenght => 2) PORT MAP("1001", cMuxP, saiMuxP); --error: expression has 2 elements, but must have 1 elements
	--parameter sel must have actual or default value
	MP: mux_nxm GENERIC MAP (qtdInputs => 2) PORT MAP("010001", cMuxP, saiMuxP); --error: expression has 2 elements, but must have 1 elements
	RP : register_n_bits GENERIC MAP (2) PORT MAP(clock, reset, eP, saiMuxP, sairegP);
	
	MEW: mux_nxm GENERIC MAP (qtdInputs =>3, lenght => 3) PORT MAP("100010001", cMuxEW, saiMuxEW);
	REW : register_n_bits GENERIC MAP (3) PORT MAP(clock, reset, eEW, saiMuxEW, sairegEW);

	-- output logic
	
	NS <= sairegNS;
	P <= sairegP;
	EW <= sairegEW;
	
end architecture;