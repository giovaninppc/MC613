LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

-- Contador BCD de modulo N

ENTITY BCDN IS
	GENERIC (N : INTEGER := 10);
	PORT ( Clock      : IN     STD_LOGIC ;
			Clear, E   : IN   STD_LOGIC ;
			BCD0 : BUFFER  STD_LOGIC_VECTOR(3 DOWNTO 0) ) ;
END BCDN;

ARCHITECTURE Behaviour OF BCDN IS
BEGIN
	
	PROCESS (Clock)
	BEGIN
		IF Clock'Event AND Clock = '1' THEN
			IF Clear = '1' THEN
				BCD0 <= "0000";
			ELSIF E = '1' THEN
				IF BCD0 = (N - 1) THEN  -- Aplica o modulo
					BCD0 <= "0000";
				ELSE
					BCD0 <= BCD0 + '1';
				END IF;
			END IF;
		END IF;
	END PROCESS;

END Behaviour;
