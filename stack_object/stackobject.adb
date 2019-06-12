package body stackobject is

	max:constant:=100;
	
	type Table is array(1..max) of Integer;
    type Stack is limited record 
       st:Table;
	   top:Integer range 0..max:=0;
    end record;
	
	s:Stack;
	
    procedure push(x:in Integer) is
    begin
       s.top := s.top + 1;
       s.st(s.top) := x;
    end push;
   
    procedure pop is
    begin 
       s.top := s.top - 1;
    end pop;
   
    function top return Integer is
    begin
       return s.st(s.top);
    end top;
   
    function empty return Boolean is
    begin
       return s.top = 0;
    end empty;
	
	begin
		integer i;
		s.top:=0;
		for i:=1 to 10 
			s.st[i]:=0;
	end;
   
end stackobject;
