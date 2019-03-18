with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with type_dictionary;

procedure Main is
   package DIZ1 is new type_dictionary(20, Integer, Character);
   use DIZ1;
   package DIZ2 is new type_dictionary(40, Integer, Character);
   use DIZ2;
   d1, d3: DIZ1.Dictionary;
   d2: DIZ2.Dictionary;
   c: Boolean;
begin
   aggiungi(d1, 1, 'a');
   aggiungi(d1, 2, 'b');
   aggiungi(d1, 3, 'c');

   --stampa(d1);

   cancella(d1, 2);

   --stampa(d1);

   aggiungi(d2, 1, 'g');
   
   aggiungi(d2, 3, 'h');

   --stampa(d2);
   
   aggiungi(d3, 1, 'a');

   c := uguale(d1, d3);

   null;
end Main;

-- in questo caso posso usare D1 oppure devo per forza dichiarare una variabile? --
-- nel caso di astrazione generica sul tipo astratto, gli operatori binari posso usarli solo su variabili dello stesso package? --