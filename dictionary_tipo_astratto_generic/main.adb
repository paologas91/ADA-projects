with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with type_dictionary;

procedure Main is
	package DIZ1 is new type_dictionary; -- DIZ1 non è un oggetto perchè type_dictionary non è una classe! --
    use DIZ1;
    package DIZ2 is new type_dictionary;
    use DIZ2;
    d1, d3: DIZ1.Dictionary;
    d2: DIZ2.Dictionary;
    c: Boolean;
begin
    aggiungi(d1, 1, 'a');
    aggiungi(d1, 2, 'b');
    aggiungi(d1, 3, 'c');

    stampa(d1);

    cancella(d1, 2);

    stampa(d1);

    aggiungi(d2, 1, 'g');
   
    aggiungi(d2, 3, 'h');

    stampa(d2);
   
    aggiungi(d3, 1, 'a');

    c := uguale(d1, d3);

    null; -- mettere solo quando non ci sono istruzioni --
end Main;

-- nel caso di astrazione generica sul tipo astratto, gli operatori binari posso usarli solo su variabili dello stesso package? --