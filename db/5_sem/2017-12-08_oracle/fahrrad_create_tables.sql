--
-- Aufgabe Fahrrad
--
-- Diese Datei erzeugt alle beteiligten Tabellen und Views

Prompt Creating TABLE 'Abteilungen'
CREATE TABLE Abteilungen
(Abt_Nr 		NUMBER(38) NOT NULL,
Leiter 			NUMBER(38) NOT NULL,
Name 			VARCHAR2(50) NOT NULL,
Ort 				VARCHAR2(50)
 )
/
Prompt Creating TABLE 'Angestellte'
CREATE TABLE Angestellte
(Ang_Nr 		NUMBER(38) NOT NULL,
Abt_Nr 			NUMBER(38) NOT NULL,
Aufgabenbeschreibung 	VARCHAR2(50) NOT NULL,
Beruf 			VARCHAR2(50) NOT NULL,
Nachname 		VARCHAR2(50) NOT NULL,
Vorname 		VARCHAR2(50) NOT NULL,
Geschlecht 		CHAR(1) NOT NULL,
Eintrittsdatum 		DATE,
Gehalt 			NUMBER(9,2) Default 0,
Abzuege 		NUMBER(9,2) Default 0,
Ort 				VARCHAR2(50),
Strasse 			VARCHAR2(50),
Zeitstempel 		DATE
 )
/


Prompt Creating TABLE 'Artikel'
CREATE TABLE Artikel
(TNr 			NUMBER(38) NOT NULL,
Bezeichnung 		VARCHAR2(50) NOT NULL,
Artikel_Typ 		VARCHAR2(50) NOT NULL,
Verkaufspreis 		NUMBER,
Jahresumsatz 		NUMBER,
Zeitstempel 		DATE
 )
/

Prompt Creating TABLE 'Auftraege'
CREATE TABLE Auftraege
(AuftragsNr 		NUMBER(38) NOT NULL,
Auftrags_Typ 		VARCHAR2(50) NOT NULL,
Kun_Nr 			NUMBER(38) NOT NULL,
Ang_Nr 			NUMBER(38),
Bereits_Gezahlt 	NUMBER,
Bestelldatum 		DATE,
Lieferdatum 		DATE,
Rechnungsdatum 		DATE,
Zeitstempel 		DATE NOT NULL
 )
/

Prompt Creating TABLE 'Auftragspositionen'
CREATE TABLE Auftragspositionen
(TNr 			NUMBER(38) NOT NULL,
AuftragsNr 		NUMBER(38) NOT NULL,
Menge 			NUMBER
 )
/

Prompt Creating TABLE 'Geh_Klassen'
CREATE TABLE Geh_Klassen
(Geh_Klasse 		NUMBER(38) NOT NULL,
Max_Gehalt 		NUMBER NOT NULL,
Min_Gehalt 		NUMBER NOT NULL
 )
/
Prompt Creating TABLE 'Kunden'
CREATE TABLE Kunden
(Kun_Nr 		NUMBER(38) NOT NULL,
Nachname 		VARCHAR2(50) NOT NULL,
Vorname 		VARCHAR2(50) NOT NULL,
Geschlecht 		VARCHAR2(1),
Ort 				VARCHAR2(50),
Strasse 			VARCHAR2(50),
TelefonNr 		VARCHAR2(50),
Zeitstempel 		DATE
 )
/


Prompt Creating TABLE 'Lager'
CREATE TABLE Lager
(LaNr 			NUMBER(38) NOT NULL,
Bezeichnung 		VARCHAR2(50) NOT NULL,
Ort 			VARCHAR2(50),
Strasse 		VARCHAR2(50)
 )
/

Prompt Creating TABLE 'Lagerbestand'
CREATE TABLE Lagerbestand
(LaNr 			NUMBER(38) NOT NULL,
TNr 			NUMBER(38) NOT NULL,
Bestand 		NUMBER,
Zeitstempel	 	DATE
 )
/

Prompt Creating TABLE 'Lieferanten'
CREATE TABLE Lieferanten
(Lief_Nr 		NUMBER(38) NOT NULL,
Name 			VARCHAR2(50) NOT NULL,
Ort 			VARCHAR2(50) NOT NULL,
Strasse 		VARCHAR2(50) NOT NULL,
TelefonNr 		VARCHAR2(50),
Zeitstempel 		DATE
 )
/

Prompt Creating TABLE 'Lieferprogramme'
CREATE TABLE Lieferprogramme
(Lief_Nr 		NUMBER(38) NOT NULL,
TNr 			NUMBER(38) NOT NULL,
BestellNr 		VARCHAR2(20),
Einkaufspreis 		NUMBER,
Gesamtmenge 		NUMBER,
Zeitstempel 		DATE
 )
/
Prompt Creating TABLE 'Lieferungen'
CREATE TABLE Lieferungen
(Liefer_Nr 		NUMBER(38) NOT NULL,
Lief_Nr 		NUMBER(38) NOT NULL,
TNr 			NUMBER(38) NOT NULL,
Lief_Datum 		DATE NOT NULL,
Menge 			NUMBER DEFAULT 1 NOT NULL,
Zeitstempel 		DATE NOT NULL
 )
/

Prompt Creating TABLE 'Orte'
CREATE TABLE Orte
(Ort 			VARCHAR2(50) 	NOT NULL,
Strasse 		VARCHAR2(50) NOT NULL,
PLZ 			NUMBER(38)
 )
/
Prompt Creating TABLE 'Struktur'
CREATE TABLE Struktur
(OTeil 			NUMBER(38) NOT NULL,
UTeil 			NUMBER(38) NOT NULL,
Position 		NUMBER(38) NOT NULL,
Menge 			NUMBER NOT NULL,
Ausschuss 		NUMBER,
Arbeitsgang 		NUMBER(38),
Zeitstempel 		DATE
 )
/

Prompt Creating TABLE 'Teile'
CREATE TABLE Teile
(TNr 			NUMBER(38) NOT NULL,
Me 			VARCHAR2(10),
Bezeichnung 		VARCHAR2(50),
Typ 			VARCHAR2(50),
Herstellkosten 		NUMBER,
Einkaufspreis 		NUMBER,
Mindestbestand 		NUMBER,
Bestand 		NUMBER,
Lieferzeit 		NUMBER,
Herstelldauer 		NUMBER,
Gewicht 		NUMBER,
Reserviert 		NUMBER,
Verfuegbar 		NUMBER,
Zeitstempel 		DATE
 )
/


Prompt Creating TABLE 'Teile_Werke'
CREATE TABLE Teile_Werke
(TNr 			NUMBER(38) NOT NULL,
WNr 			NUMBER(38) NOT NULL
 )
/


Prompt Creating TABLE 'Werke'
CREATE TABLE Werke
(WNr 			NUMBER(38) NOT NULL,
Bezeichnung 		VARCHAR2(50),
Ort 			VARCHAR2(50) NOT NULL,
Strasse 		VARCHAR2(50) NOT NULL
 )
/

CREATE VIEW Rechnung AS
SELECT
Auftraege.Auftragsnr, Auftraege.Rechnungsdatum,
Kunden.Kun_nr, Kunden.Nachname,
Kunden.Vorname, Kunden.Ort,
Kunden.Strasse,Orte.Plz,
Auftragspositionen.TNr,	Auftragspositionen.Menge,
Artikel.Bezeichnung
FROM Kunden, Auftraege, Auftragspositionen, Orte, Artikel
WHERE Kunden.Kun_Nr = Auftraege.Kun_Nr
AND Auftragspositionen.AuftragsNr = Auftraege.AuftragsNr
AND Kunden.Ort = Orte.Ort
AND Kunden.Strasse = Orte.Strasse
AND Artikel.TNR	= Auftragspositionen.TNr
ORDER BY Auftraege.Auftragsnr
/

CREATE SEQUENCE liefer_nr
INCREMENT BY 1
/
