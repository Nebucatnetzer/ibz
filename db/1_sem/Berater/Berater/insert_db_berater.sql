<<<<<<< HEAD
USE Berater;


-- Alles löschen
delete from ARBEIT;
delete from BERATER;
delete from KUNDE;
delete from AUFGABE;

GO

-- Daten einfügen

-- Aufgaben Tabelle
INSERT INTO AUFGABE (AUFGABEID, AUFGABE)
     VALUES (1,'IT-Berater');

INSERT INTO AUFGABE (AUFGABEID, AUFGABE)
     VALUES (2,'Finanzberater');


-- Kundentabelle
insert into KUNDE([KUNDENNR], [KUNDENNAME], [VORNAME])
	values (1, 'Emil Schmidt', null);
insert into KUNDE([KUNDENNR], [KUNDENNAME], [VORNAME])
	values (2, 'Hans Müller', null);
insert into KUNDE([KUNDENNR], [KUNDENNAME], [VORNAME])
	values (3, 'Johanna Schulze', null);
insert into KUNDE([KUNDENNR], [KUNDENNAME], [VORNAME])
	values (4, 'Markus Schulte', null);
insert into KUNDE([KUNDENNR], [KUNDENNAME], [VORNAME])
	values (5, 'Markus Huber', null);

-- Beratertabelle
insert into BERATER([BERATERID],[AUFGABEID],[BERATERNAME],[STUNDENLOHN])
	values(1, 1, 'Helena Müller', 50);
insert into BERATER([BERATERID],[AUFGABEID],[BERATERNAME],[STUNDENLOHN])
	values(2, 2, 'Ingo Fuchs', 45);
insert into BERATER([BERATERID],[AUFGABEID],[BERATERNAME],[STUNDENLOHN])
	values(3, 1, 'John Müller', 60);
insert into BERATER([BERATERID],[AUFGABEID],[BERATERNAME],[STUNDENLOHN])
	values(4, 1, 'Elisabeth Schulz', 30);

GO

-- Arbeit Tabelle
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(1, 1, 3);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(1, 2, 5);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(1, 3, 7);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(1, 4, 8);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(2, 2, 4);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(2, 3, 6);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(3, 1, 2);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(3, 3, 30);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(4, 1, 10);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(4, 2, 5);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(4, 4, 5);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(5, 3, 12);

=======
USE Berater;


-- Alles löschen
delete from ARBEIT;
delete from BERATER;
delete from KUNDE;
delete from AUFGABE;

GO

-- Daten einfügen

-- Aufgaben Tabelle
INSERT INTO AUFGABE (AUFGABEID, AUFGABE)
     VALUES (1,'IT-Berater');

INSERT INTO AUFGABE (AUFGABEID, AUFGABE)
     VALUES (2,'Finanzberater');


-- Kundentabelle
insert into KUNDE([KUNDENNR], [KUNDENNAME], [VORNAME])
	values (1, 'Emil Schmidt', null);
insert into KUNDE([KUNDENNR], [KUNDENNAME], [VORNAME])
	values (2, 'Hans Müller', null);
insert into KUNDE([KUNDENNR], [KUNDENNAME], [VORNAME])
	values (3, 'Johanna Schulze', null);
insert into KUNDE([KUNDENNR], [KUNDENNAME], [VORNAME])
	values (4, 'Markus Schulte', null);
insert into KUNDE([KUNDENNR], [KUNDENNAME], [VORNAME])
	values (5, 'Markus Huber', null);

-- Beratertabelle
insert into BERATER([BERATERID],[AUFGABEID],[BERATERNAME],[STUNDENLOHN])
	values(1, 1, 'Helena Müller', 50);
insert into BERATER([BERATERID],[AUFGABEID],[BERATERNAME],[STUNDENLOHN])
	values(2, 2, 'Ingo Fuchs', 45);
insert into BERATER([BERATERID],[AUFGABEID],[BERATERNAME],[STUNDENLOHN])
	values(3, 1, 'John Müller', 60);
insert into BERATER([BERATERID],[AUFGABEID],[BERATERNAME],[STUNDENLOHN])
	values(4, 1, 'Elisabeth Schulz', 30);

GO

-- Arbeit Tabelle
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(1, 1, 3);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(1, 2, 5);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(1, 3, 7);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(1, 4, 8);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(2, 2, 4);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(2, 3, 6);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(3, 1, 2);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(3, 3, 30);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(4, 1, 10);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(4, 2, 5);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(4, 4, 5);
insert into ARBEIT([KUNDENNR], [BERATERID], [AZSTUNDEN])
	values(5, 3, 12);

>>>>>>> 91c37e0a13ad9148d1d6356ee6197441ad0a42e5
