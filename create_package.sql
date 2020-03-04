create or replace PACKAGE pak_wypozyczalnia1
is 
FUNCTION flota_warszawa return number;
FUNCTION flota_katowice return number;
FUNCTION flota_poznan return number;
PROCEDURE najdrozsze_auta;
PROCEDURE srednia_wyplata;
end;

create or replace PACKAGE body pak_wypozyczalnia1
is 
FUNCTION flota_warszawa return number is
ilosc_aut_war number;
begin
select count(*) into ilosc_aut_war from auta where oddzial = 'WAR';
return ilosc_aut_war;
end;
FUNCTION flota_katowice return number is
ilosc_aut_kat number;
begin
select count(*) into ilosc_aut_kat from auta where oddzial = 'KAT';
return ilosc_aut_kat;
end;
FUNCTION flota_poznan return number is
ilosc_aut_poz number;
begin
select count(*) into ilosc_aut_poz from auta where oddzial = 'POZ';
return ilosc_aut_poz;
end;


