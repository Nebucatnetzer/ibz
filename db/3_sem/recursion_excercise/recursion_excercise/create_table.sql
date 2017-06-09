-- Dateiname create_table.sql
--
-- Beschreibung: recursion excercise
--
-- Autor: Andreas Zweili
-- Datum: 2017-05-28
-- Server Version: SQL Server 2016

use bike_shop
if not exists (select * from sysobjects where name='teile')
    CREATE TABLE teile(
    TNr int not null,
    Me varchar(10),
    Bezeichnung varchar(50),
    Typ varchar(50),
    Herstellkosten float,
    Einkaufspreis float,
    Mindestbestand int,
    Bestand int,
    Lieferzeit int,
    Herstelldauer int,
    Gewicht int,
    Reserviert int,
    Verfügbar int,
    Zeitstempel DATE,
    constraint PK_TNr primary key (TNr)
    );

use bike_shop
if not exists (select * from sysobjects where name='struktur')
    CREATE TABLE struktur(
    OTeil int,
    UTeil int,
    Position int not null,
    Menge int,
    Ausschuss int,
    Arbeitsgang int,
    Zeitstempel DATE,
    constraint PK_POS primary key (OTeil, UTeil, Position)
    );

-- Foreign Key Constraints hinzufügen
IF OBJECT_ID('dbo.[FK_OTeil]', 'O') IS NULL
    ALTER TABLE struktur ADD CONSTRAINT FK_OTeil
        FOREIGN KEY (OTeil) REFERENCES teile (TNr);
go

-- Foreign Key Constraints hinzufügen
IF OBJECT_ID('dbo.[FK_UTeil]', 'U') IS NULL
    ALTER TABLE struktur ADD CONSTRAINT FK_UTeil
        FOREIGN KEY (UTeil) REFERENCES teile (TNr);
go
