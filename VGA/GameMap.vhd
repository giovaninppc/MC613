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
CONSTANT Ys : INTEGER := 42;
CONSTANT Xs : INTEGER := 408;

BEGIN

-- Posicao invalida de desenhos do mapa
	IF(Ycur < Ys OR Xcur < Xs) THEN
		DRAWMAP<='0';
		
-- Floor
	ELSIF(Ycur > 1050) THEN
		DRAWMAP<='1';

-- Map test 1
	ELSIF ((Ycur > Ys + 10) AND (Ycur < Ys + 50) AND (Xcur > Xs + 10) AND (Xcur < Xs + 50)) THEN
		DRAWMAP<='1';
	
 -- END
	ELSE
		DRAWMAP<='0';
 END IF;
 
END dMap;
END GameMap;