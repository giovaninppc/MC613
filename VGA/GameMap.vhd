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
	ELSIF ((Ycur > Ys + 925) AND (Ycur < Ys + 945) AND (Xcur > Xs + 300) AND (Xcur < Xs + 600)) THEN
		DRAWMAP<='1';
		
-- Map Escada 1 d1
	ELSIF ((Ycur > Ys + 925) AND (Ycur < Ys + 945) AND (Xcur > Xs + 280) AND (Xcur < Xs + 300)) THEN
		DRAWMAP<='1';
-- Map Escada 1 d2
	ELSIF ((Ycur > Ys + 905) AND (Ycur < Ys + 925) AND (Xcur > Xs + 260) AND (Xcur < Xs + 280)) THEN
		DRAWMAP<='1';
-- Map Escada 1 d3
	ELSIF ((Ycur > Ys + 885) AND (Ycur < Ys + 905) AND (Xcur > Xs + 240) AND (Xcur < Xs + 260)) THEN
		DRAWMAP<='1';
-- Map Escada 1 d4
	ELSIF ((Ycur > Ys + 865) AND (Ycur < Ys + 885) AND (Xcur > Xs + 220) AND (Xcur < Xs + 240)) THEN
		DRAWMAP<='1';
-- Map Escada 1 d5
	ELSIF ((Ycur > Ys + 845) AND (Ycur < Ys + 865) AND (Xcur > Xs + 200) AND (Xcur < Xs + 220)) THEN
		DRAWMAP<='1';
-- Map Escada 1 d6
	ELSIF ((Ycur > Ys + 825) AND (Ycur < Ys + 845) AND (Xcur > Xs + 180) AND (Xcur < Xs + 200)) THEN
		DRAWMAP<='1';
		
-- Map B1
	ELSIF ((Ycur > Ys + 825) AND (Ycur < Ys + 845) AND (Xcur > Xs + 0) AND (Xcur < Xs + 180)) THEN
		DRAWMAP<='1';
		
	
 -- END
	ELSE
		DRAWMAP<='0';
 END IF;
 
END dMap;
END GameMap;