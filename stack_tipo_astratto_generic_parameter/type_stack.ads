generic
	max:Integer;
	type Item is private;
package Type_stack is
		
    type Stack is limited private; -- se tolgo limited qui non compila --
    procedure push(s:in out Stack; x:in Item);
    procedure pop(s:in out Stack);
    function top(s:in Stack) return Item;
    function empty(s:in Stack) return Boolean;
	
private
   
    type Table is array(1..max) of Item;
    type Stack is limited record 
       st:Table;
	   top:Integer range 0..max:=0;
    end record;
   
end Type_stack;
