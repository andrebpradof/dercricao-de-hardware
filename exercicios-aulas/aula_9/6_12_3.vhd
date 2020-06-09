-- ---------------------------------------------------------------
--  SEL0632 - Linguagens de Descrição de Hardware (2020)	    	--
--  Praticando VHDL para o projeto  	              						--
--															                              	--
--	Exercicio 6.12.3                    												--
--                                                              --
--  Alunos:                                                     --
--  André Baconcelo Prado Furlanetti - Nº USP: 10748305         --
--  Diego da Silva Parra             - Nº USP: 10716550         --
--  Mateus Fernandes Doimo           - Nº USP: 10691971         --
-- ---------------------------------------------------------------

ENTITY exer_6_12_3 IS
  PORT (da, db            :  IN  BIT_VECTOR(3 DOWNTO 0);    -- dados
        ck, sel           :  IN  BIT;                       -- clock e selecao               
        saidas            :  OUT BIT_VECTOR(3 DOWNTO 0));   -- saidas
END exer_6_12_3;

ARCHITECTURE arc_6_12_3 OF exer_6_12_3 IS
BEGIN
  abc: PROCESS (ck)
   BEGIN
    IF ck'EVENT AND ck ='0' THEN
      IF sel = '1' THEN saidas <= da; 
      ELSE              saidas <= db; 
      END IF;
    END IF;
  END PROCESS abc;
END arc_6_12_3;