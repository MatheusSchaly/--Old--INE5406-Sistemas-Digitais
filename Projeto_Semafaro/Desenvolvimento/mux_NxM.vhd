----------------------------------------------------------------------------------
-- Company:   Federal University of Santa Catarina
-- Students:  Alan Djon Lüdke, Matheus Henrique Schaly
-- 
-- Create Date:    06/09/2018
-- Design Name: 	 Multiplexador NxM
-- Module Name:    mux_Nx1 - Behavioral 
-- Project Name: 	 Traffic Light
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

entity mux_Nx1 is
	generic(
		n: integer := 3
	);
	port(
		input: in std_logic_vector(n-1 downto 0);
		sel: in integer(ceil(log2(real(n))))-1;
		output: out std_logic_vector(n-1 downto 0)
	);
end mux_Nx1;

architecture Behavioral of mux_Nx1 is
begin
	output <= input(sel);
end Behavioral;