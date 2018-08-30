library IEEE;
use IEEE.std_logic_1164.all;

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
	type internal_state is (S1, S2, S3, S4, S5, S6, S7, S8);
	signal next_state, current_state: internal_state;
	-- signal count: integer := 45;
	constant sec45: integer := 45;
	constant sec5: integer := 5;
begin

	Change_Cur_State: process (clock, reset) is
		variable count: integer := 45; -- Pode ser definido aqui?
	begin
		if reset = '1' then
			current_state <= S1;
			count := 45;
		end if;
		if count = 0 then
			if (current_state = S3) or (current_state = S8) then -- Se for algum estado antes de um estado verde de carros:
				count := 45;
			elsif (current_state = S6) then -- Se for o estado antes do estado verde de pedestres:
				count := 25;
			else -- Se for qualquer outro estado:
				count := 5;
			current_state <= next_state; -- Muda as luzes (chama o procedure abaixo)
			end if;
		end if;
		count := count - 1;
	end process;
	
	Change_Lights: process (current_state) is
	begin
		case current_state is
		-- Lights order: GYR GYR GR
			when S1 =>
				lights <= "10000101"; -- G R R
				next_state <= S2;
			when S2 =>
				lights <= "01000101"; -- Y R R
				next_state <= S3;
			when S3 =>
				lights <= "00100101"; -- R R R
				next_state <= S4;
			when S4 =>
				lights <= "00110001"; -- R G R
				next_state <= S5;
			when S5 =>
				lights <= "00101001"; -- R Y R
				next_state <= S6;
			when S6 =>
				lights <= "00100101"; -- R R R
				next_state <= S7;
			when S7 =>
				lights <= "00100110"; -- R R G
				next_state <= S8;
			when S8 =>
				lights <= "00100101"; -- R R R
				next_state <= S1;
		end case;
	end process;

end architecture;
			
		
		