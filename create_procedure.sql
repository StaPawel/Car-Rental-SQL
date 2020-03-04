PROCEDURE najdrozsze_auta is
n_auto auta%rowtype;
cursor k_auta is
select marka, model_auta from auta where cena_dzien >= 100;
    begin
    for n_auto in k_auta loop
    dbms_output.put_line(n_auto.marka || ' ' || n_auto.model_auta);
    end loop;
end;
PROCEDURE srednia_wyplata is 
srednia_wyp number;
begin
select round(avg(wyplata),2) into srednia_wyp from pracownicy;
dbms_output.put_line(srednia_wyp);
end;
end;