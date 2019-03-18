package body Type_stack is
	
    procedure push(s:in out Stack; x:in Item) is
    begin
       s.top := s.top + 1;
       s.st(s.top) := x;
    end push;
   
    procedure pop(s:in out Stack) is
    begin 
       s.top := s.top - 1;
    end pop;
   
    function top(s:in Stack) return Item is
    begin
       return s.st(s.top);
    end top;
   
    function empty(s:in Stack) return Boolean is
    begin
       return s.top = 0;
    end empty;
   
end Type_stack;
