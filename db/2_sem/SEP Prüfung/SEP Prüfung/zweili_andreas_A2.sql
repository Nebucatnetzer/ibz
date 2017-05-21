<<<<<<< HEAD
-- Dateiname zweili_andreas_A2.sql
--
-- Beschreibung: SEP Datenbank 2
--
-- Autor: Andreas Zweili
-- Datum: 11.03.2017


-- A2.1
use Abo
select m.mitglied_name, m.mitglied_vorname, m.eintrittsdatum from mitglied m
       inner join anrede a
             on a.anrede_id = m.anrede_id
       order by m.mitglied_name ASC, m.mitglied_vorname ASC;



-- A2.2
use Abo
select m.mitglied_name, m.mitglied_vorname, m.eintrittsdatum, abo.abo_gebuehr from mitglied m
       inner join abo
             on abo.abo_id = m.abo_id
       where abo.abo_gebuehr > '1000';

-- A2.3
use Abo
select * from mitglied m
       where m.mitglied_name like '%ll%'
	   order by m.mitglied_id DESC;

-- A2.4
use Abo
select * from mitglied m
       where m.eintrittsdatum is NULL;

-- A2.5
use Abo
select m.mitglied_name, m.mitglied_vorname, m.eintrittsdatum, o.postleizahl, o.ortsname
       from mitglied m
	   inner join ort o on m.ort_id = o.ort_id
       where m.eintrittsdatum between convert(date, '01.01.1990', 104) and convert(date, '31.12.1995', 104)
       order by o.postleizahl asc;

-- A2.6
use Abo
select a.anrede, m.mitglied_name, m.mitglied_vorname, o.postleizahl, o.ortsname, abo_name from mitglied m
       inner join anrede a
             on a.anrede_id = m.anrede_id
       inner join ort o
             on o.ort_id = m.ort_id
	   inner join abo
		     on m.abo_id = abo.abo_id
       where a.anrede = 'Herr'
        and (o.ortsname = 'Basel'
        or o.ortsname = 'Zürich');

-- A2.7

update abo set
	abo.abo_gebuehr = '550'
	where abo.abo_name = 'Student';
update abo set
	abo.abo_gebuehr = '165'
	where abo.abo_name = 'Monatsabo';

-- A2.8

delete from mitglied
       where mitglied_name = 'Keller'
=======
-- Dateiname zweili_andreas_A2.sql
--
-- Beschreibung: SEP Datenbank 2
--
-- Autor: Andreas Zweili
-- Datum: 11.03.2017


-- A2.1
use Abo
select m.mitglied_name, m.mitglied_vorname, m.eintrittsdatum from mitglied m
       inner join anrede a
             on a.anrede_id = m.anrede_id
       order by m.mitglied_name ASC, m.mitglied_vorname ASC;



-- A2.2
use Abo
select m.mitglied_name, m.mitglied_vorname, m.eintrittsdatum, abo.abo_gebuehr from mitglied m
       inner join abo
             on abo.abo_id = m.abo_id
       where abo.abo_gebuehr > '1000';

-- A2.3
use Abo
select * from mitglied m
       where m.mitglied_name like '%ll%'
	   order by m.mitglied_id DESC;

-- A2.4
use Abo
select * from mitglied m
       where m.eintrittsdatum is NULL;

-- A2.5
use Abo
select m.mitglied_name, m.mitglied_vorname, m.eintrittsdatum, o.postleizahl, o.ortsname
       from mitglied m
	   inner join ort o on m.ort_id = o.ort_id
       where m.eintrittsdatum between convert(date, '01.01.1990', 104) and convert(date, '31.12.1995', 104)
       order by o.postleizahl asc;

-- A2.6
use Abo
select a.anrede, m.mitglied_name, m.mitglied_vorname, o.postleizahl, o.ortsname, abo_name from mitglied m
       inner join anrede a
             on a.anrede_id = m.anrede_id
       inner join ort o
             on o.ort_id = m.ort_id
	   inner join abo
		     on m.abo_id = abo.abo_id
       where a.anrede = 'Herr'
        and (o.ortsname = 'Basel'
        or o.ortsname = 'Zürich');

-- A2.7

update abo set
	abo.abo_gebuehr = '550'
	where abo.abo_name = 'Student';
update abo set
	abo.abo_gebuehr = '165'
	where abo.abo_name = 'Monatsabo';

-- A2.8

delete from mitglied
       where mitglied_name = 'Keller'
>>>>>>> 91c37e0a13ad9148d1d6356ee6197441ad0a42e5
	   and mitglied_vorname = 'Georg';