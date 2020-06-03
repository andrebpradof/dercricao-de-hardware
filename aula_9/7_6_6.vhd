-- ---------------------------------------------------------------
--  SEL0632 - Linguagens de Descrição de Hardware (2020)		--
--  Praticando VHDL para o projeto  							--
--																--
--	Exercicio 7.6.6												--
--                                                              --
--  Alunos:                                                     --
--  André Baconcelo Prado Furlanetti - Nº USP: 10748305         --
--  Diego da Silva Parra             - Nº USP: 10716550         --
--  Mateus Fernandes Doimo           - Nº USP: 10691971         --
-- ---------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY exer_7_6_6 IS
	PORT (a : IN  BIT_VECTOR (2 DOWNTO 0);
	      b : IN  BIT_VECTOR (2 DOWNTO 0);
	      p : OUT BIT_VECTOR (5 DOWNTO 0));
END exer_7_6_6;

ARCHITECTURE arc_7_6_6 OF exer_7_6_6 IS
	SIGNAL i : STD_LOGIC_VECTOR (7 DOWNTO 0);
BEGIN
	i <= a * b;
	p <= i;
END arc_7_6_6;