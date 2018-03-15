--
-- Aufgabe Fahrrad
--
-- Datei generiert Indizes auf der Datenbank

PROMPT Creating Index 'ANG_ABT_FK_I'
CREATE INDEX ANG_ABT_FK_I ON Angestellte
 (Abt_Nr)
/

PROMPT Creating Index 'AR_T_FK_I'
CREATE INDEX AR_T_FK_I ON Artikel
 (TNr)
/


PROMPT Creating Index 'AU_ANG_FK_I'
CREATE INDEX AU_ANG_FK_I ON Auftraege
 (Ang_Nr)
/

PROMPT Creating Index 'AU_KUN_FK_I'
CREATE INDEX AU_KUN_FK_I ON Auftraege
 (Kun_Nr)
/

PROMPT Creating Index 'AR_AU_AR_FK_I'
CREATE INDEX AR_AU_AR_FK_I ON Auftragspositionen
 (TNr)
/

PROMPT Creating Index 'AR_AU_AU_FK_I'
CREATE INDEX AR_AU_AU_FK_I ON Auftragspositionen
 (AuftragsNr)
/

PROMPT Creating Index 'LAG_T_LAG_FK_I'
CREATE INDEX LAG_T_LAG_FK_I ON Lagerbestand
 (LaNr)
/

PROMPT Creating Index 'LAG_T_T_FK_I'
CREATE INDEX LAG_T_T_FK_I ON Lagerbestand
 (TNr)
/

PROMPT Creating Index 'LP_LIEF_FK_I'
CREATE INDEX LP_LIEF_FK_I ON Lieferprogramme
 (Lief_Nr)
/

PROMPT Creating Index 'LP_T_FK_I'
CREATE INDEX LP_T_FK_I ON Lieferprogramme
 (TNr)
/


PROMPT Creating Index 'LG_LIEF_FK_I'
CREATE INDEX LG_LIEF_FK_I ON Lieferungen
 (Lief_Nr)
/

PROMPT Creating Index 'LG_T_FK_I'
CREATE INDEX LG_T_FK_I ON Lieferungen
 (TNr)
/

PROMPT Creating Index 'T_WE_T_FK_I'
CREATE INDEX T_WE_T_FK_I ON Teile_Werke
 (TNr)
/

PROMPT Creating Index 'T_WE_WE_FK_I'
CREATE INDEX T_WE_WE_FK_I ON Teile_Werke
 (WNr)
/
PROMPT Creating Index 'Kunden_I'
CREATE INDEX Kunden_I ON Kunden
 (Vorname, Nachname)
/

PROMPT Creating Index 'Struktur_I'
CREATE INDEX Struktur_I ON Struktur
 (OTeil, UTeil)
/
