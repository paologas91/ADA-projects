generic
	max: Integer;
package dizionarioOggetto is
	
	procedure aggiungi(c:in Integer; v:in Character);
	function leggi(c:in Integer) return Character;
	procedure cancella(c:in Integer);
	procedure stampa;   

end dizionarioOggetto;
