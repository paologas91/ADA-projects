with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with type_dictionary; use type_dictionary;

procedure Main is
   D1, D2: Dictionary;
   --c: Character;
begin

   aggiungi(D1, 1, 'a');
   aggiungi(D1, 2, 'b');
   aggiungi(D1, 3, 'c');

   stampa(D1);

   cancella(D1, 2);

   stampa(D1);

   aggiungi(D2, 1, 'g');
   aggiungi(D2, 3, 'h');

   stampa(D2);

   if uguale(D1, D2) = true then
      put("Vero");
   else
      put("Falso");
   end if;

   --leggi(D1, 4);

   null;
end Main;
