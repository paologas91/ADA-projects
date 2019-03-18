with dizionarioOggetto; -- si omette lo use chiaramente perchè non si può usare un package generico --

procedure Main is
	package D1 is new dizionarioOggetto; -- is new è la parola chiave per istanziare un oggetto --
    use D1; -- with D1 superfluo
    package D2 is new dizionarioOggetto;
    use D2; -- with D2 superfluo
begin
    D1.aggiungi(1,'c'); -- oppure aggiungi(...) senza lo OID nel caso ho solo D1 perchè non ci sarebbe ambiguità --
    D2.aggiungi(2,'a');
  
    D1.stampa;
    D2.stampa;
   
    null;
end Main;
