-- Aluno: Andre Baconcelo Prado Furlanetti
-- Numero USP: 10748305
-- Ex: 4.9.9


ENTITY detector_prioridade IS
    port(p0, p1, p2, p3    :   IN bit;
         x1, x0, int       :   OUT bit);
END ENTITY detector_prioridade;

ARCHITECTURE prioridade OF detector_prioridade IS
    SIGNAL sel: bit_vector(0 to 3);
BEGIN
    processo: PROCESS(p0, p1, p2, p3)
        BEGIN
            sel <= p0 & p1 & p2 & p3;
            CASE sel IS
                WHEN "1000" | "1001" | "1010" | "1011" | "1100" | "1101" | "1110" | "1111" => x1 <= '0'; x0 <= '0'; int <= '1';
                WHEN "0100" | "0101" | "0110" | "0111" => x1 <= '0'; x0 <= '1'; int <= '1';
                WHEN "0010" | "0011" => x1 <= '1' ; x0 <= '0'; int <= '1';
                WHEN "0001" => x1 <= '1'; x0 <= '1'; int <= '1';
                WHEN OTHERS => x1 <= '1'; x0 <= '1'; int <= '0';
            END CASE;
    END PROCESS processo;
END prioridade;
