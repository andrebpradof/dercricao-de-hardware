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

	function to_fixed (arg: integer; max_range: fixed_range := MAX_IND; min_range: fixed_range := 0) return fixed is
	begin 
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