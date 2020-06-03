-- Comparadores de magnitude WHEN-ELSE - 1 bit

-- Aluno: Andre Baconcelo Prado Furlanetti
-- Numero USP: 10691971

entity potas is
	port (  x : in bit;
        	y : in bit;
        	G : out bit;
        	L : out bit
	);   
end entity;

architecture Comparator of potas is
begin
    G <= '1' WHEN (x > y) ELSE 
	 '0' WHEN (x = y) ELSE '0'; 
    L <= '1' WHEN (y > x) ELSE 
    	 '0' WHEN (x = y) ELSE '0'; 
end Comparator;
