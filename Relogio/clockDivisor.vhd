LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

PACKAGE clockDivisor_package IS
	COMPONENT clockDivisor
		PORT (	Clock 	: IN		STD_LOGIC;
					SysClock : OUT		STD_LOGIC
		);
	END COMPONENT;
END clockDivisor_package;

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY clockDivisor IS
	PORT (	Clock 	: IN		STD_LOGIC;
				SysClock : OUT		STD_LOGIC
	);
END clockDivisor ;

ARCHITECTURE Behavior OF clockDivisor IS
	SIGNAL temp : STD_LOGIC ;
BEGIN
	PROCESS (Clock)
		VARIABLE Counter : INTEGER := 0 ;
	BEGIN
		IF Clock'EVENT AND Clock = '1' THEN
			Counter := Counter + 1;
			IF Counter = 2500000 THEN
				Counter := 0;
				temp <= NOT temp;
			END IF ;
		END IF ;
	END PROCESS ;
	SysClock <= temp ;
END Behavior;