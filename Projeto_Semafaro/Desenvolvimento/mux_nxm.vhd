library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.math_real.all;

entity mux_nxm is
	generic(
		qtdInputs: integer := 3;
		lenght: integer := 3
	);
	port(
		inpt: in std_logic_vector(qtdInputs*lenght-1 downto 0); 
		sel: in std_logic_vector(integer(ceil(log2(real(lenght))))-1 downto 0);
		outpt: out std_logic_vector(qtdInputs-1 downto 0)
	);
end entity;

architecture Behavioral of mux_nxm is
begin
	V: for i in qtdInputs-1 downto 0 generate
		outpt(i) <= inpt(to_integer(unsigned(sel))*qtdInputs+i);
	end generate;
end architecture;
