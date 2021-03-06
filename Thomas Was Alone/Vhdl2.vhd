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

PACKAGE SYNC_Package IS
	COMPONENT SYNC IS
	PORT(
	CLK: IN STD_LOGIC;
	HSYNC: OUT STD_LOGIC;
	VSYNC: OUT STD_LOGIC;
	R: OUT STD_LOGIC_VECTOR(3 downto 0);
	G: OUT STD_LOGIC_VECTOR(3 downto 0);
	B: OUT STD_LOGIC_VECTOR(3 downto 0);
	directions: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	S: IN STD_LOGIC_VECTOR(1 downto 0);
	C: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	OVER: OUT STD_LOGIC
	);
	END COMPONENT;
END SynC_Package;



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my.all;
use work.GameMap.all;

ENTITY SYNC IS
PORT(
CLK: IN STD_LOGIC;
HSYNC: OUT STD_LOGIC;
VSYNC: OUT STD_LOGIC;
R: OUT STD_LOGIC_VECTOR(3 downto 0);
G: OUT STD_LOGIC_VECTOR(3 downto 0);
B: OUT STD_LOGIC_VECTOR(3 downto 0);
directions: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
S: IN STD_LOGIC_VECTOR(1 downto 0);
C: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
OVER: OUT STD_LOGIC
);
END SYNC;


ARCHITECTURE MAIN OF SYNC IS

---------- SCREEN Signals ----------
-----1280x1024 @ 60 Hz pixel clock 108 MHz

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
SIGNAL SQ_Y1: INTEGER RANGE 0 TO 1688:=1000;
SIGNAL SQ_X2: INTEGER RANGE 0 TO 1688:=460;
SIGNAL SQ_Y2: INTEGER RANGE 0 TO 1688:=1000;
SIGNAL DRAW1,DRAW2:STD_LOGIC:='0';
-- Indicador de estar no Ar
SIGNAL SQ1_noAR : STD_LOGIC := '1';
SIGNAL SQ2_noAR : STD_LOGIC := '1';
SIGNAL arQ1X1, arQ1X2, arQ2X1, arQ2X2, arQ2X3, arQ2X4, arQ2X5, arQ2X6 : STD_LOGIC := '0';
-- Indicador de Salto
SIGNAL SQ1_Jump, SQ2_Jump : INTEGER := 0;
-- Indicador de contato a direita
SIGNAL SQ1_dir  : STD_LOGIC := '1';
SIGNAL SQ2_dir  : STD_LOGIC := '1';
SIGNAL dirQ1X1, dirQ1X2, dirQ2X1, dirQ2X2 : STD_LOGIC := '0';
-- Indicador de contato a esquerda
SIGNAL SQ1_esq  : STD_LOGIC := '1';
SIGNAL SQ2_esq  : STD_LOGIC := '1';
SIGNAL esqQ1X1, esqQ1X2, esqQ2X1, esqQ2X2 : STD_LOGIC := '0';
-- Indicador de contato em cima
SIGNAL SQ1_up, SQ2_up : STD_LOGIC := '0';
-- Indicador de contato embaixo
SIGNAL SQ1_down, SQ2_down : STD_LOGIC := '0';
-- Insicador de contato com outro jogador
SIGNAL contatoA1, contatoB1, contatoC1, contatoD1, contatoBB1, contatoBC1 : STD_LOGIC := '1';
SIGNAL contatoA2, contatoB2, contatoC2, contatoD2, contatoBB2, contatoBC2 : STD_LOGIC := '1';
SIGNAL contatoBA2, contatoBD2, contatoBI2, contatoBG2 : STD_LOGIC := '1';
-- Indicadores de posicao dos 4 cantos dos jogadores
--
-- (QnX1,QnY1)__________________ (QnX2,QnY1)
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
-- As letras referem-se aos sinais de colisao entre os jogadores
SIGNAL Q1X1, Q1X2, Q1Y1, Q1Y2, Q1Y2m : INTEGER;
SIGNAL Q2X1, Q2X2, Q2Y1, Q2Y2, Q2Y2m : INTEGER;
SIGNAL Q2Xa, Q2Xd, Q2Xi, Q2Xg : INTEGER;
SIGNAL touchDown2, touchDown1 : STD_LOGIC;
---------- Map Signals ----------
SIGNAL DRAWMAP: STD_LOGIC:='0';

BEGIN

-- Esses processos calculam e retornam 1 na posicao de desenhar os quadrados
SQ(HPOS,VPOS,SQ_X1,SQ_Y1,X1size,Y1size,DRAW1);
SQ(HPOS,VPOS,SQ_X2,SQ_Y2,X2size,Y2size,DRAW2);

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
dMap(Q1X1,Q1Y2,arQ1X1); 											-- Verifica contato base em X1
dMap(Q1X2,Q1Y2,arQ1X2); 											-- Verifica contato base em X2
SQ(Q1X1,Q1Y2,SQ_X2,SQ_Y2,X2size,Y2size,contatoBB1);	-- Verifica contato base em X1 com player2
SQ(Q1X2,Q1Y2,SQ_X2,SQ_Y2,X2size,Y2size,contatoBC1);	-- Verifica contato base em X2 com player2
touchDown1 <= contatoBC1 OR contatoBB1;
SQ1_noAR <= NOT(arQ1X1 OR arQ1X2 OR touchDown1);
-- Verifica contato direita
SQ(Q1X2,Q1Y2m,SQ_X2,SQ_Y2,X2size,Y2size,contatoD1);
SQ(Q1X2,Q1Y1,SQ_X2,SQ_Y2,X2size,Y2size,contatoC1);
dMap(Q1X2,Q1Y1,dirQ1X1);
dmap(Q1X2,Q1Y2m,dirQ1X2);
SQ1_dir <= (dirQ1X1 OR dirQ1X2 OR contatoD1 OR contatoC1);
--Verifica contato esquerda
SQ(Q1X1,Q1Y1,SQ_X2,SQ_Y2,X2size,Y2size,contatoA1);
SQ(Q1X1,Q1Y2m,SQ_X2,SQ_Y2,X2size,Y2size,contatoB1);
dMap(Q1X1,Q1Y1,esqQ1X1);
dmap(Q1X1,Q1Y2m,esqQ1X2);
SQ1_esq <= (esqQ1X1 OR esqQ1X2 OR contatoA1 OR contatoB1);
-- Contato superior
SQ1_up <= dirQ1X1 OR esqQ1X1;
-- Contato com outro Player

-- Jogador 2
-- Inicia indicadores de posicao
Q2X1 <= SQ_X2 - 1;
Q2X2 <= SQ_X2 + X2size + 1;
Q2Y1 <= SQ_Y2 + 1;
Q2Y2 <= SQ_Y2 + Y2size + 1;
Q2Y2m<= SQ_Y2 + Y2size - 1;
Q2Xa <= SQ_X2 + 18;
Q2Xd <= SQ_X2 + X2size - 18;
Q2Xi <= SQ_X2 + 36;
Q2Xg <= SQ_X2 + X2size - 36;
-- Verifica se esta no ar
dMap(Q2X1,Q2Y2,arQ2X1); -- Verifica contato base em X1
dMap(Q2X2,Q2Y2,arQ2X2); -- Verifica contato base em X2
dMap(Q2Xa,Q2Y2,arQ2X3); -- Verifica contato base em X3
dMap(Q2Xd,Q2Y2,arQ2X4); -- Verifica contato base em X4
dMap(Q2Xi,Q2Y2,arQ2X5); -- Verifica contato base em X5
dMap(Q2Xg,Q2Y2,arQ2X6); -- Verifica contato base em X6
SQ(Q2X1,Q2Y2,SQ_X1,SQ_Y1,X1size,Y1size,contatoBB2);	-- Verifica contato base em X1 com player1
SQ(Q2X2,Q2Y2,SQ_X1,SQ_Y1,X1size,Y1size,contatoBC2);	-- Verifica contato base em X2 com player1
SQ(Q2Xa,Q2Y2,SQ_X1,SQ_Y1,X1size,Y1size,contatoBA2);
SQ(Q2Xd,Q2Y2,SQ_X1,SQ_Y1,X1size,Y1size,contatoBD2);
SQ(Q2Xi,Q2Y2,SQ_X1,SQ_Y1,X1size,Y1size,contatoBI2);
SQ(Q2Xg,Q2Y2,SQ_X1,SQ_Y1,X1size,Y1size,contatoBG2);
touchDown2 <= contatoBB2 OR contatoBC2 OR contatoBA2 OR contatoBD2 OR contatoBI2 OR contatoBG2;
SQ2_noAR <= NOT(arQ2X1 OR arQ2X2 OR arQ2X3 OR arQ2X4 OR arQ2X5 OR arQ2X6 OR touchDown2);
-- Verifica conato direita
SQ(Q2X2,Q2Y2m,SQ_X1,SQ_Y1,X1size,Y1size,contatoD2);
SQ(Q2X2,Q2Y1,SQ_X1,SQ_Y1,X1size,Y1size,contatoC2);
dMap(Q2X2,Q2Y1,dirQ2X1);
dmap(Q2X2,Q2Y2m,dirQ2X2);
SQ2_dir <= (dirQ2X1 OR dirQ2X2 OR contatoD2 OR contatoC2);
-- Verifica contato esquerda
SQ(Q2X1,Q2Y1,SQ_X1,SQ_Y1,X1size,Y1size,contatoA2);
SQ(Q2X1,Q2Y2m,SQ_X1,SQ_Y1,X1size,Y1size,contatoB2);
dMap(Q2X1,Q2Y1,esqQ2X1);
dmap(Q2X1,Q2Y2m,esqQ2X2);
SQ2_esq <= (esqQ2X1 OR esqQ2X2 OR contatoA2 OR contatoB2);
-- Contato superior
SQ2_up <= dirQ2X1 OR esqQ2X1;
 
-- INICIO DA LOGICA E IMPRESSAO EM VGA
PROCESS(CLK)
BEGIN
	IF(CLK'EVENT AND CLK='1')THEN

			-- VERIFICA FINAL DO JOGO
			IF	SQ_X1 < 460 AND SQ_X2 < 435 AND SQ_Y1 < 100 AND SQ_Y2 < 100 THEN
				-- GAME OVER
				OVER <= '1';
			ELSE 
				OVER <= '0';
			END IF;
			
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
			
				-- Final do Jogo!!!
				IF HPOS < 508 AND VPOS < 110 AND DRAWMAP = '0' THEN
					R<="0011";
					G<="0100";
					B<="1111";
				
				ELSIF C(1)='0' AND C(0)='0' THEN -- Padrao de cores 1
					IF DRAWMAP = '1' THEN	-- Desenhando o mapa
						R<=(others=>'1');
						G<=(others=>'1');
						B<=(others=>'1');
					ELSE--background
						R<=(others=>'0');
						G<=(others=>'0');
						B<=(others=>'0');
					END IF;
					
				ELSIF C(0)='0' AND C(1)='1' THEN -- Padrao de cores 2
					IF DRAWMAP = '1' THEN	-- Desenhando o mapa
						R<= "0001";
						G<= "0001";
						B<= "0001";
					ELSE--background
						R<= "0011";
						G<= "0010";
						B<= "1010";
					END IF;
					
				ELSIF C(0)='1' AND C(1)='0' THEN -- Padrao de cores 3
					IF DRAWMAP = '1' THEN	-- Desenhando o mapa
						R<=(others=>'0');
						G<=(others=>'0');
						B<=(others=>'0');
					ELSE--background
						R<= "0111";
						G<= "0010";
						B<= "0000";
					END IF;
					
				ELSE							   -- Padrao de cores 2
					IF DRAWMAP = '1' THEN	-- Desenhando o mapa
						R<=(others=>'0');
						G<=(others=>'0');
						B<=(others=>'0');
					ELSE--background
						R<= "0010";
						G<= "0011";
						B<= "0010";
					END IF;
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
				  
						-- Simulador de gravidade
						IF SQ1_noAR = '1' THEN
							SQ_Y1<=SQ_Y1+2;
						END IF;
						
						IF SQ2_noAR = '1' THEN
							SQ_Y2<=SQ_Y2+2;
						END IF;
						
						-- Executa o Salto
						IF SQ1_Jump > 0 THEN
							IF SQ1_up = '0' AND SQ_Y1 > 42 THEN
								SQ_Y1<=SQ_Y1-2;
								SQ1_Jump <= SQ1_Jump - 1;
							ELSE
								SQ1_Jump <= 0;
							END IF;
						END IF;
						
						-- Executa o Salto
						IF SQ2_Jump > 0 THEN
							IF SQ2_up = '0'  AND SQ_Y2 > 42 THEN
								SQ_Y2<=SQ_Y2-2;
								SQ2_Jump <= SQ2_Jump - 1;
							ELSE
								SQ2_Jump <= 0;
							END IF;
						END IF;
						
						-- Faz a movimentacao!!!! TODO: Alterar o directions pelo teclado depois!!!
						-- Jogador 1
						IF(S(0)='1')THEN
							-- Mover para a direita
							 IF(directions(0)='1' AND SQ1_dir = '0' AND SQ_X1 < (1687 - X1Size))THEN
							  SQ_X1<=SQ_X1+2;
							 END IF;
							 -- Mover para a esquerda
							 IF(directions(1)='1' AND SQ1_esq = '0' AND SQ_X1 > 409)THEN
							  SQ_X1<=SQ_X1-2;
							 END IF;
							 -- Pulo / Ele so pula se nao estiver no ar, e nao houver outro jogador em cima dele
							  IF(directions(2)='1' AND SQ1_noAR = '0' AND touchDown2 = '0')THEN
							  SQ1_Jump <= 30;
							 END IF;
							 
						END IF;
						-- Jogador 2
						IF(S(1)='1')THEN
							-- Mover para a direita
							 IF(directions(0)='1' AND SQ2_dir = '0' AND SQ_X2 < (1687 - X2Size))THEN
							  SQ_X2<=SQ_X2+2;
							 END IF;
							 -- Mover para a esquerda
							 IF(directions(1)='1' AND SQ2_esq = '0' AND SQ_X2 > 409)THEN
							  SQ_X2<=SQ_X2-2;
							 END IF;
							 -- Pulo/ Ele so pula se nao estiver no ar, e nao houver outro jogador em cima dele
							  IF(directions(2)='1' AND SQ2_noAR = '0' AND touchDown1 = '0')THEN
							  SQ2_Jump <= 30;
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