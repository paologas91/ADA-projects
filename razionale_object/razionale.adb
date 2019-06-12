package body Razionale is

	type Razionale is record 
		numeratore:Integer;
		denominatore:Integer;
	end record;
	
	r:Razionale;
	
	procedure assegna(n:in Integer; d:in Integer) is
	begin
		if d != 0 then
			r.numeratore := n;
			r.denominatore := d;
		end if;
	end assegna;
	
	procedure incrementa is 
	begin 
		r.numeratore := r.numeratore + 1;
	end incrementa;
	
	function zero return Boolean is 
	begin
		if r.numeratore == 0 then
			return true;
		else 
			return false;
		end if;
	end zero;
	
end Razionale;
	
	