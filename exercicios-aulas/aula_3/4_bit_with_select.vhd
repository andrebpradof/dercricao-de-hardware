-- Comparadores de magnitude WITH-SELECT - 4 bits

-- Aluno: Andre Baconcelo Prado Furlanetti
-- Numero USP: 10691971

entity potas is
	port (  x:IN bit_vector(0 to 3);
        	y:IN bit_vector(0 to 3);
        	G:OUT bit;
        	L:OUT bit);
end entity;

architecture Comparator of potas is
begin
    WITH x > y SELECT
    	G <=   '1' WHEN true,
	       '0' WHEN OTHERS;

    WITH x > y SELECT
    	L <=   '1' WHEN true,
	       '0' WHEN OTHERS;

end Comparator;