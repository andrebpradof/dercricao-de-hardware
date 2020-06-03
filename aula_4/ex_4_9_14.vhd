-- Aluno: Andre Baconcelo Prado Furlanetti
-- Numero USP: 10748305
-- Ex: 4.9.14


ENTITY deslocador IS
	PORT   (v        : IN  BIT_VECTOR  (3 DOWNTO 0);
		    d0, d1   : IN  BIT;
		    s        : OUT BIT_VECTOR  (3 DOWNTO 0));
END ENTITY deslocador;

ARCHITECTURE ifelse1 OF deslocador IS
BEGIN
	processo: PROCESS (v, d0, d1)
	BEGIN
		IF     d0 & d1 = "00" THEN s <= v(3) & v(2) & v(1) & v(0);
		ELSIF  d0 & d1 = "01" THEN s <= v(2) & v(1) & v(0) & v(3);
		ELSIF  d0 & d1 = "10" THEN s <= v(1) & v(0) & v(3) & v(2);
		ELSE   s <= v(0) & v(3) & v(2) & v(1);
		END IF;
	END PROCESS processo;
END ifelse1;

ARCHITECTURE casewhen1 OF deslocador IS
	SIGNAL cat : bit_vector (1 DOWNTO 0);
BEGIN
	processo: PROCESS (v, d0, d1)
	BEGIN
		cat <= d0 & d1;
		CASE cat IS
			WHEN "00"   => s <= v(3) & v(2) & v(1) & v(0);
			WHEN "01"   => s <= v(2) & v(1) & v(0) & v(3);
			WHEN "10"   => s <= v(1) & v(0) & v(3) & v(2);
			WHEN OTHERS => s <= v(0) & v(3) & v(2) & v(1);
		END CASE;
	END PROCESS processo;
END casewhen1;

ARCHITECTURE ifelse2 OF deslocador IS
BEGIN
	processo: PROCESS (v, d0, d1)
	BEGIN
		IF d0 = '0' THEN
			IF d1 = '0' THEN s <= v(3) & v(2) & v(1) & v(0);
			ELSE             s <= v(2) & v(1) & v(0) & v(3);
			END IF;
		ELSIF d1 = '0' THEN      s <= v(1) & v(0) & v(3) & v(2);
		ELSE                     s <= v(0) & v(3) & v(2) & v(1);
		END IF;		
	END PROCESS processo;
END ifelse2;

ARCHITECTURE casewhen2 OF deslocador IS
BEGIN
	processo: PROCESS (v, d0, d1)
	BEGIN
		CASE d0 IS
			WHEN '0' =>
				CASE d1 IS
					WHEN '0'    => s <= v(3) & v(2) & v(1) & v(0);
					WHEN OTHERS => s <= v(2) & v(1) & v(0) & v(3);
				END CASE;
			WHEN OTHERS =>
				CASE d1 IS
					WHEN '0'    => s <= v(1) & v(0) & v(3) & v(2);
					WHEN OTHERS => s <= v(0) & v(3) & v(2) & v(1);
				END CASE;
		END CASE;
	END PROCESS processo;
END casewhen2;
