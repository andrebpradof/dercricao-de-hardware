package fixed_package is
	
	constant
		MAX_IND	: integer := 15,
		MIN_IND : integer := -15;
	subtype	fixed_range	is	integer range MAX_IND downto MIN_IND;
	subtype	fixed		is	bit_vector;

	to_fixed (arg: integer; max_range: fixed_range := MAX_IND; min_range: fixed_range := 0) return fixed; --(max_range downto min_range);
	to_fixed (arg: real; max_range: fixed_range; min_range: fixed_range) return fixed; --(max_range downto min_range);
	to_integer (arg: fixed) return integer;
	to_real (arg: fixed) return real;

end fixed_package;

package body fixed_package is

	constant NASF : fixed (0 downto 1) := (others => '0');

	function to_fixed (arg: integer; max_range: fixed_range := MAX_IND; min_range: fixed_range := 0) return fixed is
	
		variable result  : fixed (max_range downto min_range);

	begin
		 
		if (result'length < 1) then   
			return NASF;
		end if;

		if arg /= 0 then
			if (arg < 0) then
				sign := '1';
				argx := -(arg + 1);
			else
				sign := '0';
				argx := arg;
			end if;
		else
			result := (others => '0');
		end if;


		return result;

	end function;
	
	function to_fixed (arg: real; max_range: fixed_range; min_range: fixed_range) return fixed is
	begin 
	end function;

	function to_integer (arg: fixed) return integer is
	begin
	end function;	
	
	function to_real (arg: fixed) return real is
	begin
	end function;

end package body;