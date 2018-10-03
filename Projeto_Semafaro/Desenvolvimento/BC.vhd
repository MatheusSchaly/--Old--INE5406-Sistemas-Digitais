library ieee;
use ieee.std_logic_1164.all;

entity BC is
	port(
		-- control inputs
		clock, reset: in std_logic;
		s1, s45, s50, s55, s100, s105, s110, s135, s140: in std_logic;
		
		-- control outputs
		ecktimer, rstcktimer, rsttime, etime, eNS, cMuxNS, cMuxP, eP, cMuxEW, eEW: out std_logic

	);
end entity;

architecture archBC of BC  is
	type InternalState is (init, S1, S2, S3, S4, S5, S6, S7, S8);
	signal nextState, currentState: InternalState;

	-- next-state logic (combinatorial)
	begin
		nextState <= currentState;
		case currentState is
			when init =>
				ecktimer <= '0';
				rstcktimer <= '1';
				rsttime <= '1';
				etime <= '0';
				eNS <= '1';
				cMuxNS <= '0';
				cMuxP <= '1';
				eP <= '1';
				cMuxEW <= '2';
				eEW <= '1';

				nextState <= S1;
			when S1 =>
				ecktimer <= '1';
				
				if not(s45 and s50 and s55 and s100 and s105 and s110 and s135 and s140) then
				nextState <= S2;
				elsif s45='1' then 
					nextState <= S3;
				elsif ((s50='1') or (s105='1') or (s135='1')) then
					nextState <= S4;
				elsif s55='1' then
					nextState <= S5;
				elsif s100='1' then
					nextState <= S6;
				elsif s110='1' then
					nextState <= S7;
				elsif s140='1' then
					nextState <= S8;
				end if;
			when S2 =>
				ecktimer <= '0';
				rstcktimer <= '1';
				rsttime <= '0';
				etime <= '1';
				eNS <= '0';
				--cMuxNS <= '0';
				--cMuxP <= '0';
				eP <= '0';
				--cMuxEW <= '0';
				eEW <= '0';
				
				if s1 = '1' then
					nextState <= S1;
				else
					nextState <= S2;
				end if;
				
			when S3 =>
				ecktimer <= '0';
				rstcktimer <= '0';
				rsttime <= '0';
				etime <= '0';
				eNS <= '1';
				cMuxNS <= '1';
				--cMuxP <= '0';
				eP <= '0';
				--cMuxEW <= '0';
				eEW <= '0';
				
				nextState <= S2;
			when S4 =>
				ecktimer <= '0';
				rstcktimer <= '0';
				rsttime <= '0';
				etime <= '0';
				eNS <= '1';
				cMuxNS <= '2';
				cMuxP <= '1';
				eP <= '1';
				cMuxEW <= '2';
				eEW <= '1';
				
				nextState <= S2;
			when S5 =>
				ecktimer <= '0';
				rstcktimer <= '0';
				rsttime <= '0';
				etime <= '0';
				eNS <= '0';
				--cMuxNS <= '0';
				--cMuxP <= '0';
				eP <= '0';
				cMuxEW <= '0';
				eEW <= '1';
				
				nextState <= S2;
			when S6 =>
				ecktimer <= '0';
				rstcktimer <= '0';
				rsttime <= '0';
				etime <= '0';
				eNS <= '0';
				--cMuxNS <= '0';
				--cMuxP <= '0';
				eP <= '0';
				cMuxEW <= '1';
				eEW <= '1';
				
				nextState <= S2;
			when S7 =>
				ecktimer <= '0';
				rstcktimer <= '0';
				rsttime <= '0';
				etime <= '0';
				eNS <= '0';
				--cMuxNS <= '0';
				cMuxP <= '0';
				eP <= '1';
				--cMuxEW <= '0';
				eEW <= '0';
				
				nextState <= S2;
			when S8 =>
				ecktimer <= '0';
				rstcktimer <= '1';
				rsttime <= '1';
				etime <= '0';
				eNS <= '1';
				cMuxNS <= '0';
				--cMuxP <= '0';
				eP <= '0';
				--cMuxEW <= '0';
				eEW <= '0';
				
				nextState <= S2;
		end case;
	end process;

	-- memory element (sequential)
	process(clock, reset) is
	begin
		if reset='1' then
			currentState <= init; -- reset state
		elsif rising_edge(clk) then
			currentState <= nextState;
		end if;
	end process;

	-- output-logic
	s1 <= '1' when currentState = S2;
	s45 <= '1' when currentState = S3;
	
	s50 <= '1' when currentState = S4;
	s105 <= '1' when currentState = S4;
	s135 <= '1' when currentState = S4;
	
	s55 <= '1' when currentState = S5;
	s100 <= '1' when currentState = S6;
	s110 <= '1' when currentState = S7;
	s140 <= '1' when currentState = S8;
	
	--MT <= "01" when currentState=ABRINDO else
		--	"10" when currentState=FECHANDO else
		--	"00";

end architecture;