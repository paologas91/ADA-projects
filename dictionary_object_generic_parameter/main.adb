with dizionarioOggetto;

procedure Main is
   package D1 is new dizionarioOggetto(20);
   use D1; -- with D1 superfluo
   package D2 is new dizionarioOggetto(40);
   use D2; -- with D2 superfluo
begin
   D1.aggiungi(1, 'a');
   
   D1.stampa;
   null;
end Main;
