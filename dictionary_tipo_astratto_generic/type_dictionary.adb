with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings; use Ada.Strings;

package body type_dictionary is

   function appartiene(D:in Dictionary; c:in Integer) return Integer is
   begin
      for i in 1..D.size loop 
        if D.diz(i).c=c then
         return c;
        end if;
      end loop;
      return -1;
   end appartiene;
   
   procedure aggiungi(D:in out Dictionary; c:in Integer; v:in Character) is
      index:Integer;
   begin
      index:=appartiene(D,c);
      if index=-1 then
         if D.size<max then
            D.diz(D.size+1):=(c,v);
            D.size:=D.size+1;
         end if;
      else
         D.diz(index).v:=v;
      end if;
   end aggiungi;
   
   function leggi(D:in Dictionary; c:in Integer) return Character is
      index:Integer;
      v:Character;
   begin
      index:=appartiene(D,c);
      if index=-1 then
         put("Nessun elemento corrispondente alla chiave");
      else
         v:=D.diz(index).v;
      end if;
      return v;
   end leggi;   
   
   procedure cancella(D:in out Dictionary; c:in Integer) is
      index:Integer;
   begin
      index:=appartiene(D,c);
      if index/=-1 then
         for i in index..D.size-1 loop
            D.diz(i):=D.diz(i+1);
         end loop;             
         D.size:=D.size-1;
      end if;
   end cancella;
      
   function uguale(D1:in Dictionary; D2:in Dictionary) return Boolean is
      index:Integer;
   begin
      if D1.size/=D2.size then
         return false;
      else
         for i in 1..D1.size loop
            index:= appartiene(D2, D1.diz(i).c);
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
   
   procedure stampa(D:in Dictionary) is 
      CR:constant Character:=Character'Val(13);
      LF:constant Character:=Character'Val(10);
   begin
      put("Dizionario: ");
      put(CR);
      put(LF);
      for i in 1..D.size loop
         put("Chiave: ");
         put(D.diz(i).c);
         put(" Valore: ");
         put(D.diz(i).v);
         put(CR);
         put(LF);
      end loop;
      put(CR);
      put(LF);

   end stampa;
      
end type_dictionary;
