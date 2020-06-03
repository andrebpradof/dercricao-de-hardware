entity comp1bit is	--template para o exercício da Aula 03
	port
	(
		xi, yi	: in bit;	-- bits dos valores a serem comparados
		Gi, Li	: in bit;	-- resultado das comparacoes anteriores
		Go, Lo	: out bit	-- saida da comparacao entre xi e yi
	);
end entity;

architecture logical of comp1bit is
begin

	Go <= (Gi) OR (xi AND (NOT Li AND NOT yi));
	Lo <= ((NOT xi AND NOT Gi) AND yi) OR Li;

end logical;