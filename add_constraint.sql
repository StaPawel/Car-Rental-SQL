alter table klienci
add constraint klienci_pk PRIMARY key (id);

create index num_rej_auta_i on auta (num_rej);

alter table wypozyczenia
add CONSTRAINT FK_id_pracownika FOREIGN key (id_pracownika)
REFERENCES pracownicy (id);

alter table wypozyczenia
add constraint FK_id_klienta FOREIGN key (id_klienta)
REFERENCES klienci (id);

ALTER TABLE wypozyczenia 
add constraint FK_numer_auta foreign key (num_auta)
references auta (num_rej);

alter table auta
add CONSTRAINT PK_auta PRIMARY key (num_rej);

alter table pracownicy
add CONSTRAINT pk_pracownicy PRIMARY KEY (id);

alter table oddzial add(liczba_aut NUMBER);