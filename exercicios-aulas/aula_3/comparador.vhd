entity comparador is	--template para o exercício da Aula 03
	port
	(
		x, y	: in bit_vector(3 downto 0);	-- bits dos valores a serem comparados
		G, L	: out bit	-- saida da comparacao entre x e y
	);
end entity;

architecture logical of comparador is
	signal Gv, Lv: bit_vector(4 downto 0);	-- sinais internos
begin
	Gv(4) <= '0';
	Lv(4) <= '0';
	Gv(3) <= Gv(4) OR (x(3) AND (NOT Lv(4) AND NOT y(3)));		
	Lv(3) <= Lv(4) OR (NOT x(3) AND (NOT Gv(4) AND y(3)));		
	Gv(2) <= Gv(3) OR (x(2) AND (NOT Lv(3) AND NOT y(2)));		
	Lv(2) <= Lv(3) OR (NOT x(2) AND (NOT Gv(3) AND y(2)));		
	Gv(1) <= Gv(2) OR (x(1) AND (NOT Lv(2) AND NOT y(1)));
	Lv(1) <= Lv(2) OR (NOT x(1) AND (NOT Gv(2) AND y(1)));
	Gv(0) <= Gv(1) OR (x(0) AND (NOT Lv(1) AND NOT y(0)));
	Lv(0) <= Lv(1) OR (NOT x(0) AND (NOT Gv(1) AND y(0)));
	G <= Gv(0);
	L <= Lv(0);

end logical;