LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

PACKAGE BCDN_package IS
	COMPONENT BCDN
		PORT ( Clock      : IN     STD_LOGIC ;
			Clear, E, Load   : IN   STD_LOGIC ;
			LoadNumber : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			BCD0 : BUFFER  STD_LOGIC_VECTOR(3 DOWNTO 0) ) ;
	END COMPONENT;
END BCDN_package;


LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

-- Contador BCD de modulo N

ENTITY BCDN IS
	PORT ( Clock      : IN     STD_LOGIC ;
			Clear, E, Load   : IN   STD_LOGIC ;
			LoadNumber : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			BCD0 : BUFFER  STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000");
END BCDN;

ARCHITECTURE Behaviour OF BCDN IS
BEGIN
	
	PROCESS (Clock, Load)
	BEGIN
		IF E = '1' THEN
			IF Clock'Event AND Clock = '1' THEN
				IF Clear = '1' THEN
					BCD0 <= "0000";
				ELSIF Load = '1' THEN
					BCD0 <= LoadNumber;
				ELSE
					BCD0 <= BCD0 + '1';
				END IF;
			END IF;
		END IF;
	END PROCESS;

END Behaviour;