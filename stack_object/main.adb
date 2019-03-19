with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with stackobject; use stackobject;

procedure Main is

begin
    push(1);
    push(1);
    push(2);

    put(top);

    pop;

    put(top);
	
    null;
end Main;
