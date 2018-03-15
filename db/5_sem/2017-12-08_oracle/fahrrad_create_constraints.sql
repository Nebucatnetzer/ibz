--
-- Aufgabe Fahrrad
--
-- Erzeugt Primärschlüssel, Fremdschlüssel und andere CONSTRAINTS

PROMPT Creating Primary Key 'Primärschlüssel'

PROMPT Creating Primary Key on 'Abteilungen'
ALTER TABLE Abteilungen
 ADD CONSTRAINT ABT_PK PRIMARY KEY
  (Abt_Nr)
/

PROMPT Creating Primary Key on 'Angestellte'
ALTER TABLE Angestellte
 ADD CONSTRAINT ANG_PK PRIMARY KEY
  (Ang_Nr)
/

PROMPT Creating Primary Key on 'Artikel'
ALTER TABLE Artikel
 ADD CONSTRAINT AR_PK PRIMARY KEY
  (TNr)
/

PROMPT Creating Primary Key on 'Auftraege'
ALTER TABLE Auftraege
 ADD CONSTRAINT AU_PK PRIMARY KEY
  (AuftragsNr)
/

PROMPT Creating Primary Key on 'Auftragspositionen'
ALTER TABLE Auftragspositionen
 ADD CONSTRAINT AR_AU_PK PRIMARY KEY
  (TNr
  ,AuftragsNr)
/


PROMPT Creating Primary Key on 'GEH_KLASSEN'
ALTER TABLE GEH_KLASSEN
 ADD CONSTRAINT G_PK PRIMARY KEY
  (GEH_KLASSE)
/

PROMPT Creating Primary Key on 'KUNDEN'
ALTER TABLE KUNDEN
 ADD CONSTRAINT KUN_PK PRIMARY KEY
  (Kun_Nr)
/

PROMPT Creating Primary Key on 'Lager'
ALTER TABLE Lager
 ADD CONSTRAINT LAG_PK PRIMARY KEY
  (LaNr)
/

PROMPT Creating Primary Key on 'Lagerbestand'
ALTER TABLE Lagerbestand
 ADD CONSTRAINT LAG_T_PK PRIMARY KEY
  (LaNr
  ,TNr)
/

PROMPT Creating Primary Key on 'Lieferanten'
ALTER TABLE Lieferanten
 ADD CONSTRAINT LIEF_PK PRIMARY KEY
  (Lief_Nr)
/

PROMPT Creating Primary Key on 'Lieferungen'
ALTER TABLE Lieferungen
 ADD CONSTRAINT LG_PK PRIMARY KEY
  (Liefer_Nr
  ,Lief_Nr
  ,TNr)
/


PROMPT Creating Primary Key on 'Lieferprogramme'
ALTER TABLE Lieferprogramme
 ADD CONSTRAINT LP_PK PRIMARY KEY
  (Lief_Nr
  ,TNr)
/

PROMPT Creating Primary Key on 'Orte'
ALTER TABLE Orte
 ADD CONSTRAINT O_PK PRIMARY KEY
  (Ort
  ,Strasse)
/

PROMPT Creating Primary Key on 'Struktur'
ALTER TABLE Struktur
 ADD CONSTRAINT S_PK PRIMARY KEY
  (OTeil
  ,UTeil
  ,POSITION)
/


PROMPT Creating Primary Key on 'Teile'
ALTER TABLE Teile
 ADD CONSTRAINT TE_PK PRIMARY KEY
  (TNr)
/

  PROMPT Creating Primary Key on 'Teile_Werke'
ALTER TABLE Teile_Werke
 ADD CONSTRAINT T_WE_PK PRIMARY KEY
  (TNr
  ,WNr)
/

PROMPT Creating Primary Key on 'Werke'
ALTER TABLE Werke
 ADD CONSTRAINT WE_PK PRIMARY KEY
  (WNr)
/


PROMPT Creating Foreign Keys on 'Angestellte'
ALTER TABLE Angestellte ADD CONSTRAINT
 ANG_ABT_FK FOREIGN KEY
  (Abt_Nr) REFERENCES Abteilungen
  (Abt_Nr)
/

PROMPT Creating Foreign Keys on 'Artikel'
ALTER TABLE Artikel ADD CONSTRAINT
 AR_T_FK FOREIGN KEY
  (TNr) REFERENCES Teile
  (TNr)
/

PROMPT Creating Foreign Keys on 'Auftraege'
ALTER TABLE Auftraege ADD CONSTRAINT
 AU_KUN_FK FOREIGN KEY
  (Kun_Nr) REFERENCES KUNDEN
  (Kun_Nr) ADD CONSTRAINT
 AU_ANG_FK FOREIGN KEY
  (Ang_Nr) REFERENCES Angestellte
  (Ang_Nr)
/

PROMPT Creating Foreign Keys on 'Auftragspositionen'
ALTER TABLE Auftragspositionen ADD CONSTRAINT
 AR_AU_AR_FK FOREIGN KEY
  (TNr) REFERENCES Artikel
  (TNr) ADD CONSTRAINT
 AR_AU_AU_FK FOREIGN KEY
  (AuftragsNr) REFERENCES Auftraege
  (AuftragsNr)
/

PROMPT Creating Foreign Keys on 'Lagerbestand'
ALTER TABLE Lagerbestand ADD CONSTRAINT
 LAG_T_LAG_FK FOREIGN KEY
  (LaNr) REFERENCES Lager
  (LaNr) ADD CONSTRAINT
 LAG_T_T_FK FOREIGN KEY
  (TNr) REFERENCES Teile
  (TNr)
/

PROMPT Creating Foreign Keys on 'Lieferprogramme'
ALTER TABLE Lieferprogramme ADD CONSTRAINT
 LP_LIEF_FK FOREIGN KEY
  (Lief_Nr) REFERENCES Lieferanten
  (Lief_Nr) ADD CONSTRAINT
 LP_T_FK FOREIGN KEY
  (TNr) REFERENCES Teile
  (TNr)
/

PROMPT Creating Foreign Keys on 'Lieferungen'
ALTER TABLE Lieferungen ADD CONSTRAINT
 LG_LIEF_FK FOREIGN KEY
  (Lief_Nr) REFERENCES Lieferanten
  (Lief_Nr) ADD CONSTRAINT
 LG_T_FK FOREIGN KEY
  (TNr) REFERENCES Teile
  (TNr)
/

PROMPT Creating Foreign Keys on 'Struktur'
ALTER TABLE Struktur ADD CONSTRAINT
 S_T_FK2 FOREIGN KEY
  (UTeil) REFERENCES Teile
  (TNr) ADD CONSTRAINT
 S_T_FK FOREIGN KEY
  (OTeil) REFERENCES Teile
  (TNr)
/

PROMPT Creating Foreign Keys on 'Teile_Werke'
ALTER TABLE Teile_Werke ADD CONSTRAINT
 T_WE_T_FK FOREIGN KEY
  (TNr) REFERENCES Teile
  (TNr) ADD CONSTRAINT
 T_WE_WE_FK FOREIGN KEY
  (WNR) REFERENCES Werke
  (WNR)
/

PROMPT Creating verschiedene CHECK-CONSTRAINTS
ALTER TABLE Auftraege ADD CONSTRAINT
Auftrags_Typ CHECK(Auftrags_Typ IN ('Angebot', 'Anfrage', 'Auftrag'))
/
ALTER TABLE Auftraege ADD CONSTRAINT
Datum CHECK(Bestelldatum <= Lieferdatum)
/
ALTER TABLE Angestellte ADD CONSTRAINT
Geschlecht CHECK( Geschlecht IN ('w', 'm'))
/
ALTER TABLE Teile ADD CONSTRAINT
Typ CHECK( Typ IN ('Artikel', 'Baugruppe', 'Material'))
/
ALTER TABLE Teile ADD CONSTRAINT
Bestand CHECK( Bestand >= Mindestbestand)
/
