-- Dateiname selections.sql
--
-- Beschreibung: Is an Airplane Übung
--
-- Autor: Andreas Zweili
-- Datum: 2017-05-27
-- Server Version: SQL Server 2016

use Luftfahrzeuge
select l.LFZ_ID, l.LFZ_HERSTELLER, l.LFZ_BAUJAHR,
    f.FLU_SPANNWEITE from Luftfahrzeug l
    inner join Flugzeug f
        on f.FLZ_ID = l.LFZ_ID;

select l.LFZ_ID, l.LFZ_HERSTELLER, l.LFZ_BAUJAHR,
    h.HUB_ROTORDURCHMESSER from Luftfahrzeug l
    inner join Hubschrauber h
        on h.HUB_ID = l.LFZ_ID;

select l.LFZ_ID, l.LFZ_HERSTELLER, l.LFZ_BAUJAHR,
    z.ZEP_GASVOLUMEN from Luftfahrzeug l
    inner join Zeppelin z
        on z.ZEP_ID = l.LFZ_ID;
