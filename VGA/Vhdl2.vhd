library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my.all;
use work.GameMap.all;

-- Unidade de Controle
-- Responsavel por calcular as posicoes de desenho e passar para a unidade de VGA
-- Receber os dados de I/O e atualizar as posicoes dos jogadores
-- Ler e passar para impressao o mapa do jogo
-- Sincronizar a pssagem de dados para a tela em VGA

ENTITY SYNC IS
PORT(
CLK: IN STD_LOGIC;
HSYNC: OUT STD_LOGIC;
VSYNC: OUT STD_LOGIC;
R: OUT STD_LOGIC_VECTOR(3 downto 0);
G: OUT STD_LOGIC_VECTOR(3 downto 0);
B: OUT STD_LOGIC_VECTOR(3 downto 0);
KEYS: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
S: IN STD_LOGIC_VECTOR(1 downto 0)
);
END SYNC;


ARCHITECTURE MAIN OF SYNC IS

---------- SCREEN Signals ----------
-----1280x1024 @ 60 Hz pixel clock 108 MHz
SIGNAL RGB: STD_LOGIC_VECTOR(3 downto 0);
SIGNAL SQ_X1: INTEGER RANGE 0 TO 1688:=500;
SIGNAL SQ_Y1: INTEGER RANGE 0 TO 1688:=500;
SIGNAL SQ_X2: INTEGER RANGE 0 TO 1688:=600;
SIGNAL SQ_Y2: INTEGER RANGE 0 TO 1688:=600;
SIGNAL DRAW1,DRAW2:STD_LOGIC:='0';

-- HORIZONTAL LINE
-- 1280 pixels visiveis
--    48 FP, 248 BP, 112 sync pulse
-- TOTAL: 1066 pixels
SIGNAL HPOS: INTEGER RANGE 0 TO 1688:=0;
-- VERTICAL LINE
-- 1024 pixels visiveis
-- 	1 FP, 38 BP, 3 Sync
-- TOTAL: 1066 pixels
SIGNAL VPOS: INTEGER RANGE 0 TO 1066:=0;

---------- Players Signals ----------
-- Signals to Create Players with respective size
SIGNAL X1size, Y1size, X2size, Y2size : INTEGER;

---------- Map Signals ----------
SIGNAL DRAWMAP: STD_LOGIC:='0';

BEGIN

-- Definindo o tamanho dos jogadores
X1size <= 20;
Y1size <= 30;
X2size <= 80;
Y2size <= 10;

-- Esses processos calculam e retornam 1 na posicao de desenhar os quadrados
SQ(HPOS,VPOS,SQ_X1,SQ_Y1,X1size,Y1size,RGB,DRAW1);
SQ(HPOS,VPOS,SQ_X2,SQ_Y2,X2size,Y2size,RGB,DRAW2);

-- Esse processos retorna 1 na posicao de desenhar o mapa
dMap(HPOS,VPOS,DRAWMAP);

 PROCESS(CLK)
 BEGIN
IF(CLK'EVENT AND CLK='1')THEN
		
		-- DESENHA OS PLAYERS
		-- SQ 1 retornou verdadeiro
      IF(DRAW1='1')THEN
		  IF(S(0)='1')THEN
			R<=(others=>'1');
			G<=(others=>'0');
			B<=(others=>'0');
			ELSE
			R<=(others=>'1');
			G<=(others=>'1');
			B<=(others=>'1');
			END IF;
      END IF;
		
		-- SQ 2 retornou verdadeiro
		 IF(DRAW2='1')THEN
		  IF(S(1)='1')THEN
			R<=(others=>'0');
			G<=(others=>'1');
			B<=(others=>'0');
			ELSE
			R<=(others=>'1');
			G<=(others=>'1');
			B<=(others=>'1');
		  END IF;
      END IF;
		
		-- DESENHA O MAPA
		-- Posicao (0,0) comeca em (HPOS, VPOS) = (408, 42), por conta dos pixels de sincronizacao
		IF (DRAW1='0' AND DRAW2='0')THEN
			
											-- Desenhando o mapa
			IF DRAWMAP = '1' THEN
				R<=(others=>'1');
				G<=(others=>'1');
				B<=(others=>'1');
			
			ELSE 							-- Pinta o resto de preto
				R<=(others=>'0');
				G<=(others=>'0');
				B<=(others=>'0');
			
			END IF;
		END IF;
		
		
		IF(HPOS<1688)THEN
		HPOS<=HPOS+1;
		ELSE
		HPOS<=0;
		  IF(VPOS<1066)THEN
			  VPOS<=VPOS+1;
			  ELSE
			  VPOS<=0;
			  
					-- Tentativa de gravidade -- WORKING - O parametro de parada deve ser o chao!
					IF SQ_Y1 < (1050 - Y1size) THEN
						SQ_Y1<=SQ_Y1+2;
					END IF;
					
					IF SQ_Y2 < (1050 - Y2size) THEN
						SQ_Y2<=SQ_Y2+2;
					END IF;
					
					-- Faz a movimentacao!!!! Alterar o Keys pelo teclado depois!!!
					-- Quadrado 1
			      IF(S(0)='1')THEN
					    IF(KEYS(0)='0')THEN
						  SQ_X1<=SQ_X1+2;
						 END IF;
                   IF(KEYS(1)='0')THEN
						  SQ_X1<=SQ_X1-2;
						 END IF;
						  IF(KEYS(2)='0')THEN
						  SQ_Y1<=SQ_Y1-2;
						 END IF;
						 
						 -- Sem necessidade de um comando "para baixo"
						 --IF(KEYS(3)='0')THEN
						  --SQ_Y1<=SQ_Y1+2;
						 --END IF;  
					END IF;
					-- Quadrado 2
			      IF(S(1)='1')THEN
					    IF(KEYS(0)='0')THEN
						  SQ_X2<=SQ_X2+2;
						 END IF;
                   IF(KEYS(1)='0')THEN
						  SQ_X2<=SQ_X2-2;
						 END IF;
						  IF(KEYS(2)='0')THEN
						  SQ_Y2<=SQ_Y2-2;
						 END IF;
						 
						 -- Sem necessidade de um comando "para baixo"
						 --IF(KEYS(3)='0')THEN
						  --SQ_Y2<=SQ_Y2+2;
						 --END IF; 
					END IF;  
		      END IF;
		END IF;
		
	-- Sync Positions --
   IF((HPOS>0 AND HPOS<408) OR (VPOS>0 AND VPOS<42))THEN
		R<=(others=>'0');
		G<=(others=>'0');
		B<=(others=>'0');
	END IF;
	
   IF(HPOS>48 AND HPOS<160)THEN----HSYNC
	   HSYNC<='0';
	ELSE
	   HSYNC<='1';
	END IF;
   IF(VPOS>0 AND VPOS<4)THEN----------vsync
	   VSYNC<='0';
	ELSE
	   VSYNC<='1';
	END IF;
 END IF;
 END PROCESS;
 END MAIN;