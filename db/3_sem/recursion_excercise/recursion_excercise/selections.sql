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

select * from struktur
where struktur.OTeil=60;

select * from dbo.teile
	where teile.TNr in (2,41,62);

select	t1.TNr,
		t1.Bezeichnung,
		s1.UTeil,
		t2.Bezeichnung
	from teile t1 inner join struktur s1
		on t1.TNr = s1.OTeil
	inner join teile t2
		on t2.TNr = s1.UTeil
	where t1.TNr=60
