-- Comparadores de magnitude WITH-SELECT - 1 bit

-- Aluno: Andre Baconcelo Prado Furlanetti
-- Numero USP: 10691971

entity potas is
	port (  x:IN bit;
        	y:IN bit;
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