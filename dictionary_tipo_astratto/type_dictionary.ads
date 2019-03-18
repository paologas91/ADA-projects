package type_dictionary is

   type Dictionary is limited private;
   procedure aggiungi(D:in out Dictionary; c:in Integer; v:in Character);
   function leggi(D:in Dictionary; c:in Integer) return Character;
   procedure cancella(D:in out Dictionary; c:in Integer);
   function uguale(D1:in Dictionary; D2:in Dictionary) return Boolean;
   procedure stampa(D:in Dictionary);

private
   
   max:constant:=100;
   
   type Coppia is record
      c:Integer;
      v:Character;
   end record;
   
   type ElementList is array(1..max) of Coppia;
   
   type Dictionary is limited record
      diz:ElementList;
      size:Integer range 0..max:=0;
   end record;
   
end type_dictionary;
