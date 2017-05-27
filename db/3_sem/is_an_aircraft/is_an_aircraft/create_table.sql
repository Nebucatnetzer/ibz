-- Dateiname create_table.sql
--
-- Beschreibung: Is an Airplane Übung
--
-- Autor: Andreas Zweili
-- Datum: 2017-05-27
-- Server Version: SQL Server 2016

use Luftfahrzeuge
if not exists (select * from sysobjects where name='Luftfahrzeug')
    CREATE TABLE Luftfahrzeug (
    LFZ_ID int not null,
    LFZ_HERSTELLER varchar(40) not null,
    LFZ_BAUJAHR integer not null,
    constraint PK_LFZ_ID primary key (LFZ_ID)
    );

use Luftfahrzeuge
if not exists (select * from sysobjects where name='Flugzeug')
    CREATE TABLE Flugzeug (
    FLZ_ID int not null,
    FLU_SPANNWEITE float,
    constraint PK_FLZ_ID primary key (FLZ_ID)
    );

use Luftfahrzeuge
if not exists (select * from sysobjects where name='Hubschrauber')
    CREATE TABLE Hubschrauber (
    HUB_ID int not null,
    HUB_ROTORDURCHMESSER float,
    constraint PK_HUB_ID primary key (HUB_ID)
    );

use Luftfahrzeuge
if not exists (select * from sysobjects where name='Zeppelin')
    CREATE TABLE Zeppelin (
    ZEP_ID int not null,
    ZEP_GASVOLUMEN float,
    constraint PK_ZEP_ID primary key (ZEP_ID)
    );

-- Foreign Key Constraints hinzufügen
IF OBJECT_ID('dbo.[FK_FLZ_ID]', 'F') IS NULL
    ALTER TABLE Flugzeug ADD CONSTRAINT FK_FLZ_ID
        FOREIGN KEY (FLZ_ID) REFERENCES Luftfahrzeug (LFZ_ID);
go

-- Foreign Key Constraints hinzufügen
IF OBJECT_ID('dbo.[FK_HUB_ID]', 'F') IS NULL
    ALTER TABLE Hubschrauber ADD CONSTRAINT FK_HUB_ID
        FOREIGN KEY (HUB_ID) REFERENCES Luftfahrzeug (LFZ_ID);
go

-- Foreign Key Constraints hinzufügen
IF OBJECT_ID('dbo.[FK_ZEP_ID]', 'F') IS NULL
    ALTER TABLE Zeppelin ADD CONSTRAINT FK_ZEP_ID
        FOREIGN KEY (ZEP_ID) REFERENCES Luftfahrzeug (LFZ_ID);
go
