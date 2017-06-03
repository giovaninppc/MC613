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

-- A tela funciona como um plano cartesiano 1280 x 1024
-- Onde o ponto (0,0) ´e o canto superior esquerdo
-- E cresce de cima para baixo em Y e da esquedar para a direita em X
-- Existem alguns "pixels" que nao sao impressos na tela
-- X = [0, 408]
-- Y = [0, 42]
-- O tempo de execucao desses "pixels" eh usado para sinconizacao com o VGA e atela

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
-- Signals para controle dos players com tamanho e posicao
-- Tamanho
SIGNAL X1size : INTEGER := 20;
SIGNAL Y1size : INTEGER := 30;
SIGNAL X2size : INTEGER := 80;
SIGNAL Y2size : INTEGER := 10;
-- Posicao
SIGNAL SQ_X1: INTEGER RANGE 0 TO 1688:=435;
SIGNAL SQ_Y1: INTEGER RANGE 0 TO 1688:=910;
SIGNAL SQ_X2: INTEGER RANGE 0 TO 1688:=460;
SIGNAL SQ_Y2: INTEGER RANGE 0 TO 1688:=910;
SIGNAL DRAW1,DRAW2:STD_LOGIC:='0';
-- Indicador de estar no Ar
SIGNAL SQ1_noAR : STD_LOGIC := '1';
SIGNAL SQ2_noAR : STD_LOGIC := '1';
SIGNAL arQ1X1, arQ1X2, arQ2X1, arQ2X2 : STD_LOGIC := '0';
-- Indicador de contato a direita
SIGNAL SQ1_dir  : STD_LOGIC := '1';
SIGNAL SQ2_dir  : STD_LOGIC := '1';
SIGNAL dirQ1X1, dirQ1X2, dirQ2X1, dirQ2X2 : STD_LOGIC := '0';
-- Indicador de contato a esquerda
SIGNAL SQ1_esq  : STD_LOGIC := '1';
SIGNAL SQ2_esq  : STD_LOGIC := '1';
SIGNAL esqQ1X1, esqQ1X2, esqQ2X1, esqQ2X2 : STD_LOGIC := '0';
-- Indicadores de posicao dos 4 cantos dos jogadores
--
-- (QnX1,QnY1) _________________ (QnX2,QnY1)
--            |                |
--            |                |
--            |                |
--            |                |
--            |    *Player*    |
--            |                |
--            |                |
--            |                |
--            |________________|
-- (QnX1,QnY2)                   (QnX2,QnY2)
-- O Valor QnY2m marca um ponto acima da base nas posicoes (X,QnY2)
-- Usado para marcar colisoes laterais, pois o QnY2 teria conflito com o chao
SIGNAL Q1X1, Q1X2, Q1Y1, Q1Y2, Q1Y2m : INTEGER;
SIGNAL Q2X1, Q2X2, Q2Y1, Q2Y2, Q2Y2m : INTEGER;
---------- Map Signals ----------
SIGNAL DRAWMAP: STD_LOGIC:='0';

BEGIN

-- Esses processos calculam e retornam 1 na posicao de desenhar os quadrados
SQ(HPOS,VPOS,SQ_X1,SQ_Y1,X1size,Y1size,RGB,DRAW1);
SQ(HPOS,VPOS,SQ_X2,SQ_Y2,X2size,Y2size,RGB,DRAW2);

-- Verifica se eh para desenhar uma parte do mapa
-- Esse processos retorna 1 se existe um mapa na posicao passada como parametro
dMap(HPOS,VPOS,DRAWMAP);

-- LIMITES DE POSICAO DOS JOGADORES

-- Jogador 1
-- Inicia indicadores de posiçao
Q1X1 <= SQ_X1 - 1;
Q1X2 <= SQ_X1 + X1size + 1;
Q1Y1 <= SQ_Y1 + 1;
Q1Y2 <= SQ_Y1 + Y1size + 1;
Q1Y2m<= SQ_Y1 + Y1size - 1;
-- Verifica se esta no ar
dMap(Q1X1,Q1Y2,arQ1X1); -- Verifica contato base em X1
dMap(Q1X2,Q1Y2,arQ1X2); -- Verifica contato base em X2
SQ1_noAR <= NOT(arQ1X1 OR arQ1X2);
-- Verifica contato direita
dMap(Q1X2,Q1Y1,dirQ1X1);
dmap(Q1X2,Q1Y2m,dirQ1X2);
SQ1_dir <= (dirQ1X1 OR dirQ1X2);
--Verifica contato esquerda
dMap(Q1X1,Q1Y1,esqQ1X1);
dmap(Q1X1,Q1Y2m,esqQ1X2);
SQ1_esq <= (esqQ1X1 OR esqQ1X2);

-- Jogador 2
-- Inicia indicadores de posicao
Q2X1 <= SQ_X2 - 1;
Q2X2 <= SQ_X2 + X2size + 1;
Q2Y1 <= SQ_Y2 + 1;
Q2Y2 <= SQ_Y2 + Y2size + 1;
Q2Y2m<= SQ_Y2 + Y2size - 1;
-- Verifica se esta no ar
dMap(Q2X1,Q2Y2,arQ2X1); -- Verifica contato base em X1
dMap(Q2X2,Q2Y2,arQ2X2); -- Verifica contato base em X2
SQ2_noAR <= NOT(arQ2X1 OR arQ2X2);
-- Verifica conato direita
dMap(Q2X2,Q2Y1,dirQ2X1);
dmap(Q2X2,Q2Y2m,dirQ2X2);
SQ2_dir <= (dirQ2X1 OR dirQ2X2);
-- Verifica contato esquerda
dMap(Q2X1,Q2Y1,esqQ2X1);
dmap(Q2X1,Q2Y2m,esqQ2X2);
SQ2_esq <= (esqQ2X1 OR esqQ2X2);
 
-- INICIO DA LOGICA E IMPRESSAO EM VGA
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
		IF (DRAW1='0' AND DRAW2='0')THEN
			
			IF DRAWMAP = '1' THEN	-- Desenhando o mapa
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
			  
					-- Tentativa de gravidade -- WORKING
					IF SQ1_noAR = '1' THEN
						SQ_Y1<=SQ_Y1+2;
					END IF;
					
					IF SQ2_noAR = '1' THEN
						SQ_Y2<=SQ_Y2+2;
					END IF;
					
					-- Faz a movimentacao!!!! TODO: Alterar o Keys pelo teclado depois!!!
					-- Quadrado 1
			      IF(S(0)='1')THEN
						-- Mover para a direita
					    IF(KEYS(0)='0' AND SQ1_dir = '0')THEN
						  SQ_X1<=SQ_X1+2;
						 END IF;
						 -- Mover para a esquerda
                   IF(KEYS(1)='0' AND SQ1_esq = '0')THEN
						  SQ_X1<=SQ_X1-2;
						 END IF;
						 -- Pulo
						  IF(KEYS(2)='0')THEN
						  SQ_Y1<=SQ_Y1-2;
						 END IF;
						 
					END IF;
					-- Quadrado 2
			      IF(S(1)='1')THEN
						-- Mover para a direita
					    IF(KEYS(0)='0' AND SQ2_dir = '0')THEN
						  SQ_X2<=SQ_X2+2;
						 END IF;
						 -- Mover para a esquerda
                   IF(KEYS(1)='0' AND SQ2_esq = '0')THEN
						  SQ_X2<=SQ_X2-2;
						 END IF;
						 -- Pulo
						  IF(KEYS(2)='0')THEN
						  SQ_Y2<=SQ_Y2-2;
						 END IF;
						  
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