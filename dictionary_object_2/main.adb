with dizionarioOggetto; use dizionarioOggetto;
with dizionarioOggettobis; use dizionarioOggettobis;

procedure Main is

begin

    dizionarioOggetto.aggiungi(1, 'c');
    dizionarioOggetto.aggiungi(2, 'a');
    dizionarioOggettobis.aggiungi(3, 'a');

	-- si nota come non posso assegnare gli oggetti ad alcuna variabile! --
    dizionarioOggetto.stampa;
    dizionarioOggettobis.stampa;

    null;
end Main;
