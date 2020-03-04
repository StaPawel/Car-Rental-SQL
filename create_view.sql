create view staz_premia as
select 
imie || ' ' ||nazwisko Pracownik,
Round(MONTHS_BETWEEN(TO_DATE(CURRENT_DATE, 'YYYY-MM-DD'),TO_DATE(rozpoczecie_pracy, 'YYYY-MM-DD')),0) Staz_Pracy 
from wypozyczalnia.pracownicy;