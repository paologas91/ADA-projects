generic
	max: Integer;
	type key is private;
	type value is private;
package type_dictionary is
	
    type Dictionary is limited private;
    procedure aggiungi(D:in out Dictionary; c:in key; v:in value);
	function isEmpty(D:in Dictionary) return Boolean;
    function leggi(D:in Dictionary; c:in key) return value;
    procedure cancella(D:in out Dictionary; c:in key);
    function uguale(D1:in Dictionary; D2:in Dictionary) return Boolean;

private
   
    type Coppia is record
       c:key;
       v:value;
    end record;
   
    type ElementList is array(1..max) of Coppia;
   
    type Dictionary is limited record
       diz:ElementList;
       size:Integer range 0..max:=0;
    end record;
   
end type_dictionary;
