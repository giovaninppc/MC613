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
CONSTANT Xs : INTEGER := 408;

BEGIN

-- Posicao invalida de desenhos do mapa
	IF(Ycur < Ys OR Xcur < Xs) THEN
		DRAWMAP<='0';
		
-- Floor
	ELSIF(Ycur > 1050) THEN
		DRAWMAP<='1';

-- Map A1
	ELSIF ((Ycur > Ys + 980) AND (Ycur < Ys + 1051) AND (Xcur > Xs + 1200) AND (Xcur < Xs + 1281)) THEN
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
	ELSIF ((Ycur > Ys + 925) AND (Ycur < Ys + 945) AND (Xcur > Xs) AND (Xcur < Xs + 302)) THEN
		DRAWMAP<='1';
-- Map Escada 1 d2
	ELSIF ((Ycur > Ys + 905) AND (Ycur < Ys + 927) AND (Xcur > Xs) AND (Xcur < Xs + 282)) THEN
		DRAWMAP<='1';
-- Map Escada 1 d3
	ELSIF ((Ycur > Ys + 885) AND (Ycur < Ys + 907) AND (Xcur > Xs) AND (Xcur < Xs + 262)) THEN
		DRAWMAP<='1';
-- Map Escada 1 d4
	ELSIF ((Ycur > Ys + 865) AND (Ycur < Ys + 887) AND (Xcur > Xs) AND (Xcur < Xs + 242)) THEN
		DRAWMAP<='1';
-- Map Escada 1 d5
	ELSIF ((Ycur > Ys + 845) AND (Ycur < Ys + 867) AND (Xcur > Xs) AND (Xcur < Xs + 222)) THEN
		DRAWMAP<='1';
-- Map Escada 1 d6
	ELSIF ((Ycur > Ys + 825) AND (Ycur < Ys + 847) AND (Xcur > Xs) AND (Xcur < Xs + 202)) THEN
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
	ELSIF ((Ycur > Ys + 760) AND (Ycur < Ys + 850) AND (Xcur > Xs + 480) AND (Xcur < Xs + 1281))   THEN
		DRAWMAP<='1';
		
-- Map D1
	ELSIF ((Ycur > Ys + 700) AND (Ycur < Ys + 762) AND (Xcur > Xs + 600) AND (Xcur < Xs + 750))   THEN
		DRAWMAP<='1';
-- Map D2
	ELSIF ((Ycur > Ys + 640) AND (Ycur < Ys + 680) AND (Xcur > Xs + 600) AND (Xcur < Xs + 1150))   THEN
		DRAWMAP<='1';
-- Map D3
	ELSIF ((Ycur > Ys + 640) AND (Ycur < Ys + 745) AND (Xcur > Xs + 840) AND (Xcur < Xs + 1000))   THEN
		DRAWMAP<='1';
-- Map D4
	ELSIF ((Ycur > Ys + 710) AND (Ycur < Ys + 762) AND (Xcur > Xs + 1100) AND (Xcur < Xs + 1281))   THEN
		DRAWMAP<='1';
-- Map D5
	ELSIF ((Ycur > Ys + 690) AND (Ycur < Ys + 711) AND (Xcur > Xs + 1250) AND (Xcur < Xs + 1281))   THEN
		DRAWMAP<='1';
		
-- Map Escada 2 d1
	ELSIF ((Ycur > Ys + 925 - 230) AND (Ycur < Ys + 945- 230) AND (Xcur > Xs + 302 + 170) AND (Xcur < Xs + 302 + 195)) THEN
		DRAWMAP<='1';
-- Map Escada 2 d2
	ELSIF ((Ycur > Ys + 905- 230) AND (Ycur < Ys + 927- 230) AND (Xcur > Xs + 282 + 170) AND (Xcur < Xs + 282 + 195)) THEN
		DRAWMAP<='1';
-- Map Escada 2 d3
	ELSIF ((Ycur > Ys + 885- 230) AND (Ycur < Ys + 907- 230) AND (Xcur > Xs) AND (Xcur < Xs + 262 + 195)) THEN
		DRAWMAP<='1';
-- Map Escada 2 d4
	ELSIF ((Ycur > Ys + 865- 230) AND (Ycur < Ys + 887- 230) AND (Xcur > Xs) AND (Xcur < Xs + 242 + 195)) THEN
		DRAWMAP<='1';
-- Map Escada 2 d5
	ELSIF ((Ycur > Ys + 845- 230) AND (Ycur < Ys + 867- 230) AND (Xcur > Xs) AND (Xcur < Xs + 222 + 195)) THEN
		DRAWMAP<='1';
-- Map Escada 2 d6
	ELSIF ((Ycur > Ys + 825- 230) AND (Ycur < Ys + 847- 230) AND (Xcur > Xs) AND (Xcur < Xs + 202 + 195)) THEN
		DRAWMAP<='1';
		
-- Map Escada 3 d1
	ELSIF ((Ycur > Ys + 925 - 280) AND (Ycur < Ys + 945- 280) AND (Xcur > Xs + 280 + 230) AND (Xcur < Xs + 650)) THEN
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
	ELSIF ((Ycur > Ys + 825- 280) AND (Ycur < Ys + 847- 300) AND (Xcur > Xs + 180 + 230) AND (Xcur < Xs + 202 + 230)) THEN
		DRAWMAP<='1';
		
-- E1
	ELSIF ((Ycur > Ys + 825- 230) AND (Ycur < Ys + 847- 230) AND (Xcur > Xs) AND (Xcur < Xs + 202 + 195)) THEN
		DRAWMAP<='1';
-- E2
	ELSIF ((Ycur > Ys + 825- 280) AND (Ycur < Ys + 847- 290) AND (Xcur > Xs + 45) AND (Xcur < Xs + 202 + 230)) THEN
		DRAWMAP<='1';
-- E3
	ELSIF ((Ycur > Ys + 825- 250) AND (Ycur < Ys + 847- 230) AND (Xcur > Xs) AND (Xcur < Xs + 15)) THEN
		DRAWMAP<='1';
		
-- F1
	ELSIF ((Ycur > Ys + 480) AND (Ycur < Ys + 500) AND (Xcur > Xs) AND (Xcur < Xs + 720))   THEN
		DRAWMAP<='1';
		
-- Map Escada 4 d3
	ELSIF ((Ycur > Ys + 885 - 290) AND (Ycur < Ys + 907 - 290) AND (Xcur > Xs + 180 + 530) AND (Xcur < Xs + 180 + 650)) THEN
		DRAWMAP<='1';
-- Map Escada 4 d4
	ELSIF ((Ycur > Ys + 865 - 290) AND (Ycur < Ys + 887 - 290) AND (Xcur > Xs + 200 + 530) AND (Xcur < Xs + 1281)) THEN
		DRAWMAP<='1';
-- Map Escada 4 d5
	ELSIF ((Ycur > Ys + 845 - 290) AND (Ycur < Ys + 867 - 290) AND (Xcur > Xs + 220 + 530) AND (Xcur < Xs + 1281)) THEN
		DRAWMAP<='1';
-- Map Escada 4 d6
	ELSIF ((Ycur > Ys + 825 - 290) AND (Ycur < Ys + 847 - 290) AND (Xcur > Xs + 240 + 530) AND (Xcur < Xs + 1281)) THEN
		DRAWMAP<='1';
-- Map Escada 4 d7
	ELSIF ((Ycur > Ys + 805 - 290) AND (Ycur < Ys + 827 - 290) AND (Xcur > Xs + 260 + 530) AND (Xcur < Xs + 1281)) THEN
		DRAWMAP<='1';
-- Map Escada 4 d7
	ELSIF ((Ycur > Ys + 785 - 290) AND (Ycur < Ys + 807 - 290) AND (Xcur > Xs + 280 + 530) AND (Xcur < Xs + 1281)) THEN
		DRAWMAP<='1';
-- Map Escada 4 d8
	ELSIF ((Ycur > Ys + 765 - 290) AND (Ycur < Ys + 787 - 290) AND (Xcur > Xs + 300 + 530) AND (Xcur < Xs + 1281)) THEN
		DRAWMAP<='1';
		
-- G1
	ELSIF ((Ycur > Ys + 450) AND (Ycur < Ys + 500) AND (Xcur > Xs) AND (Xcur < Xs + 70))   THEN
		DRAWMAP<='1';
-- G2
	ELSIF ((Ycur > Ys + 430) AND (Ycur < Ys + 450) AND (Xcur > Xs + 150) AND (Xcur < Xs + 250))   THEN
		DRAWMAP<='1';
-- G3
	ELSIF ((Ycur > Ys + 430) AND (Ycur < Ys + 450) AND (Xcur > Xs + 300) AND (Xcur < Xs + 450))   THEN
		DRAWMAP<='1';
-- G4
	ELSIF ((Ycur > Ys + 430) AND (Ycur < Ys + 450) AND (Xcur > Xs + 520) AND (Xcur < Xs + 800))   THEN
		DRAWMAP<='1';
-- G5
	ELSIF ((Ycur > Ys + 430) AND (Ycur < Ys + 450) AND (Xcur > Xs + 850) AND (Xcur < Xs + 1000))   THEN
		DRAWMAP<='1';
-- G6
	ELSIF ((Ycur > Ys + 430) AND (Ycur < Ys + 450) AND (Xcur > Xs + 1100) AND (Xcur < Xs + 1281))   THEN
		DRAWMAP<='1';
-- G6
	ELSIF ((Ycur > Ys + 410) AND (Ycur < Ys + 432) AND (Xcur > Xs + 1210) AND (Xcur < Xs + 1281))   THEN
		DRAWMAP<='1';
		
-- H1
	ELSIF ((Ycur > Ys + 370) AND (Ycur < Ys + 390) AND (Xcur > Xs) AND (Xcur < Xs + 1150))   THEN
		DRAWMAP<='1';
		
-- Map Escada 5 d1
	ELSIF ((Ycur > Ys + 375 -20) AND (Ycur < Ys + 397 -20) AND (Xcur > Xs) AND (Xcur < Xs + 302)) THEN
		DRAWMAP<='1';
-- Map Escada 5 d2
	ELSIF ((Ycur > Ys + 355 -20) AND (Ycur < Ys + 377 -20) AND (Xcur > Xs) AND (Xcur < Xs + 282)) THEN
		DRAWMAP<='1';
-- Map Escada 5 d3
	ELSIF ((Ycur > Ys + 335 -20) AND (Ycur < Ys + 357 -20) AND (Xcur > Xs) AND (Xcur < Xs + 262)) THEN
		DRAWMAP<='1';
-- Map Escada 5 d4
	ELSIF ((Ycur > Ys + 315 -20) AND (Ycur < Ys + 337 -20) AND (Xcur > Xs) AND (Xcur < Xs + 242)) THEN
		DRAWMAP<='1';
-- Map Escada 5 d5
	ELSIF ((Ycur > Ys + 295 -20) AND (Ycur < Ys + 317 -20) AND (Xcur > Xs) AND (Xcur < Xs + 222)) THEN
		DRAWMAP<='1';
-- Map Escada 5 d6
	ELSIF ((Ycur > Ys + 275 -20) AND (Ycur < Ys + 297 -20) AND (Xcur > Xs) AND (Xcur < Xs + 202)) THEN
		DRAWMAP<='1';
-- Map Escada 5 d7
	ELSIF ((Ycur > Ys + 255 -20) AND (Ycur < Ys + 277 -20) AND (Xcur > Xs) AND (Xcur < Xs + 80)) THEN
		DRAWMAP<='1';
		
-- I1
	ELSIF ((Ycur > Ys + 200) AND (Ycur < Ys + 220) AND (Xcur > Xs + 120) AND (Xcur < Xs + 300))   THEN
		DRAWMAP<='1';
		
-- J1
	ELSIF ((Ycur > Ys + 200) AND (Ycur < Ys + 250) AND (Xcur > Xs + 350) AND (Xcur < Xs + 400))   THEN
		DRAWMAP<='1';
-- J2
	ELSIF ((Ycur > Ys + 210) AND (Ycur < Ys + 310) AND (Xcur > Xs + 470) AND (Xcur < Xs + 530))   THEN
		DRAWMAP<='1';
-- J3
	ELSIF ((Ycur > Ys + 185) AND (Ycur < Ys + 290) AND (Xcur > Xs + 560) AND (Xcur < Xs + 610))   THEN
		DRAWMAP<='1';
-- J4
	ELSIF ((Ycur > Ys + 205) AND (Ycur < Ys + 315) AND (Xcur > Xs + 700) AND (Xcur < Xs + 750))   THEN
		DRAWMAP<='1';
-- J5
	ELSIF ((Ycur > Ys + 215) AND (Ycur < Ys + 288) AND (Xcur > Xs + 800) AND (Xcur < Xs + 820))   THEN
		DRAWMAP<='1';
-- J6
	ELSIF ((Ycur > Ys + 207) AND (Ycur < Ys + 288) AND (Xcur > Xs + 840) AND (Xcur < Xs + 900))   THEN
		DRAWMAP<='1';
-- J7
	ELSIF ((Ycur > Ys + 210) AND (Ycur < Ys + 312) AND (Xcur > Xs + 960) AND (Xcur < Xs + 910))   THEN
		DRAWMAP<='1';
-- J8
	ELSIF ((Ycur > Ys + 200) AND (Ycur < Ys + 300) AND (Xcur > Xs + 950) AND (Xcur < Xs + 990))   THEN
		DRAWMAP<='1';
-- J9
	ELSIF ((Ycur > Ys + 175) AND (Ycur < Ys + 320) AND (Xcur > Xs + 1030) AND (Xcur < Xs + 1080))   THEN
		DRAWMAP<='1';
-- J10
	ELSIF ((Ycur > Ys + 165) AND (Ycur < Ys + 245) AND (Xcur > Xs + 1110) AND (Xcur < Xs + 1160))   THEN
		DRAWMAP<='1';
-- J11
	ELSIF ((Ycur > Ys + 130) AND (Ycur < Ys + 325) AND (Xcur > Xs + 1200) AND (Xcur < Xs + 1250))   THEN
		DRAWMAP<='1';
		
-- K1
	ELSIF ((Ycur > Ys + 80) AND (Ycur < Ys + 90) AND (Xcur > Xs + 1080) AND (Xcur < Xs + 1190))   THEN
		DRAWMAP<='1';
-- K2
	ELSIF ((Ycur > Ys + 70) AND (Ycur < Ys + 80) AND (Xcur > Xs + 900) AND (Xcur < Xs + 1000))   THEN
		DRAWMAP<='1';
-- K3
	ELSIF ((Ycur > Ys + 75) AND (Ycur < Ys + 85) AND (Xcur > Xs + 800) AND (Xcur < Xs + 870))   THEN
		DRAWMAP<='1';
-- K4
	ELSIF ((Ycur > Ys + 65) AND (Ycur < Ys + 75) AND (Xcur > Xs + 600) AND (Xcur < Xs + 710))   THEN
		DRAWMAP<='1';
-- K5
	ELSIF ((Ycur > Ys + 60) AND (Ycur < Ys + 70) AND (Xcur > Xs + 450) AND (Xcur < Xs + 550))   THEN
		DRAWMAP<='1';
		
-- L1
	ELSIF ((Ycur > Ys + 50) AND (Ycur < Ys + 70) AND (Xcur > Xs + 0) AND (Xcur < Xs + 400))   THEN
		DRAWMAP<='1';
		
 -- END
	ELSE
		DRAWMAP<='0';
 END IF;
 
END dMap;
END GameMap;