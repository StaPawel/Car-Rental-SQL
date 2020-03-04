create or replace TRIGGER after_delete_employee
AFTER DELETE
on pracownicy
begin
dbms_output.put_line(TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS') || ' - Pracownik z tabeli Pracownicy zostal usuniety');
end;

CREATE OR REPLACE TRIGGER customers_audit_trg
    AFTER 
    UPDATE OR DELETE 
    ON customers
    FOR EACH ROW    
DECLARE
   l_transaction VARCHAR2(10);
BEGIN
 
   l_transaction := CASE  
         WHEN UPDATING THEN 'UPDATE'
         WHEN DELETING THEN 'DELETE'
 END;


CREATE OR REPLACE TRIGGER aktywnosc_auta
    AFTER UPDATE OR DELETE 
    ON auta   
DECLARE
   dzialanie_char VARCHAR2(20);
BEGIN
   dzialanie_char := CASE  
         WHEN UPDATING THEN 'UPDATE'
         WHEN DELETING THEN 'DELETE'
   END;
   INSERT INTO aktywnosci (nazwa_tabeli, dzialanie, uzytkownik, data_dzialania)
   VALUES('AUTA', dzialanie_char, USER, SYSDATE);
END;


