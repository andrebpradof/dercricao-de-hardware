ENTITY comparador_4bit IS
    GENERIC (n : INTEGER := 3);
    PORT (
        x, y : IN bit_vector(3 DOWNTO 0)
        g, l : OUT BIT
    );
end comparador;

architecture rtl of comparador_4bit is

    component comp1bit
PORT

begin
    
    
    
end architecture rtl;