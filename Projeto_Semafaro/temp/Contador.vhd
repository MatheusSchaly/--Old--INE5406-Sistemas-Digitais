library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity contador is
port(
	RESET: in std_logic;
	ENABLE: in std_logic;
	CLOCK_50: in std_logic;
	saida: out std_logic_vector(3 downto 0);
	tc: out std_logic
);
end contador;
architecture circuito of contador is
	signal aux_saida: std_logic_vector(3 downto 0);

begin
 process (CLOCK_50, ENABLE, RESET)
 begin
	if (RESET ='1') then
		aux_saida <= "0000";
		tc <= '0';
	elsif (CLOCK_50' event and CLOCK_50='1') then
		if (ENABLE ='1') then
			aux_saida <= aux_saida +"0001";
			if (aux_saida = "1001") then
				aux_saida<="0000";
				tc <= '1';
			else
				tc<='0';
			end if;
		end if;
	end if;
end process;

saida<=aux_saida;
end circuito;