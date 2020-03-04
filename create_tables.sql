create table klienci (
    id number,
    imie varchar2(30),
    nazwisko varchar(60)
);
create table auta (
    id number,
    marka varchar2(30),
    model_auta varchar(30),
    num_rej number,
    cena_dzien number,
    oddzial varchar2(3)
);
create table pracownicy(
    id number,
    imie VARCHAR2(20),
    nazwisko VARCHAR2(30),
    pesel number,
    oddzial VARCHAR2 (3)
);
create table oddzial(
    kod_oddzialu VARCHAR2 (3) PRIMARY key,
    miasto VARCHAR2 (20),
    kierownik number 
);
create table wypozyczenia(
id_zlecenia NUMBER PRIMARY KEY,
id_pracownika NUMBER,
id_klienta number,
num_auta VARCHAR2(10) 
);