<<<<<<< HEAD
-- Dateiname zweili_andreas_A1.sql
--
-- Beschreibung: SEP Datenbank 2 Gartencenter
--
-- Autor: Andreas Zweili
-- Datum: 11.03.2017
-- Server Version: SQL Server 2016

-- Tabelle Lieferant erstellen
use Gartencenter
if not exists (select * from sysobjects where name='Lieferant')
	CREATE TABLE Lieferant (
	LFR_CODE int identity(1,1) not null, 
	LFR_NAME varchar(40) null,
	LFR_ADRESSE varchar(40) null,
	LFR_PLZ int null,
	LFR_WOHNORT varchar(40) null
	constraint PK_LFR_CODE primary key (LFR_CODE)
);
go

-- Tabelle Bestellung erstellen
use Gartencenter
if not exists (select * from sysobjects where name='Bestellung')
	CREATE TABLE Bestellung (
	BES_ID int identity(1,1) not null, 
	BES_BESTELLDATUM date not null,
	BES_LIEFERDATUM date not null,
	BES_BETRAG float not null,
        LFR_CODE int not null
	constraint PK_BES_ID primary key (BES_ID)
);
go

-- Tabelle Pflanze erstellen
use Gartencenter
if not exists (select * from sysobjects where name='Pflanze')
	CREATE TABLE Pflanze (
	PFL_ID int identity(1,1) not null, 
	PFL_NAME varchar(40) null,
	PFL_SORTE varchar(40) null,
	PFL_FARBE varchar(40) null,
	PFL_HOEHE float null,
	PFL_BEGIN date null,
	PFL_END date null,
	PFL_PREIS float null
	constraint PK_PFL_ID primary key (PFL_ID)
);
go

-- Tabelle Angebot erstellen
use Gartencenter
if not exists (select * from sysobjects where name='Angebot')
	CREATE TABLE Angebot (
	ANG_ID int identity(1,1) not null, 
	PFL_ID int not null,
	LFR_CODE int not null,
	ANG_PREIS varchar(40) null,
	ANG_LIEFERZEIT int null
	constraint PK_ANG_ID primary key (ANG_ID)
);
go

-- Tabelle Bestelldaten erstellen
use Gartencenter
if not exists (select * from sysobjects where name='Bestelldaten')
	CREATE TABLE Bestelldaten (
	ANG_ID int not null, 
	BES_ID int not null,
	BED_ANZAHL int null,
	BED_EINZELPREIS float null
	constraint PK_BESTELLDATEN primary key (ANG_ID, BES_ID)
);
go


-- Foreign Key Constraints hinzufügen
IF OBJECT_ID('dbo.[FK_LFR_CODE]', 'F') IS NULL 
    ALTER TABLE Bestellung ADD CONSTRAINT FK_LFR_CODE
        FOREIGN KEY (LFR_CODE) REFERENCES Lieferant (LFR_CODE);
go

IF OBJECT_ID('dbo.[FK_PFL_ID]', 'F') IS NULL 
    ALTER TABLE Angebot ADD CONSTRAINT FK_PFL_ID
        FOREIGN KEY (PFL_ID) REFERENCES Pflanze (PFL_ID);
go

IF OBJECT_ID('dbo.[FK_LFR_CODE_ANGEBOT]', 'F') IS NULL 
    ALTER TABLE Angebot ADD CONSTRAINT FK_LFR_CODE_ANGEBOT
        FOREIGN KEY (LFR_CODE) REFERENCES Lieferant (LFR_CODE);
go

IF OBJECT_ID('dbo.[FK_BESTELLUNG_ANGEBOT]', 'F') IS NULL 
	ALTER TABLE Bestelldaten ADD CONSTRAINT FK_BESTELLUNG_ANGEBOT
		FOREIGN KEY (ANG_ID) REFERENCES Angebot(ANG_ID),
		FOREIGN KEY (BES_ID) REFERENCES Bestellung(BES_ID);
go

-- Check Constraints on Pflanze
IF OBJECT_ID('dbo.[C_PFL_PREIS]', 'C') IS NULL 
    ALTER TABLE Pflanze ADD CONSTRAINT C_PFL_PREIS
        CHECK (Pflanze.PFL_PREIS > 0.0);
go

IF OBJECT_ID('dbo.[C_PFL_END]', 'C') IS NULL 
    ALTER TABLE Pflanze ADD CONSTRAINT C_PFL_END
        CHECK (Pflanze.PFL_BEGIN < Pflanze.PFL_END);
go

-- Check Constraint on Bestellung

IF OBJECT_ID('dbo.[C_BES_LIEFERDATUM]', 'C') IS NULL 
    ALTER TABLE Bestellung ADD CONSTRAINT C_BES_LIEFERDATUM
        CHECK (Bestellung.BES_LIEFERDATUM > CURRENT_TIMESTAMP)
go
=======
-- Dateiname zweili_andreas_A1.sql
--
-- Beschreibung: SEP Datenbank 2 Gartencenter
--
-- Autor: Andreas Zweili
-- Datum: 11.03.2017
-- Server Version: SQL Server 2016

-- Tabelle Lieferant erstellen
use Gartencenter
if not exists (select * from sysobjects where name='Lieferant')
	CREATE TABLE Lieferant (
	LFR_CODE int identity(1,1) not null, 
	LFR_NAME varchar(40) null,
	LFR_ADRESSE varchar(40) null,
	LFR_PLZ int null,
	LFR_WOHNORT varchar(40) null
	constraint PK_LFR_CODE primary key (LFR_CODE)
);
go

-- Tabelle Bestellung erstellen
use Gartencenter
if not exists (select * from sysobjects where name='Bestellung')
	CREATE TABLE Bestellung (
	BES_ID int identity(1,1) not null, 
	BES_BESTELLDATUM date not null,
	BES_LIEFERDATUM date not null,
	BES_BETRAG float not null,
        LFR_CODE int not null
	constraint PK_BES_ID primary key (BES_ID)
);
go

-- Tabelle Pflanze erstellen
use Gartencenter
if not exists (select * from sysobjects where name='Pflanze')
	CREATE TABLE Pflanze (
	PFL_ID int identity(1,1) not null, 
	PFL_NAME varchar(40) null,
	PFL_SORTE varchar(40) null,
	PFL_FARBE varchar(40) null,
	PFL_HOEHE float null,
	PFL_BEGIN date null,
	PFL_END date null,
	PFL_PREIS float null
	constraint PK_PFL_ID primary key (PFL_ID)
);
go

-- Tabelle Angebot erstellen
use Gartencenter
if not exists (select * from sysobjects where name='Angebot')
	CREATE TABLE Angebot (
	ANG_ID int identity(1,1) not null, 
	PFL_ID int not null,
	LFR_CODE int not null,
	ANG_PREIS varchar(40) null,
	ANG_LIEFERZEIT int null
	constraint PK_ANG_ID primary key (ANG_ID)
);
go

-- Tabelle Bestelldaten erstellen
use Gartencenter
if not exists (select * from sysobjects where name='Bestelldaten')
	CREATE TABLE Bestelldaten (
	ANG_ID int not null, 
	BES_ID int not null,
	BED_ANZAHL int null,
	BED_EINZELPREIS float null
	constraint PK_BESTELLDATEN primary key (ANG_ID, BES_ID)
);
go


-- Foreign Key Constraints hinzufügen
IF OBJECT_ID('dbo.[FK_LFR_CODE]', 'F') IS NULL 
    ALTER TABLE Bestellung ADD CONSTRAINT FK_LFR_CODE
        FOREIGN KEY (LFR_CODE) REFERENCES Lieferant (LFR_CODE);
go

IF OBJECT_ID('dbo.[FK_PFL_ID]', 'F') IS NULL 
    ALTER TABLE Angebot ADD CONSTRAINT FK_PFL_ID
        FOREIGN KEY (PFL_ID) REFERENCES Pflanze (PFL_ID);
go

IF OBJECT_ID('dbo.[FK_LFR_CODE_ANGEBOT]', 'F') IS NULL 
    ALTER TABLE Angebot ADD CONSTRAINT FK_LFR_CODE_ANGEBOT
        FOREIGN KEY (LFR_CODE) REFERENCES Lieferant (LFR_CODE);
go

IF OBJECT_ID('dbo.[FK_BESTELLUNG_ANGEBOT]', 'F') IS NULL 
	ALTER TABLE Bestelldaten ADD CONSTRAINT FK_BESTELLUNG_ANGEBOT
		FOREIGN KEY (ANG_ID) REFERENCES Angebot(ANG_ID),
		FOREIGN KEY (BES_ID) REFERENCES Bestellung(BES_ID);
go

-- Check Constraints on Pflanze
IF OBJECT_ID('dbo.[C_PFL_PREIS]', 'C') IS NULL 
    ALTER TABLE Pflanze ADD CONSTRAINT C_PFL_PREIS
        CHECK (Pflanze.PFL_PREIS > 0.0);
go

IF OBJECT_ID('dbo.[C_PFL_END]', 'C') IS NULL 
    ALTER TABLE Pflanze ADD CONSTRAINT C_PFL_END
        CHECK (Pflanze.PFL_BEGIN < Pflanze.PFL_END);
go

-- Check Constraint on Bestellung

IF OBJECT_ID('dbo.[C_BES_LIEFERDATUM]', 'C') IS NULL 
    ALTER TABLE Bestellung ADD CONSTRAINT C_BES_LIEFERDATUM
        CHECK (Bestellung.BES_LIEFERDATUM > CURRENT_TIMESTAMP)
go
>>>>>>> 91c37e0a13ad9148d1d6356ee6197441ad0a42e5
