-- A1

-- Attribut hinzufügen
ALTER TABLE ABTEILUNGEN
  ADD GEHALTSSUMME INT;


-- A2
-- Gehaltssumme setzen
update Abteilungen
  set gehaltssumme = (SELECT sum(gehalt)
                      FROM ANGESTELLTE
                      where abt_nr = Abteilungen.abt_nr);

-- A3
-- Trigger zur Tabelle Angestelle hinzufügen
set define off;
create or replace trigger gehaltssumme_ai_trg
after insert on angestellte
for each row
  update abteilungen
    set gehaltssumme = gehaltssumme + :new.gehalt
    where abt_nr = :new.abt_nr


INSERT INTO ANGESTELLTE
VALUES (
30, 1, 'Manchmal sind die Frauen Chef', 'Betriebswirt', 'Müller', 'Josefine', 'w',  TO_Date( '02/01/0091 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 10000, 3400, 'Köln', 'Memelerstr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'));

commit;
