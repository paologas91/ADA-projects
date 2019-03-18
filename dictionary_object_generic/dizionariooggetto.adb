with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings; use Ada.Strings;

package body dizionarioOggetto is
	
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
   
    diz:Dictionary;
   
    function appartiene(c:in Integer) return Integer is
    begin
       for i in 1..diz.size loop 
         if diz.diz(i).c=c then
          return c;
         end if;
       end loop;
       return -1;
    end appartiene;
   
    procedure aggiungi(c:in Integer; v:in Character) is
       index:Integer;
    begin
       index:=appartiene(c);
       if index=-1 then
          if diz.size<max then
             diz.diz(diz.size+1):=(c,v);
             diz.size:=diz.size+1;
          end if;
       else
          diz.diz(index).v:=v;
       end if;
    end aggiungi;
   
    function leggi(c:in Integer) return Character is
       index:Integer;
       v:Character;
    begin
       index:=appartiene(c);
       if index=-1 then
          put("Nessun elemento corrispondente alla chiave");
       else
          v:=diz.diz(index).v;
       end if;
       return v;
    end leggi;   
   
    procedure cancella(c:in Integer) is
       index:Integer;
    begin
       index:=appartiene(c);
       if index/=-1 then
          for i in index..diz.size-1 loop
             diz.diz(i):=diz.diz(i+1);
          end loop;             
          diz.size:=diz.size-1;
       end if;
    end cancella;
      
    procedure stampa is 
       CR:constant Character:=Character'Val(13);
       LF:constant Character:=Character'Val(10);
    begin
       put("Dizionario: ");
       put(CR);
       put(LF);
       for i in 1..diz.size loop
          put("Chiave: ");
          put(diz.diz(i).c);
          put(" Valore: ");
          put(diz.diz(i).v);
          put(CR);
          put(LF);
       end loop;
       put(CR);
       put(LF);

    end stampa;
      
end dizionarioOggetto;
