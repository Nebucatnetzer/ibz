-- Dateiname selections.sql
--
-- Beschreibung: recursion excercise
--
-- Autor: Andreas Zweili
-- Datum: 2017-05-28
-- Server Version: SQL Server 2016

use bike_shop
select t.TNr, t.Bezeichnung, t.Typ,
    s.Position, s.OTeil, s.Menge from teile t
    inner join struktur s
        on t.TNr = s.OTeil;
