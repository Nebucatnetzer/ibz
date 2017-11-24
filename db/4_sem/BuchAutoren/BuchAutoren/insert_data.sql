-- Daten einfügen
use BuchAutorDB;
INSERT INTO buch.tblBuch
    VALUES ('3-89842-141-1', 'SELECT * FROM SQL Server 2000', 49.90);
INSERT INTO buch.tblBuch (ISBN, Titel)
    VALUES ('3-89842-129-5', 'VB.NET');
INSERT INTO buch.tblBuch
    VALUES ('3-89842-662-9', 'Visual C#', NULL);
INSERT INTO buch.tblBuch
    VALUES ( '3-89842-585-X', 'Visual Basic .NET', DEFAULT);
INSERT INTO buch.tblAutor
    VALUES ('Hans Willi', 'Kremer', NULL, NULL);
INSERT INTO buch.tblAutor (Vorname, Nachname)
    VALUES ('Andreas', 'Kühnel');