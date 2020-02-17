LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PULSE_GEN IS
	port(CLK:  in  STD_LOGIC;
	     RST:  in  STD_LOGIC;
		 VIN:  in  STD_LOGIC; 
		 VOUT: out STD_LOGIC);
END PULSE_GEN;

ARCHITECTURE BEHAVE OF PULSE_GEN IS	
		 
TYPE STATE IS (IDLE, PULSE, FILTER);

SIGNAL CSTATE: STATE := IDLE;

BEGIN 
	SEQ_PROC: PROCESS(CLK, RST)
	BEGIN
		IF(RST = '1') THEN 
			CSTATE <= IDLE;
		ELSIF(RISING_EDGE(CLK)) THEN  
			CASE CSTATE is
				when IDLE => 
					VOUT <= '0';
					IF(VIN = '1') THEN
						CSTATE <= PULSE;
					END IF;
				when PULSE =>
					VOUT <= '1';
					IF(VIN = '1') THEN
						CSTATE <= FILTER;
					ELSE 
						CSTATE <= IDLE;
					END IF;
				when FILTER => 
					VOUT <= '0';
					IF(VIN = '0') THEN
						CSTATE <= IDLE;
					END IF;
				WHEN OTHERS =>
				    VOUT <= '0';
				    CSTATE <= IDLE;
			END CASE;
		END IF;
	END process;
END BEHAVE;