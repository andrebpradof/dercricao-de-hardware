-- ---------------------------------------------------------------
--  SEL0632 - Linguagens de Descrição de Hardware (2020)		--
--  Praticando VHDL para o projeto  							--
--																--
--	Exercicio 5.6.6												--
--                                                              --
--  Alunos:                                                     --
--  André Baconcelo Prado Furlanetti - Nº USP: 10748305         --
--  Diego da Silva Parra             - Nº USP: 10716550         --
--  Mateus Fernandes Doimo           - Nº USP: 10691971         --
-- ---------------------------------------------------------------

ENTITY exer_5_6_6 IS
	PORT (ck, d : IN BIT;
			q1, q2 : OUT BIT);
END exer_5_6_6;

ARCHITECTURE arc_5_6_6 Of exer_5_6_6 IS
BEGIN
	p_d1: PROCESS (ck)
	BEGIN
		IF ck'EVENT AND ck = '1' THEN q1 <= d;
		END IF;
	END PROCESS;
	
	p_d2: PROCESS (ck)
	BEGIN
		IF ck'EVENT AND ck = '0' THEN q2 <= d;
		END IF;
	END PROCESS;
END arc_5_6_6;