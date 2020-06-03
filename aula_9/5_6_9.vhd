-- ---------------------------------------------------------------
--  SEL0632 - Linguagens de Descrição de Hardware (2020)		--
--  Praticando VHDL para o projeto  							--
--																--
--	Exercicio 5.6.9											    --
--                                                              --
--  Alunos:                                                     --
--  André Baconcelo Prado Furlanetti - Nº USP: 10748305         --
--  Diego da Silva Parra             - Nº USP: 10716550         --
--  Mateus Fernandes Doimo           - Nº USP: 10691971         --
-- ---------------------------------------------------------------

ENTITY exer_5_6_9 IS
    PORT (a_high, a_low, a_succ, a_pred, a_right, a_left, a_rightof, a_leftof,a_val, a_pos :OUT INTEGER;
          b_high, b_low, b_succ, b_pred, b_right, b_left, b_rightof, b_leftof,b_val, b_pos :OUT INTEGER);
END exer_5_6_9;

ARCHITECTURE arq_5_6_9 OF exer_5_6_9 IS
    SUBTYPE a IS INTEGER RANGE -10 TO +15;
    SUBTYPE b IS INTEGER RANGE +25 DOWNTO -20;

BEGIN
    a_right <= a'right;         -- 15
    a_left <= a'left;           -- -10   
    a_high <= a'high;           -- 15
    a_low <= a'low;             -- -10
    a_succ <= a'succ(7);        -- 8
    a_pred <= a'pred(7);        -- 6
    a_val <= a'val(7);          -- 7
    a_pos <= a'pos(7);          -- 7
    a_leftof <= a'leftof(7);    -- 6
    a_rightof <= a'rightof(7);  -- 8
    
    b_right <= b'right;         -- -20
    b_left <= b'left;           -- 25
    b_high <= b'high;           -- 25
    b_low <= b'low;             -- -20
    b_succ <= b'succ(7);        -- 8
    b_pred <= b'pred(7);        -- 6
    b_val <= b'val(7);          -- 7
    b_pos <= b'pos(7);          -- 7
    b_leftof <= b'leftof(7);    -- 8
    b_rightof <= b'rightof(7);  -- 6
END arq_5_6_9;

