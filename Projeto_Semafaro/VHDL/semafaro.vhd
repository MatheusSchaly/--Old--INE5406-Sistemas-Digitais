library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity semafaro is
	port(
		  -- Control inputs
		  clock: in std_logic;
		  -- Data inputs
		  reset: in std_logic;
		  -- Data outputs
		  lights: out std_logic_vector(7 downto 0)
	);
end semafaro;

architecture semafaro_arch of semafaro is
	type internal_state is (S0, S1, S2, S3, S4, S5, S6, S7);
	signal next_state, current_state: internal_state;
	signal count: std_logic_vector(1 downto 0);
	constant sec4: std_logic_vector(1 downto 0) := "11";
	constant sec1: std_logic_vector(1 downto 0) := "01";
begin

	Change_Cur_State: process (clock, reset) is
	begin
		count <= std_logic_vector(unsigned(count) + 1); -- Nao funciona, por algum motivo...
		if reset = '1' then
			current_state <= S0;
			count <= "00";
		elsif count > sec1 then
			if (current_state /= S0) or (current_state /= S3) or (current_state /= S6) then
				current_state <= next_state;
			count <= "00";
			end if;
		elsif count > sec4 then
			current_state <= next_state;
			count <= "00";
		end if;
	end process;
	
	Change_Lights: process (current_state) is
	begin
		case current_state is
		-- Lights order: GYR GYR GR
			when S0 =>
				lights <= "10000101"; -- G R R
				next_state <= S1;
			when S1 =>
				lights <= "01000101"; -- Y R R
				next_state <= S2;
			when S2 =>
				lights <= "00100101"; -- R R R
				next_state <= S3;
			when S3 =>
				lights <= "00110001"; -- R G R
				next_state <= S4;
			when S4 =>
				lights <= "00101001"; -- R Y R
				next_state <= S5;
			when S5 =>
				lights <= "00100101"; -- R R R
				next_state <= S6;
			when S6 =>
				lights <= "00100110"; -- R R G
				next_state <= S7;
			when S7 =>
				lights <= "00100101"; -- R R R
				next_state <= S0;
		end case;
	end process;

end architecture;
			
		
		