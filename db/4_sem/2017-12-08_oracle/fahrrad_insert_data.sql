--
-- Aufgabe Fahrrad
--
-- Datei erzeugt Daten in den Tabellen


DELETE FROM kunden
/
DELETE FROM abteilungen
/
DELETE FROM geh_klassen
/
DELETE FROM lieferanten
/
DELETE FROM lager
/
DELETE FROM werke
/
DELETE FROM auftragspositionen
/
DELETE FROM auftraege
/
DELETE FROM angestellte
/
DELETE FROM artikel
/
DELETE FROM struktur
/
DELETE FROM teile
/

DELETE FROM teile_werke
/

DELETE FROM LAGERBESTAND
/

DELETE FROM LIEFERPROGRAMME
/
DELETE FROM LIEFERUNGEN
/

PROMPT INSERT INTO 'GEH_Klassen'

INSERT INTO geh_klassen
VALUES
(1,100000, 8000)
/
INSERT INTO geh_klassen
VALUES
(2,7999, 6000)
/
INSERT INTO geh_klassen
VALUES
(3,5999, 4000)
/
INSERT INTO geh_klassen
VALUES
(4,3999, 2000)
/
INSERT INTO geh_klassen
VALUES
(5,1999, 620)
/
INSERT INTO geh_klassen
VALUES
(6,620, 0)
/


PROMPT INSERT INTO abteilungen
INSERT INTO abteilungen
VALUES
(1,1,'Geschaftsf�hrung','K�ln')
/

INSERT INTO abteilungen
VALUES
(2,2,'Produktion','Lindlar')
/

INSERT INTO abteilungen
VALUES
(3,3,'Vertrieb','Dortmund')
/

INSERT INTO abteilungen
VALUES
(4,4,'Einkauf','Lindlar')
/

INSERT INTO abteilungen
VALUES
(5,5,'Arbeitsvorbereitung','Lindlar')
/
INSERT INTO abteilungen
VALUES
(6,6,'Datenverarbeitung','K�ln')
/

PROMPT INSERT INTO angestellte

INSERT INTO ANGESTELLTE
VALUES (
1, 1, 'Manchmal sind die Frauen Chef', 'Betriebswirt', 'M�ller', 'Josefine', 'w',  TO_Date( '02/01/0091 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 10000, 3400, 'K�ln', 'Memelerstr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
2, 2, 'Fehlt noch', 'Mathematiker', 'Fama', 'Hans', 'm',  TO_Date( '05/07/0091 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 9000, 2300, 'Gummersbach', 'Inselweg',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
3, 3, 'Fehlt noch', 'Betriebswirt', 'Heck', 'Iris', 'w',  TO_Date( '07/06/1988 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 7500, 3000, 'Gummersbach', 'Kaiserstr',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
4, 4, 'Fehlt noch', 'Kaufmann', 'Schmidt', 'Otto', 'm',  TO_Date( '07/01/1995 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 6500, 2000, 'Leverkusen', 'Netzestr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
5, 5, 'Fehlt noch', 'Informatiker', 'Weber', 'Anna', 'w',  TO_Date( '06/01/1995 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 6600, 2000, 'Leverkusen', 'Quarzstr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
6, 6, 'Fehlt noch', 'Informatiker', 'Frisch', 'Paul', 'm',  TO_Date( '06/01/1999 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 5000, 2000, 'Bergisch Gladbach', 'Grubenfeld',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
7, 6, 'Fehlt noch', 'Informatiker', 'Frisch', 'Paula', 'w',  TO_Date( '03/01/1993 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 5000, 2100, 'Bergisch Gladbach', 'Grubenfeld',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
26, 2, 'Fehlt noch', 'Kaufmann', 'Schneider', 'Ernst', 'm',  TO_Date( '06/01/1995 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 4000, 2000, 'Bergisch Gladbach', 'Falkenstr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
8, 2, 'Fehlt noch', 'Informatiker', 'Weber', 'Anna', 'w',  TO_Date( '06/01/1995 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 3700, 1500, 'Bergisch Gladbach', 'Burgstr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
9, 2, 'Fehlt noch', 'Ingenieur', 'Falser', 'Jonas', 'm',  TO_Date( '06/01/1995 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 3600, 1500, 'Bergisch Gladbach', 'Burgstr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
10, 2, 'Fehlt noch', 'Schreibkraft', 'Wanne', 'Erna', 'w',  TO_Date( '06/01/1995 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 500, 10, 'Bergisch Gladbach', 'Erntestr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
11, 2, 'Fehlt noch', 'Elektriker', 'Brunn', 'Ilse', 'w',  TO_Date( '01/01/1995 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 3600, 1500, 'Bergisch Gladbach', 'Fichtenweg',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
12, 3, 'Fehlt noch', 'Ingenieur', 'Brater', 'Willi', 'm',  TO_Date( '01/01/1997 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 4600, 1500, 'Dortmund', 'Bedastr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
14, 3, 'Fehlt noch', 'Schreibkraft', 'Bille', 'Max', 'm',  TO_Date( '01/01/1993 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 610, 30, 'Dortmund', 'Plutostr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
15, 4, 'Fehlt noch', 'Kaufmann', 'Wahn', 'Thorsten', 'm',  TO_Date( '01/01/1994 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 3610, 1030, 'Gladbeck', 'Weserstr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
16, 4, 'Fehlt noch', 'Kaufmann', 'Wuton', 'Petra', 'w',  TO_Date( '01/01/1994 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 4610, 1230, 'Gladbeck', 'Triebstr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
17, 5, 'Fehlt noch', 'Kaufmann', 'Glatt', 'Lucas', 'm',  TO_Date( '01/01/1994 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 5200, 2230, 'Gladbeck', 'Alfredstr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
18, 5, 'Fehlt noch', 'Kaufmann', 'Gotte', 'Barbara', 'w',  TO_Date( '01/01/1994 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 5500, 3230, 'Gladbeck', 'Saarlandstr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
19, 5, 'Fehlt noch', 'Kaufmann', 'Kall', 'Holger', 'm',  TO_Date( '01/01/1994 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 4500, 3230, 'Gladbeck', 'Talstr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
20, 6, 'Fehlt noch', 'Informatiker', 'K�se', 'Franz', 'm',  TO_Date( '01/01/1997 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 4500, 3230, 'Gladbeck', 'Talstr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
21, 6, 'Fehlt noch', 'Informatiker', 'Kussmann', 'Anna', 'w',  TO_Date( '01/01/1997 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 4500, 3230, 'Gladbeck', 'Unterhof',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
22, 6, 'Fehlt noch', 'Informatiker', 'Bold', 'Leo', 'm',  TO_Date( '01/01/1997 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 3500, 3230, 'Gladbeck', 'Thomastr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
23, 6, 'Fehlt noch', 'Informatiker', 'Butz', 'Max', 'm',  TO_Date( '01/01/1998 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 3500, 3230, 'Gladbeck', 'Unterhof',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
25, 2, 'Fehlt noch', 'Betriebswirt', 'Barthels', 'Isabel', 'w',  TO_Date( '01/01/1995 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 3500, 3230, 'Gladbeck', 'Schildberg',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
24, 2, 'Fehlt noch', 'Montieur', 'Schmidt', 'Hugo', 'm',  TO_Date( '01/01/1998 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 3500, 3230, 'Gladbeck', 'Roonstr.',  TO_Date( '03/13/2002 02:17:49 PM', 'MM/DD/YYYY HH:MI:SS AM'))
/

INSERT INTO ANGESTELLTE
VALUES (
13, 3, 'Fehlt noch', 'Ingenieur', 'Baer', 'Susanne', 'w',  sysdate,  4800, 1500, 'Dortmund', 'Prellerstr.', NULL)
/

INSERT INTO ANGESTELLTE
VALUES (
27, 3, 'Fehlt noch', 'Schreibkraft', 'Budar', 'Hermann', 'm',  TO_Date( '01/01/1996 12:00:00 AM', 'MM/DD/YYYY HH:MI:SS AM')
, 2800, 1500, 'Dortmund', 'Planckstr.', NULL)
/

commit
/






PROMPT INSERT INTO 'KUNDEN'
INSERT INTO kunden
VALUES
(1,'Tholler', 'Andreas', 'm', 'K�ln', 'Belaweg', '0221/956788', sysdate)
/

INSERT INTO kunden
VALUES
(2,'Falk', 'Bernhardt', 'm', 'K�ln', 'Auf dem H�gel', '0221/2345690', sysdate)
/

INSERT INTO kunden
VALUES
(3,'M�ller', 'Tobias', 'm', 'K�ln', 'Bennstr', '0221/5566123', sysdate)
/

INSERT INTO kunden
VALUES
(4,'Franz', 'Helga', 'w', 'K�ln', 'Bahnhofstr.', '0221/5566901', sysdate)
/

INSERT INTO kunden
VALUES
(5,'S�ndbald', 'Hannelore', 'w', 'Gummersbach', 'Luisenstr', '02261/4588', sysdate)
/

INSERT INTO kunden
VALUES
(6,'Wal', 'Birgit', 'w', 'Gummersbach', 'L�h', '02261/4471', sysdate)
/

INSERT INTO kunden
VALUES
(7,'Tisch', 'Hartmut', 'm', 'Gladbeck', 'Agathastr.', '02271/75613', sysdate)
/

PROMPT INSERT INTO lieferanten
INSERT INTO lieferanten
VALUES
(1, 'West-Ost-Handel', 'K�ln', 'Eibenweg', '0221/985688', sysdate)
/

INSERT INTO lieferanten
VALUES
(2, 'IMPORT-Wendel', 'Dortmund', 'K�lner Str.', '0221/76499', sysdate)
/

INSERT INTO lieferanten
VALUES
(3, 'Quarks', 'Gummersbach', 'M�hle', '02261/6711', sysdate)
/
INSERT INTO lieferanten
VALUES
(4, 'Wahle', 'Remscheid', 'Lenneperstr.', NULL, sysdate)
/

PROMPT INSERT INTO lager
INSERT INTO lager
VALUES
(1, 'Hauptlager', 'K�ln', 'Eibenweg')
/


INSERT INTO lager
VALUES
(2, 'Nebenlager', 'Gummersbach', 'Am Sandberg')
/


INSERT INTO lager
VALUES
(3, 'Verladelager', 'Dortmund', 'Hansastr.')
/

ALTER TABLE Teile DROP CONSTRAINT bestand;
/

PROMPT INSERT INTO teile
INSERT INTO teile
VALUES
(1,'St�ck','Rocky Mountain Element Race', 'Artikel',
 2600,0, 20, 10, 20, 20, 2, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(2,'St�ck','Rahmen Element Race', 'Baugruppe',
 300,0, 20, 10, 10, 10, 1, 0, 0, sysdate)
/
INSERT INTO teile
VALUES
(3,'kg','Silberfarbe', 'Material',
 0,2, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(4,'kg','Sintermetall', 'Material',
 0,5, 20, 10, 10, 10, 1, 0, 0, sysdate)
/


INSERT INTO teile
VALUES
(5,'St�ck','Gabel SID XC', 'Material',
 0,1230, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(24,'St�ck','Tretlager Race Face', 'Material',
 0,18, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(7,'St�ck','Kurbelsatz Race Face', 'Material',
 0,18, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(8,'St�ck','Schaltwerk XTR', 'Material',
 0,150, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(9,'St�ck','Pedale Shimano 747', 'Material',
 0,5, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(10,'St�ck','Schalthebel Grip Shift', 'Material',
 0,79, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(11,'St�ck','Rad xtr', 'Baugruppe',
 50,0, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(12,'St�ck','Naben Mavic Crossmax', 'Material',
0, 0.50 , 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(13,'St�ck','Felgen Mavic Crossmax', 'Material',
0, 0.60 , 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(14,'St�ck','Speichen Mavic Crossmax', 'Material',
 0, 0.50 , 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(15,'St�ck','Bereifung Richtey, Vo: Z-Max ', 'Material',
 0, 22, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(16,'St�ck','Steuersatz Chris King', 'Material',
0, 28, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(17,'St�ck','Vorbau Control Tech', 'Material',
0, 28, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(18,'St�ck','Lenker Answer Hyperlite', 'Material',
0, 109, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(19,'St�ck','Griffe LGrip Shift ', 'Material',
0, 10, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(20,'St�ck','Bremshebel XTR', 'Material',
0, 11, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(21,'St�ck','Bremsen XTR', 'Material',
0, 110, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(22,'St�ck','Sattel Flite', 'Material',
0, 60, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(28,'St�ck','Bremse Shimano Alivio Cantilever ', 'Material',
0, 29, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(23,'St�ck','Sattelst�tze Syncros', 'Material',
0, 28, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

/* fehlt von 25 bis 30 */
INSERT INTO teile
VALUES
(25,'St�ck','Bremse Shimano XTR V-Brake ', 'Material',
0, 149, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(26,'St�ck','GABEL TOP GUN ', 'Material',
0, 299, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(27,'St�ck','Shimano STX-RC i', 'Material',
 0,69, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(29,'St�ck','Rahmen Cannondale CAD3 Headshok', 'Material',
 0,1590, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(30,'St�ck','Rahmen Super V', 'Material',
 0,2590, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(31,'St�ck','Herrenrad GT-LTS 18', 'Artikel',
 3000,0, 20, 10, 20, 20, 2, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(32,'St�ck','Rahmen GT-LTS 18"', 'Baugruppe',
 300,0, 20, 10, 10, 10, 1, 0, 0, sysdate)
/
INSERT INTO teile
VALUES
(33,'kg','Vb-Farbe', 'Material',
 0,2, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(34,'kg','Aluminium', 'Material',
 0,8, 20, 10, 10, 10, 1, 0, 0, sysdate)
/


INSERT INTO teile
VALUES
(35,'St�ck','RST Hi-5', 'Material',
 0,30, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(36,'St�ck','Race Face (TITAN)', 'Material',
 0,18, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(37,'St�ck','Kurbelsatz Ritchey Logic', 'Material',
 0,19, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(38,'St�ck','Schaltwerk XTR inverse', 'Material',
 0,252, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(39,'St�ck','Pedale XT', 'Material',
 0,9, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(40,'St�ck','Schalthebel Grip Shift 4', 'Material',
 0,9, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(41,'St�ck','Rad XTR 47', 'Baugruppe',
 60,0, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(42,'St�ck','Naben Inferno', 'Material',
 0, 0.50 , 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(43,'St�ck','Felgen Inferno', 'Material',
 0, 0.60 , 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(44,'St�ck','Speichen Mavic Crossmax', 'Material',
 0, 0.50 , 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(45,'St�ck','Bereifung Continental ', 'Material',
0,  22, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(46,'St�ck','Steuersatz Race Face', 'Material',
 0, 28, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(47,'St�ck','Vorbau Syncros', 'Material',
 0, 70, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(48,'St�ck','Lenker Syncros (Downhill)', 'Material',
 0, 140, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(49,'St�ck','Griffe LGrip Shift ', 'Material',
 0, 10, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(50,'St�ck','Bremshebel TWP G-Force', 'Material',
 0, 17, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(51,'St�ck','Bremsen Magura Race Line', 'Material',
 0, 150, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(52,'St�ck','Sattel Selle Flite Titanium', 'Material',
 0, 80, 20, 10, 10, 10, 1, 0, 0, sysdate)
/


INSERT INTO teile
VALUES
(53,'St�ck','Sattelst�tze XTR', 'Material',
0,  30, 20, 10, 10, 10, 1, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(54,'St�ck','Klapprad Prompton P3', 'Artikel',
0, 1200, 20, 10, 10, 10, 0, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(55,'St�ck','CANNONDALE FSL', 'Artikel',
0, 4200, 20, 10, 10, 10, 0, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(56,'St�ck','HERCULES NEPAL', 'Artikel',
0, 1200, 20, 10, 10, 10, 0, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(57,'St�ck','Steppenwolf TAO', 'Artikel',
0, 1600, 20, 10, 10, 10, 0, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(58,'St�ck','SWITCHBACK AGENT', 'Artikel',
0, 599, 20, 10, 10, 10, 0, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(59,'St�ck','STEVENS R.P.R.2 RX100 8FACH', 'Artikel',
0, 1700, 20, 10, 10, 10, 0, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(60,'St�ck','Scott ATACAMA TOUR', 'Artikel',
0, 1899, 20, 10, 10, 10, 0, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(61,'St�ck','ROTWILD RCC-03', 'Artikel',
0, 3280, 20, 10, 10, 10, 0, 0, 0, sysdate)
/

INSERT INTO teile
VALUES
(62,'St�ck','Lenker', 'Baugruppe',
0, 280, 20, 10, 10, 10, 0, 0, 0, sysdate)
/
PROMPT INSERT INTO Artikel
INSERT INTO artikel
VALUES
(1, 'Rocky Mountain Element Race Typ 1' , 'Mountainbike', 3500, 200, sysdate)
/
INSERT INTO artikel
VALUES
(31, 'Herrenrad GT-LTS 18' , 'Rennrad', 3500, 400, sysdate)
/
INSERT INTO artikel
VALUES
(54, 'Klapprad Prompton P3' , 'Klapprad', 1600, 180, sysdate)
/

INSERT INTO artikel
VALUES
(55, 'CANNONDALE FSL' , 'Mountainbike', 3700, 80, sysdate)
/

INSERT INTO artikel
VALUES
(56, 'HERCULES NEPA' , 'Trekkingrad', 1700, 80, sysdate)
/

INSERT INTO artikel
VALUES
(57, 'Steppenwolf TAO' , 'Mountainbike', 1900, 80, sysdate)
/

INSERT INTO artikel
VALUES
(58, 'SWITCHBACK AGENT' , 'Jugendrad', 899, 80, sysdate)
/

INSERT INTO artikel
VALUES
(59, 'STEVENS R.P.R.2 RX100 8FACH' , 'Rennmaschine', 1800, 80, sysdate)
/

INSERT INTO artikel
VALUES
(60, 'Scott ATACAMA TOUR' , 'Crossrad', 2399, 80, sysdate)
/

INSERT INTO artikel
VALUES
(61, 'ROTWILD RCC-03' , 'Mountainbike', 3499, 80, sysdate)
/

PROMPT INSERT INTO struktur

INSERT INTO struktur
VALUES
(1, 2, 1, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(2, 3, 2, 10, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(2, 4, 3, 20, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(1, 5, 4, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(1, 24, 5, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(1, 7, 6, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(1, 8, 7, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(1, 9, 8, 2, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(1, 10, 9, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(1, 11, 10, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(1, 16, 11, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(1, 17, 12, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(1, 18, 13, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(1, 19, 14, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(1, 20, 15, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(1, 21, 16, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(1, 22, 17, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(1, 23, 18, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(11, 12, 1, 50, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(11, 13, 2, 50, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(11, 14, 3, 50, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(11, 15, 4, 2, 0, 0, sysdate)
/



INSERT INTO struktur
VALUES
(31, 32, 1, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(32, 33, 2, 10, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(32, 34, 3, 20, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(31, 35, 4, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(31, 44, 5, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(31, 37, 6, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(31, 38, 7, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(31, 39, 8, 2, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(31, 40, 9, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(31, 41, 10, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(31, 46, 11, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(31, 47, 12, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(31, 48, 13, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(31, 49, 14, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(31, 50, 15, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(31, 51, 16, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(31, 52, 17, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(31, 53, 18, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(41, 42, 1, 50, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(41, 43, 2, 50, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(41, 44, 3, 50, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(41, 45, 4, 2, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(60, 2, 1, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(60, 41, 1, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(60, 62, 1, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(62, 49, 1, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(62, 40, 1, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(40, 34, 1, 1, 0, 0, sysdate)
/

INSERT INTO struktur
VALUES
(40, 3, 1, 1, 0, 0, sysdate)
/

PROMPT INSERT INTO auftraege
INSERT INTO auftraege
VALUES
(1, 'Auftrag', 1, 3, 0, sysdate, sysdate + 30, sysdate + 60, sysdate)
/

INSERT INTO auftraege
VALUES
(2, 'Auftrag', 2, 12, 0, sysdate, sysdate + 20, sysdate + 40, sysdate)
/

INSERT INTO auftraege
VALUES
(3, 'Angebot', 5, 12, 0, sysdate, sysdate + 20, sysdate + 40, sysdate)
/


INSERT INTO auftraege
VALUES
(4, 'Auftrag', 2, 13, 0, sysdate, sysdate + 20, sysdate + 40, sysdate)
/

INSERT INTO auftraege
VALUES
(5, 'Angebot', 3, 27, 0, sysdate, sysdate + 20, sysdate + 40, sysdate)
/

INSERT INTO auftraege
VALUES
(6, 'Auftrag', 2, 3, 0, sysdate, sysdate + 20, sysdate + 40, sysdate)
/

PROMPT insert into auftragspositione

INSERT into auftragspositionen
VALUES
(1, 1,1)
/

INSERT into auftragspositionen
VALUES
(31, 1,2)
/

INSERT into auftragspositionen
VALUES
(31, 2,2)
/

INSERT into auftragspositionen
VALUES
(60, 2,1)
/

INSERT into auftragspositionen
VALUES
(57, 2,1)
/

INSERT into auftragspositionen
VALUES
(31, 3,10)
/

INSERT into auftragspositionen
VALUES
(55, 3,1)
/

INSERT into auftragspositionen
VALUES
(58, 4,1)
/

INSERT into auftragspositionen
VALUES
(58, 5,18)
/

INSERT into auftragspositionen
VALUES
(56, 5,1)
/

INSERT into auftragspositionen
VALUES
(57, 5,12)
/

INSERT into auftragspositionen
VALUES
(1, 6,120)
/

INSERT into auftragspositionen
VALUES
(31, 6,130)
/

PROMPT INSERT INTO lagerbestand
INSERT INTO lagerbestand
VALUES
(1, 1, 2000, sysdate)
/

INSERT INTO lagerbestand
VALUES
(1, 31, 2000, sysdate)
/


INSERT INTO lagerbestand
VALUES
(1, 57, 1000, sysdate)
/

INSERT INTO lagerbestand
VALUES
(1, 58, 899, sysdate)
/


INSERT INTO lagerbestand
VALUES
(2,55, 2000, sysdate)
/

INSERT INTO lagerbestand
VALUES
(2, 56, 2000, sysdate)
/


INSERT INTO lagerbestand
VALUES
(2, 57, 1000, sysdate)
/

INSERT INTO lagerbestand
VALUES
(2, 58, 899, sysdate)
/

INSERT INTO lagerbestand
VALUES
(3,1, 2000, sysdate)
/

INSERT INTO lagerbestand
VALUES
(3, 31, 2000, sysdate)
/


INSERT INTO lagerbestand
VALUES
(3, 54, 1000, sysdate)
/

INSERT INTO lagerbestand
VALUES
(3, 60, 899, sysdate)
/
INSERT INTO lagerbestand
VALUES
(3, 61, 1000, sysdate)
/

INSERT INTO lagerbestand
VALUES
(3, 58, 899, sysdate)
/

INSERT INTO lagerbestand
VALUES
(2,1, 4000, sysdate)
/

PROMPT INSERT INTO werke
INSERT INTO werke
VALUES
(1, 'Montagewerk', 'Gladbeck', 'Adlerstr.')
/

INSERT INTO werke
VALUES
(2, 'Vorfertigung', 'Gladbeck', 'Am Pferdekamp')
/

PROMPT INSERT INTO teile_werke
INSERT INTO teile_werke
VALUES
(2, 1)
/


INSERT INTO teile_werke
VALUES
(11, 1)
/

INSERT INTO teile_werke
VALUES
(32, 1)
/

INSERT INTO teile_werke
VALUES
(41, 1)
/

INSERT INTO teile_werke
VALUES
(2,2)
/

INSERT INTO teile_werke
VALUES
(41, 2)
/


PROMPT INSERT INTO lieferprogramm
INSERT INTO lieferprogramme
Select
l.lief_nr,
t.TNR,
t.TNR * l.lief_NR +1,
t.Einkaufspreis ,
t.tnr + lief_nr ,
t.zeitstempel + 1
from teile t, lieferanten l
Where typ = 'Material' and lief_nr = 2;

INSERT INTO lieferprogramme
Select
l.lief_nr,
t.TNR,
t.TNR * l.lief_NR +17,
t.Einkaufspreis +10,
abs(t.tnr + lief_nr -20),
t.zeitstempel + 1
from teile t, lieferanten l
Where typ = 'Material' and lief_nr = 1
AND tnr <25
/


INSERT INTO lieferprogramme
Select
l.lief_nr,
t.TNR,
t.TNR * l.lief_NR *l.lief_Nr,
t.Einkaufspreis * 1.1,
abs(2 * t.tnr + lief_nr -10),
t.zeitstempel + 2
from teile t, lieferanten l
Where typ = 'Material' and lief_nr = 3
AND tnr > 30
/


PROMPT INSERT INTO lieferungen

INSERT INTO lieferungen
SELECT
liefer_nr.nextval, lief_nr, TNR , zeitstempel + 54 -lief_nr , lief_nr, sysdate + tnr
from lieferprogramme
WHERE (TNR > 10 OR TNR > 30) AND lIEf_NR < 3
/

INSERT INTO Orte (Ort, Strasse)
SELECT DISTINCT Ort, Strasse FROM Kunden
WHERE Ort NOT IN (SELECT Ort FROM Orte)
/

INSERT INTO Orte (Ort, Strasse)
SELECT DISTINCT Ort, Strasse FROM Angestellte
WHERE Ort NOT IN (SELECT Ort FROM Orte)
/

UPDATE teile
SET bestand = (SELECT SUM(BESTAND) FROM Lagerbestand
                        WHERE teile.TNR = Lagerbestand.TNr)
WHERE  TNr in (SELECT TNr FROM Lagerbestand);
/

UPDATE teile
set Mindestbestand = 10;
/
