-- Aluno: Andre Baconcelo Prado Furlanetti
-- Numero USP: 10748305
-- Ex: 4.3.4

ENTITY mux_4b IS
PORT(i0, i1, i2, i3 : IN BIT; --entradas
    S0, S1          : IN BIT; -- selecao
    ot              : OUT BIT); -- saida
END mux_4b;

ARCHITECTURE errada OF mux_4b IS
BEGIN
    abc: PROCESS (i0, i1, i2, i3) -- sinais so e s1 removidos da lista
    BEGIN
        IF    s1 & S0 = "00" THEN ot <= i0;
        ELSIF s1 & S0 = "01" THEN ot <= i1;
        ELSIF s1 & S0 = "10" THEN ot <= i2;
        ELSE                      ot <= i3;
        END IF;
    END PROCESS abc;
END errada;

-- sem os bits s0 e s1 na lista de sensibilidade a arquitetura nao sera ativada 
-- com a mudanca da selecao, então o circuito nao funciona pois os condicionais 
-- do processo dependem de s1 e s0. O processo seria ativado com apenas um 
-- comportamento constante