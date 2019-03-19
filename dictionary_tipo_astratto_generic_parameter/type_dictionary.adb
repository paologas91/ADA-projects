with Ada.Text_IO; use Ada.Text_IO;

package body type_dictionary is
	
    function appartiene(D:in Dictionary; c:in key) return Integer is
    begin
        for i in 1..D.size loop
			if D.diz(i).c = c then
				return i;
			end if;
        end loop;
        return -1;
    end appartiene;
	
    procedure aggiungi(D:in out Dictionary; c:in key; v:in value) is
        index:Integer;
    begin
        index := appartiene(D,c);
        if index = -1 then
			if D.size < max then
				D.diz(D.size + 1) := (c,v);
				D.size := D.size + 1;
			end if;
		else
			D.diz(index).v := v;
		end if;
    end aggiungi;
	
    function leggi(D:in Dictionary; c:in key) return value is
		index:Integer;
		v:value;
    begin
		index := appartiene(D,c);
		if index = -1 then
			put("Nessun elemento corrispondente alla chiave");
		else
			v := D.diz(index).v;
		end if;
		return v;
    end leggi;   
   
    procedure cancella(D:in out Dictionary; c:in key) is
		index:Integer;
    begin
		index := appartiene(D,c);
		if index /= -1 then
			for i in index..D.size - 1 loop
				D.diz(i) := D.diz(i + 1);
			end loop;             
			D.size := D.size - 1;
		end if;
    end cancella;
	
	function isEmpty(D:in Dictionary) return Boolean is
	begin
		return D.size = 0;
	end isEmpty;
      
    function uguale(D1:in Dictionary; D2:in Dictionary) return Boolean is
		index:Integer;
    begin
		if D1.size /= D2.size then
			return false;
		else
			for i in 1..D1.size loop
				index := appartiene(D2, D1.diz(i).c);
				if index = -1 then
					return false;
				else
					if D2.diz(index).v /= D1.diz(i).v then
						return false;
					end if;
				end if;
			end loop;                 
		end if;
		return true;
    end uguale;

end type_dictionary;
