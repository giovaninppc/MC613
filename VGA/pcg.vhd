library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

PACKAGE MY IS
PROCEDURE SQ(SIGNAL Xcur,Ycur,Xpos,Ypos,Xsize,Ysize:IN INTEGER;
				 SIGNAL DRAW: OUT STD_LOGIC);
END MY;

-- Esses procedures retornam 1 se deve desenhar um personagem na tela!!!

PACKAGE BODY MY IS
PROCEDURE SQ(SIGNAL Xcur,Ycur,Xpos,Ypos,Xsize,Ysize:IN INTEGER;SIGNAL DRAW: OUT STD_LOGIC) IS
BEGIN
 IF(Xcur>Xpos AND Xcur<(Xpos+Xsize) AND Ycur>Ypos AND Ycur<(Ypos+Ysize))THEN
	 DRAW<='1';
 ELSE
	 DRAW<='0';
 END IF;
 
END SQ;
END MY;