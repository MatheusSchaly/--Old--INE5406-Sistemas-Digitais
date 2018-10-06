library ieee;
use ieee.std_logic_1164.all;

entity BC is
	port(
		-- control inputs
		clock, reset: in std_logic;
		s1, s45, s50, s55, s100, s105, s110, s135, s140: in std_logic;

		-- control outputs
		ecktimer, rstcktimer, rsttime, etime, eNS, cMuxP, eP, eEW: out std_logic;
		cMuxNS, cMuxEW: out std_logic_vector(1 downto 0)
	);
end entity;

architecture archBC of BC  is
	type InternalState is (init, S0, S2, S3, S4, S5, S6, S7, S8);
	signal nextState, currentState: InternalState;
	begin
	NSL: process(s1, s45, s50, s55, s100, s105, s110, s135, s140) is
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
				cMuxNS <= "00";
				cMuxP <= '1';
				eP <= '1';
				cMuxEW <= "10";
				eEW <= '1';

				nextState <= S0;
			when S0 =>
				if(s1='1') then
					 nextState <= S2;
				else
					 ecktimer <= '1';
					 rstcktimer <= '0';
					 rsttime <= '0';
					 etime <= '0';
					 eNS <= '0';
					 cMuxNS <= "00";
					 cMuxP <= '0';
					 eP <= '0';
					 cMuxEW <= "00";
					 eEW <= '0';

					nextState <= S0;
				end if;

			when S2 =>
			  ecktimer <= '0';
			  rstcktimer <= '1';
			  rsttime <= '0';
			  etime <= '1';
			  eNS <= '0';
			  cMuxNS <= "00";
			  cMuxP <= '0';
			  eP <= '0';
			  cMuxEW <= "00";
			  eEW <= '0';

			  if not(s45='1' and s50='1' and s55='1' and s100='1' and s105='1' and s110='1' and s135='1' and s140='1') then
				 nextState <= S0;
			  end if;
			  if s45='1' then
				 nextState <= S3;
			  end if;
			  if ((s50='1') or (s105='1') or (s135='1')) then
				 nextState <= S4;
			  end if;
			  if s55='1' then
				 nextState <= S5;
			  end if;
			  if s100='1' then
				 nextState <= S6;
			  end if;
			  if s110='1' then
				 nextState <= S7;
			  end if;
			  if s140='1' then
				 nextState <= S8;
			  end if;

			when S3 =>
				ecktimer <= '0';
				rstcktimer <= '0';
				rsttime <= '0';
				etime <= '0';
				eNS <= '1';
				cMuxNS <= "01";
				cMuxP <= '0';
				eP <= '0';
				cMuxEW <= "00";
				eEW <= '0';

				nextState <= S0;

			when S4 =>
				ecktimer <= '0';
				rstcktimer <= '0';
				rsttime <= '0';
				etime <= '0';
				eNS <= '1';
				cMuxNS <= "10";
				cMuxP <= '1';
				eP <= '1';
				cMuxEW <= "10";
				eEW <= '1';

				nextState <= S0;

			when S5 =>
				ecktimer <= '0';
				rstcktimer <= '0';
				rsttime <= '0';
				etime <= '0';
				eNS <= '0';
				cMuxNS <= "00";
				cMuxP <= '0';
				eP <= '0';
				cMuxEW <= "00";
				eEW <= '1';

				nextState <= S0;

			when S6 =>
				ecktimer <= '0';
				rstcktimer <= '0';
				rsttime <= '0';
				etime <= '0';
				eNS <= '0';
				cMuxNS <= "00";
				cMuxP <= '0';
				eP <= '0';
				cMuxEW <= "01";
				eEW <= '1';

				nextState <= S0;

			when S7 =>
				ecktimer <= '0';
				rstcktimer <= '0';
				rsttime <= '0';
				etime <= '0';
				eNS <= '0';
				cMuxNS <= "00";
				cMuxP <= '0';
				eP <= '1';
				cMuxEW <= "00";
				eEW <= '0';

				nextState <= S0;

			when S8 =>
				ecktimer <= '0';
				rstcktimer <= '1';
				rsttime <= '1';
				etime <= '0';
				eNS <= '1';
				cMuxNS <= "00";
				cMuxP <= '0';
				eP <= '0';
				cMuxEW <= "00";
				eEW <= '0';

				nextState <= S0;
		end case;
	end process;

	-- memory element (sequential)
	process(clock, reset) is
	begin
		if reset='1' then
			currentState <= init; -- reset state
		elsif rising_edge(clock) then
			currentState <= nextState;
		end if;
	end process;

	-- output-logic
	-- s1 <= '1' when currentState = S2;
	-- s45 <= '1' when currentState = S3;
-- 
	-- s50 <= '1' when currentState = S4;
	-- s105 <= '1' when currentState = S4;
	-- s135 <= '1' when currentState = S4;
-- 
	-- s55 <= '1' when currentState = S5;
	-- s100 <= '1' when currentState = S6;
	-- s110 <= '1' when currentState = S7;
	-- s140 <= '1' when currentState = S8;

end architecture;
