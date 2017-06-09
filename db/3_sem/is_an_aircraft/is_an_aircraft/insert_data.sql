-- Dateiname insert_data.sql
--
-- Beschreibung: Is an Airplane Übung
--
-- Autor: Andreas Zweili
-- Datum: 2017-05-27
-- Server Version: SQL Server 2016


use Luftfahrzeuge

insert into dbo.Luftfahrzeug (LFZ_ID, LFZ_HERSTELLER, LFZ_BAUJAHR)
    values ('1000','Airbus','2012'),
    ('2000','Alouette','1980');

insert into dbo.Flugzeug (FLZ_ID, FLU_SPANNWEITE)
    values ('1000','40');


insert into dbo.Hubschrauber (HUB_ID, HUB_ROTORDURCHMESSER)
    values ('2000','8');
