-- ---------------------------------------------------------------
--  SEL0632 - Linguagens de Descrição de Hardware (2020)    		--
--  Praticando VHDL para o projeto  						              	--
--														                              		--
--	Exercicio 9.7.2								                      				--
--                                                              --
--  Alunos:                                                     --
--  André Baconcelo Prado Furlanetti - Nº USP: 10748305         --
--  Diego da Silva Parra             - Nº USP: 10716550         --
--  Mateus Fernandes Doimo           - Nº USP: 10691971         --
-- ---------------------------------------------------------------



LIBRARY dv_celulas;
USE dv_celulas.div_pk.ALL;

ENTITY exer_9_7_2 IS
  PORT (a  : IN     BIT_VECTOR (4 DOWNTO 0);
        b  : IN     BIT_VECTOR (3 DOWNTO 0);
        q  : BUFFER BIT_VECTOR (4 DOWNTO 0));
END exer_9_7_2;

ARCHITECTURE arch_9_7_2 OF exer_9_7_2 IS

SIGNAL c4, c3, c2, c1, c0 : BIT_VECTOR (2 DOWNTO 0);
SIGNAL r4, r3, r2, r1     : BIT_VECTOR (2 DOWNTO 0);
SIGNAL b_n : BIT_VECTOR (3 DOWNTO 0);
SIGNAL um, zero : BIT;

BEGIN
  b_n <= NOT b;
  um <= '1';
  zero <= '0';
 
  --        b_n     ri     ci     qx    ci+1   ri+1
  div_cel_x(b_n(0), a(4),  um,    q(4), c4(0), r4(0));
  div_cel_x(b_n(1), zero,  c4(0), q(4), c4(1), r4(1));
  div_cel_x(b_n(2), zero,  c4(1), q(4), c4(2), r4(2));
  div_cel_y(b_n(3), zero,  c4(2), q(4), q(4));

  div_cel_x(b_n(0), a(3),  um,    q(3), c3(0), r3(0));
  div_cel_x(b_n(1), r4(0),  c3(0), q(3), c3(1), r3(1));
  div_cel_x(b_n(2), r4(1),  c3(1), q(3), c3(2), r3(2));
  div_cel_y(b_n(3), r4(2),  c3(2), q(3), q(3));

  div_cel_x(b_n(0), a(2),  um,    q(2), c2(0), r2(0));
  div_cel_x(b_n(1), r3(0), c2(0), q(2), c2(1), r2(1));
  div_cel_x(b_n(2), r3(1), c2(1), q(2), c2(2), r2(2));
  div_cel_y(b_n(3), r3(2), c2(2), q(2), q(2));
 
  div_cel_x(b_n(0), a(1),  um,    q(1), c1(0), r1(0));
  div_cel_x(b_n(1), r2(0), c1(0), q(1), c1(1), r1(1));
  div_cel_x(b_n(2), r2(1), c1(1), q(1), c1(2), r1(2));
  div_cel_y(b_n(3), r2(2), c1(2), q(1), q(1));

  div_cel_y(b_n(0), a(0),  um,    q(0), c0(0));
  div_cel_y(b_n(1), r1(0), c0(0), q(0), c0(1));
  div_cel_y(b_n(2), r1(1), c0(1), q(0), c0(2));
  div_cel_y(b_n(3), r1(2), c0(2), q(0), q(0));
END arch_9_7_2;