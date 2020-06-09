-- ---------------------------------------------------------------
--  SEL0632 - Linguagens de Descrição de Hardware (2020)    		--
--  Praticando VHDL para o projeto  						              	--
--															                              	--
--	Exercicio 9.7.1								                      				--
--                                                              --
--  Alunos:                                                     --
--  André Baconcelo Prado Furlanetti - Nº USP: 10748305         --
--  Diego da Silva Parra             - Nº USP: 10716550         --
--  Mateus Fernandes Doimo           - Nº USP: 10691971         --
-- ---------------------------------------------------------------


PACKAGE div_pk IS
  PROCEDURE div_cel_x (SIGNAL bi_n, ri, ci, qx : IN BIT; SIGNAL ci_mais_1, ri_mais_1 : OUT BIT);
  PROCEDURE div_cel_y (SIGNAL bi_n, ri, ci, qx : IN BIT; SIGNAL ci_mais_1 : OUT BIT);
END div_pk;

PACKAGE BODY div_pk IS

PROCEDURE div_cel_x (SIGNAL bi_n, ri, ci, qx : IN BIT; SIGNAL ci_mais_1, ri_mais_1 : OUT BIT) IS
BEGIN
  ci_mais_1 <= (ri AND bi_n) OR (ci AND (ri OR bi_n)); -- ci+1 = ri.bi_n + ci(ri+bi_n)
  CASE qx IS
    WHEN '1' =>  ri_mais_1 <= (ri XOR bi_n XOR ci); -- ri+1 = ri + bi_n
    WHEN '0' =>  ri_mais_1 <=  ri;                  -- ri+1 = ri
  END CASE;
END div_cel_x;

PROCEDURE div_cel_y (SIGNAL bi_n, ri, ci, qx : IN BIT; SIGNAL ci_mais_1 : OUT BIT) IS
BEGIN
  ci_mais_1 <= (ri AND bi_n) OR (ci AND (ri OR bi_n)); -- ci+1 = ri.bi_n + ci(ri+bi_n)
END div_cel_y;

END div_pk;