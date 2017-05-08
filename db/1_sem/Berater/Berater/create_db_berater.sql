<<<<<<< HEAD
-- IBZ 2. Schultag
--
-- Berater Datenbank
-------------------------------------------

-- Datenbank BeraterDB anw�hlen
use Berater
go

-- Tabelle Kunde erstellen
CREATE TABLE KUNDE 
(
	KUNDENNR		INTEGER			NOT NULL,
	KUNDENNAME		VARCHAR(50)		NULL,
	VORNAME			VARCHAR(50)		NULL,
	CONSTRAINT PK_KUNDE PRIMARY KEY (KUNDENNR)
);
go

-- Tabelle Aufgabe erstellen
CREATE TABLE AUFGABE
(
	AUFGABEID	INTEGER		NOT NULL,
	AUFGABE		VARCHAR(50)	NULL
	CONSTRAINT PK_AUFGABE PRIMARY KEY (AUFGABEID)
);
go

-- Tabelle Berater erstellen
CREATE TABLE BERATER
(
	BERATERID	INTEGER		NOT NULL,
	AUFGABEID	INTEGER		NOT NULL,
	BERATERNAME	VARCHAR(50),
	STUNDENLOHN	FLOAT,
	CONSTRAINT PK_BERATER PRIMARY KEY (BERATERID)
);
go

-- Tabelle Arbeit erstellen
CREATE TABLE ARBEIT
(
	KUNDENNR	INTEGER		NOT NULL,
	BERATERID	INTEGER		NOT NULL,
	AZSTUNDEN	FLOAT,
	CONSTRAINT PK_ARBEIT PRIMARY KEY (KUNDENNR, BERATERID)
);
go

-- Foreign Key Constraints hinzuf�gen
ALTER TABLE BERATER ADD CONSTRAINT FK_BERATER_AUFGABE 
    FOREIGN KEY (AUFGABEID) REFERENCES AUFGABE (AUFGABEID);
go

ALTER TABLE ARBEIT ADD CONSTRAINT FK_ARBEIT_BERATER 
    FOREIGN KEY (BERATERID) REFERENCES BERATER(BERATERID);
go

IF OBJECT_ID('dbo.[FK_ARBEIT_KUNDE]', 'F') IS NULL 
	ALTER TABLE ARBEIT ADD CONSTRAINT FK_ARBEIT_KUNDE 
		FOREIGN KEY (KUNDENNR) REFERENCES KUNDE(KUNDENNR);
go

-- Unique Constraints
ALTER TABLE AUFGABE ADD CONSTRAINT UQ_AUFGABE_AUFGABE 
    UNIQUE (AUFGABE);
go

-- Check Constraints
ALTER TABLE BERATER ADD CONSTRAINT C_BERATER_STUNDENLOHN 
    CHECK (STUNDENLOHN > 0.0);
go

-- Default Constraints
ALTER TABLE ARBEIT 
 ADD CONSTRAINT DF_ARBEIT_AZSTUNDEN 
 DEFAULT 0.0 FOR AZSTUNDEN;


/*
C = CHECK constraint
D = DEFAULT (constraint or stand-alone)
F = FOREIGN KEY constraint
PK = PRIMARY KEY constraint
R = Rule (old-style, stand-alone)
UQ = UNIQUE constraint
*/
=======
-- IBZ 2. Schultag
--
-- Berater Datenbank
-------------------------------------------

-- Datenbank BeraterDB anw�hlen
use Berater
go

-- Tabelle Kunde erstellen
CREATE TABLE KUNDE 
(
	KUNDENNR		INTEGER			NOT NULL,
	KUNDENNAME		VARCHAR(50)		NULL,
	VORNAME			VARCHAR(50)		NULL,
	CONSTRAINT PK_KUNDE PRIMARY KEY (KUNDENNR)
);
go

-- Tabelle Aufgabe erstellen
CREATE TABLE AUFGABE
(
	AUFGABEID	INTEGER		NOT NULL,
	AUFGABE		VARCHAR(50)	NULL
	CONSTRAINT PK_AUFGABE PRIMARY KEY (AUFGABEID)
);
go

-- Tabelle Berater erstellen
CREATE TABLE BERATER
(
	BERATERID	INTEGER		NOT NULL,
	AUFGABEID	INTEGER		NOT NULL,
	BERATERNAME	VARCHAR(50),
	STUNDENLOHN	FLOAT,
	CONSTRAINT PK_BERATER PRIMARY KEY (BERATERID)
);
go

-- Tabelle Arbeit erstellen
CREATE TABLE ARBEIT
(
	KUNDENNR	INTEGER		NOT NULL,
	BERATERID	INTEGER		NOT NULL,
	AZSTUNDEN	FLOAT,
	CONSTRAINT PK_ARBEIT PRIMARY KEY (KUNDENNR, BERATERID)
);
go

-- Foreign Key Constraints hinzuf�gen
ALTER TABLE BERATER ADD CONSTRAINT FK_BERATER_AUFGABE 
    FOREIGN KEY (AUFGABEID) REFERENCES AUFGABE (AUFGABEID);
go

ALTER TABLE ARBEIT ADD CONSTRAINT FK_ARBEIT_BERATER 
    FOREIGN KEY (BERATERID) REFERENCES BERATER(BERATERID);
go

IF OBJECT_ID('dbo.[FK_ARBEIT_KUNDE]', 'F') IS NULL 
	ALTER TABLE ARBEIT ADD CONSTRAINT FK_ARBEIT_KUNDE 
		FOREIGN KEY (KUNDENNR) REFERENCES KUNDE(KUNDENNR);
go

-- Unique Constraints
ALTER TABLE AUFGABE ADD CONSTRAINT UQ_AUFGABE_AUFGABE 
    UNIQUE (AUFGABE);
go

-- Check Constraints
ALTER TABLE BERATER ADD CONSTRAINT C_BERATER_STUNDENLOHN 
    CHECK (STUNDENLOHN > 0.0);
go

-- Default Constraints
ALTER TABLE ARBEIT 
 ADD CONSTRAINT DF_ARBEIT_AZSTUNDEN 
 DEFAULT 0.0 FOR AZSTUNDEN;


/*
C = CHECK constraint
D = DEFAULT (constraint or stand-alone)
F = FOREIGN KEY constraint
PK = PRIMARY KEY constraint
R = Rule (old-style, stand-alone)
UQ = UNIQUE constraint
*/
>>>>>>> 91c37e0a13ad9148d1d6356ee6197441ad0a42e5
