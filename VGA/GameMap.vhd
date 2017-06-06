library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

PACKAGE GameMap IS
PROCEDURE dMap(SIGNAL Xcur,Ycur:IN INTEGER;
				 SIGNAL DRAWMAP: OUT STD_LOGIC);
END GameMap;

-- Esses procedures retornam 1 se deve desenhar um pixel branco na tela - mapa do jogo

PACKAGE BODY GameMap IS
PROCEDURE dMap(SIGNAL Xcur,Ycur:IN INTEGER;SIGNAL DRAWMAP: OUT STD_LOGIC) IS

-- Constantes de pixels para posicionamento na tela
CONSTANT Ys : INTEGER := 43;
CONSTANT Xs : INTEGER := 409;

BEGIN

-- Posicao invalida de desenhos do mapa
	IF(Ycur < Ys OR Xcur < Xs) THEN
		DRAWMAP<='0';
		
-- Floor
	ELSIF(Ycur > 1050) THEN
		DRAWMAP<='1';

-- Map test 1 - square
	ELSIF ((Ycur > Ys + 10) AND (Ycur < Ys + 50) AND (Xcur > Xs + 10) AND (Xcur < Xs + 50)) THEN
		DRAWMAP<='1';

-- Map A1
	ELSIF ((Ycur > Ys + 980) AND (Ycur < Ys + 1051) AND (Xcur > Xs + 1200) AND (Xcur < Xs + 1280)) THEN
		DRAWMAP<='1';			
-- Map A2
	ELSIF ((Ycur > Ys + 925) AND (Ycur < Ys + 945) AND (Xcur > Xs + 1000) AND (Xcur < Xs + 1150)) THEN
		DRAWMAP<='1';
-- Map A3
	ELSIF ((Ycur > Ys + 925) AND (Ycur < Ys + 945) AND (Xcur > Xs + 700) AND (Xcur < Xs + 950)) THEN
		DRAWMAP<='1';
-- Map A4
	ELSIF ((Ycur > Ys + 925) AND (Ycur < Ys + 945) AND (Xcur > Xs + 300) AND (Xcur < Xs + 550)) THEN
		DRAWMAP<='1';
		
-- Map Escada 1 d1
	ELSIF ((Ycur > Ys + 925) AND (Ycur < Ys + 945) AND (Xcur > Xs + 280) AND (Xcur < Xs + 302)) THEN
		DRAWMAP<='1';
-- Map Escada 1 d2
	ELSIF ((Ycur > Ys + 905) AND (Ycur < Ys + 927) AND (Xcur > Xs + 260) AND (Xcur < Xs + 282)) THEN
		DRAWMAP<='1';
-- Map Escada 1 d3
	ELSIF ((Ycur > Ys + 885) AND (Ycur < Ys + 907) AND (Xcur > Xs + 240) AND (Xcur < Xs + 262)) THEN
		DRAWMAP<='1';
-- Map Escada 1 d4
	ELSIF ((Ycur > Ys + 865) AND (Ycur < Ys + 887) AND (Xcur > Xs + 220) AND (Xcur < Xs + 242)) THEN
		DRAWMAP<='1';
-- Map Escada 1 d5
	ELSIF ((Ycur > Ys + 845) AND (Ycur < Ys + 867) AND (Xcur > Xs + 200) AND (Xcur < Xs + 222)) THEN
		DRAWMAP<='1';
-- Map Escada 1 d6
	ELSIF ((Ycur > Ys + 825) AND (Ycur < Ys + 847) AND (Xcur > Xs + 180) AND (Xcur < Xs + 202)) THEN
		DRAWMAP<='1';
		
-- Map B1
	ELSIF ((Ycur > Ys + 825) AND (Ycur < Ys + 847) AND (Xcur > Xs + 0) AND (Xcur < Xs + 181))   THEN
		DRAWMAP<='1';

-- Map C1
	ELSIF ((Ycur > Ys + 760) AND (Ycur < Ys + 785) AND (Xcur > Xs + 90) AND (Xcur < Xs + 220))   THEN
		DRAWMAP<='1';
-- Map C2
	ELSIF ((Ycur > Ys + 760) AND (Ycur < Ys + 785) AND (Xcur > Xs + 280) AND (Xcur < Xs + 400))   THEN
		DRAWMAP<='1';
-- Map C3
	ELSIF ((Ycur > Ys + 760) AND (Ycur < Ys + 785) AND (Xcur > Xs + 480) AND (Xcur < Xs + 800))   THEN
		DRAWMAP<='1';
		
-- Map D1
	ELSIF ((Ycur > Ys + 700) AND (Ycur < Ys + 762) AND (Xcur > Xs + 600) AND (Xcur < Xs + 800))   THEN
		DRAWMAP<='1';
-- Map D2
	ELSIF ((Ycur > Ys + 640) AND (Ycur < Ys + 685) AND (Xcur > Xs + 600) AND (Xcur < Xs + 800))   THEN
		DRAWMAP<='1';
		
-- Map Escada 2 d1
	ELSIF ((Ycur > Ys + 925 - 230) AND (Ycur < Ys + 945- 230) AND (Xcur > Xs + 280 + 230) AND (Xcur < Xs + 302 + 230)) THEN
		DRAWMAP<='1';
-- Map Escada 2 d2
	ELSIF ((Ycur > Ys + 905- 230) AND (Ycur < Ys + 927- 230) AND (Xcur > Xs + 260 + 230) AND (Xcur < Xs + 282 + 230)) THEN
		DRAWMAP<='1';
-- Map Escada 2 d3
	ELSIF ((Ycur > Ys + 885- 230) AND (Ycur < Ys + 907- 230) AND (Xcur > Xs + 240 + 230) AND (Xcur < Xs + 262 + 230)) THEN
		DRAWMAP<='1';
-- Map Escada 2 d4
	ELSIF ((Ycur > Ys + 865- 230) AND (Ycur < Ys + 887- 230) AND (Xcur > Xs + 220 + 230) AND (Xcur < Xs + 242 + 230)) THEN
		DRAWMAP<='1';
-- Map Escada 2 d5
	ELSIF ((Ycur > Ys + 845- 230) AND (Ycur < Ys + 867- 230) AND (Xcur > Xs + 200 + 230) AND (Xcur < Xs + 222 + 230)) THEN
		DRAWMAP<='1';
-- Map Escada 2 d6
	ELSIF ((Ycur > Ys + 825- 230) AND (Ycur < Ys + 847- 230) AND (Xcur > Xs + 180 + 230) AND (Xcur < Xs + 202 + 230)) THEN
		DRAWMAP<='1';
		
-- Map Escada 3 d1
	ELSIF ((Ycur > Ys + 925 - 280) AND (Ycur < Ys + 945- 280) AND (Xcur > Xs + 280 + 230) AND (Xcur < Xs + 302 + 230)) THEN
		DRAWMAP<='1';
-- Map Escada 3 d2
	ELSIF ((Ycur > Ys + 905- 280) AND (Ycur < Ys + 927- 280) AND (Xcur > Xs + 260 + 230) AND (Xcur < Xs + 282 + 230)) THEN
		DRAWMAP<='1';
-- Map Escada 3 d3
	ELSIF ((Ycur > Ys + 885- 280) AND (Ycur < Ys + 907- 280) AND (Xcur > Xs + 240 + 230) AND (Xcur < Xs + 262 + 230)) THEN
		DRAWMAP<='1';
-- Map Escada 3 d4
	ELSIF ((Ycur > Ys + 865- 280) AND (Ycur < Ys + 887- 280) AND (Xcur > Xs + 220 + 230) AND (Xcur < Xs + 242 + 230)) THEN
		DRAWMAP<='1';
-- Map Escada 3 d5
	ELSIF ((Ycur > Ys + 845- 280) AND (Ycur < Ys + 867- 280) AND (Xcur > Xs + 200 + 230) AND (Xcur < Xs + 222 + 230)) THEN
		DRAWMAP<='1';
-- Map Escada 3 d6
	ELSIF ((Ycur > Ys + 825- 280) AND (Ycur < Ys + 847- 280) AND (Xcur > Xs + 180 + 230) AND (Xcur < Xs + 202 + 230)) THEN
		DRAWMAP<='1';
		
 -- END
	ELSE
		DRAWMAP<='0';
 END IF;
 
END dMap;
END GameMap;