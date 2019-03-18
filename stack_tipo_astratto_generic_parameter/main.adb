with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Type_stack;

procedure Main is
	package Stack_int is new Type_stack(20, Integer);
	use Stack_int;
	
    st1, st2:Stack_int.Stack;
begin
    push(st1, 1);
    push(st2, 1);
    push(st1, 2);

    put(top(st1));

    pop(st1);

    put(top(st1));
    null;
end Main;
