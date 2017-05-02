LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

—- Crossbar:
—- In - X1, X2 / Out - Y1, Y2
—- if S=0, Y1 = X1, Y2 = X2
—- if S=1, Y1 = X2, Y2 = X1

PACKAGE crossbar_package IS
	COMPONENT crossbarC
		PORT (S, x1, x2: IN STD_LOGIC;
			y1, y2: OUT STD_LOGIC);
	END COMPONENT;
END crossbar_package;

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY crossbar IS
	PORT (S, x1, x2: IN STD_LOGIC;
	     y1, y2: OUT STD_LOGIC);
END crossbar;

ARCHITECTURE Behaviour OF crossbar IS
BEGIN
		PROCESS (S, x1, x2)
		BEGIN
			IF S = '0' THEN
				y1 <= x1;
				y2 <= x2;
			ELSE
				y1 <= x2;
				y2 <= x1;
			END IF;
		END PROCESS;
END Behaviour;