--------
-- Nome: André Baconcelo Prado Furlanetti 		
-- NUSP: 10748305 							
--									
-- Comparador de 4 bits utilizando o código do comparador de 1 bit 
-- como componente e com esquema de iteração for generate
--						
-- 19/04/2020				
--------

entity comparador_4bit is 
	generic(n	: INTEGER  := 4 ); 
	port(
		x, y		: in 	bit_vector (n-1 DOWNTO 0);	-- bits dos valores a serem comparados
		G0, L0	: in  bit; 								-- bits de entrada
		G, L		: out bit							-- saida da comparacao entre x e y
	);
end comparador_4bit;


architecture hardware of comparador_4bit is

	component comp_1bit                         
		port(
			xi, yi, Ga, La	: in bit;
			Gi, Li   		: out bit	
		); 
	end component;
	
	SIGNAL ig,il : BIT_VECTOR (n-1 DOWNTO 0);
	
	begin  
	global: for i in 0 to n-1 generate
	
		def: if i = 0 generate
			primeira: comp_1bit port map (x(i), y(i), G0, L0, ig(i),il(i));  			-- 1a celula
		end generate def;
		
		abc: if (i > 0) and (i < n-1) generate
			centro: comp_1bit port map  (x(i), y(i), ig(i-1), il(i-1), ig(i), il(i));  -- celulas centro
		end generate abc;
		
		ghi: if i=n-1 generate
			ultima: comp_1bit port map (x(i), y(i), ig(i-1), il(i-1), G, L);      		-- ultima celula
		end generate ghi;
		
	end generate global;
	
end hardware;