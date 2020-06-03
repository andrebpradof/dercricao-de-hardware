-- ---------------------------------------------------------------
--  SEL0632 - Linguagens de Descrição de Hardware (2020)	    	--
--  Praticando VHDL para o projeto  					              		--
--														                              		--
--	Exercicio 7.6.8 										                      	--
--                                                              --
--  Alunos:                                                     --
--  André Baconcelo Prado Furlanetti - Nº USP: 10748305         --
--  Diego da Silva Parra             - Nº USP: 10716550         --
--  Mateus Fernandes Doimo           - Nº USP: 10691971         --
-- ---------------------------------------------------------------
ENTITY exer_7_6_8 IS
  GENERIC (n : INTEGER := 4);
  PORT (
    inteiro_e : IN INTEGER RANGE 0 TO 2 ** n - 1; -- entrada inteiro
    bit_s : OUT BIT_VECTOR (n - 1 DOWNTO 0)); -- saida convertida para bit_vector
END exer_7_6_8;

ARCHITECTURE arch_7_6_8 OF exer_7_6_8 IS
BEGIN
  abc_next : PROCESS (inteiro_e)
    VARIABLE temp_entrada : INTEGER RANGE 0 TO 2 ** n - 1;
    VARIABLE temp_saida : BIT_VECTOR (n - 1 DOWNTO 0);
  BEGIN
    temp_entrada := inteiro_e;
    loop_1 : FOR i IN 0 TO n - 1 LOOP
      IF (temp_entrada MOD 2 = 1) THEN
        temp_saida(i) := '1';
        temp_entrada := temp_entrada /2;
        NEXT loop_1;
      ELSE
        temp_saida(i) := '0';
        temp_entrada := temp_entrada /2;
        NEXT loop_1;
      END IF;
    END LOOP;
    bit_s <= temp_saida;
  END PROCESS;
END arch_7_6_8;