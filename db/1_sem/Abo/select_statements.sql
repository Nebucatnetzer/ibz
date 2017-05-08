<<<<<<< HEAD

use Abo

-- A1.1

select mitglied_name, mitglied_vorname, eintrittsdatum
       from mitglied
order by eintrittsdatum ASC;

-- A1.2

select mitglied_name, mitglied_vorname, eintrittsdatum
       from mitglied
       where eintrittsdatum >= convert(date, '01.01.2000', 104)
order by mitglied_name, mitglied_vorname ASC;

-- A1.3

select mitglied_name, mitglied_vorname, eintrittsdatum
       from mitglied
       where mitglied_name like'B%';

-- A1.4

select mitglied_name, mitglied_vorname, eintrittsdatum
       from mitglied
       where mitglied_id < '50'
       and eintrittsdatum < '1995-01-01';

-- A1.5

select mitglied_name, mitglied_vorname, eintrittsdatum
       from mitglied
       where mitglied_name like '%zz%'
       and eintrittsdatum > '2000-01-01';

-- A1.6

select mitglied_name, mitglied_vorname, eintrittsdatum
       from mitglied
       where eintrittsdatum between '1994-01-01' and '1997-01-01'
       order by eintrittsdatum;


-- A1.7

select mitglied_name, mitglied_vorname, eintrittsdatum
       from mitglied
       where mitglied_name like '%e%' or
       mitglied_vorname like '%a';


-- A2.1

select * from mitglied m
       inner join abo
             on abo.abo_id = m.abo_id
       inner join anrede a
             on a.anrede_id = m.anrede_id
       where abo.abo_gebuehr <= '500'
       order by m.mitglied_name, m.mitglied_vorname ASC;



-- A2.2

select * from mitglied m
       inner join abo
             on abo.abo_id = m.abo_id
       inner join anrede a
             on a.anrede_id = m.anrede_id
       inner join ort o
             on o.ort_id = m.ort_id
       where abo.abo_name = 'Student'
        and o.ortsname = 'Bern'
        and a.anrede = 'Herr';

-- A2.3

select * from mitglied m
       inner join anrede a
             on a.anrede_id = m.anrede_id
       inner join ort o
             on o.ort_id = m.ort_id
       where a.anrede = 'Herr'
        and (o.ortsname = 'Bern'
        or o.ortsname = 'Zürich');

-- A2.4

select * from mitglied m
       inner join anrede a
             on a.anrede_id = m.anrede_id
       inner join ort o
             on o.ort_id = m.ort_id
       inner join abo
             on abo.abo_id = m.abo_id
       where a.anrede = 'Herr'
        and not abo.abo_name = 'Student'
        and not o.ortsname = 'Bern';

-- A2.5

select * from mitglied m
       inner join anrede a
             on a.anrede_id = m.anrede_id
       where a.anrede = 'Frau'
        or m.eintrittsdatum > '2005-01-01';


-- A2.6

select * from mitglied m
       inner join anrede a
             on a.anrede_id = m.anrede_id
       inner join ort o
             on o.ort_id = m.ort_id
       inner join abo
             on abo.abo_id = m.abo_id

       where (a.anrede = 'Herr'
        and o.ortsname = 'Zürich')
        and (abo.abo_name ='Student'
        or abo.abo_name = 'Jahresabo');

-- 3.1

select concat(m.mitglied_vorname, ',', m.mitglied_name) as 'Mitglied Name'
    from mitglied m;

-- 3.2

select upper(concat(m.mitglied_vorname, ',', m.mitglied_name)) as 'Mitglied Name'
    from mitglied m;

-- 3.3

select m.mitglied_vorname, m.mitglied_name from mitglied m
    order by len(m.mitglied_name) DESC;

-- 3.4

select concat(left(m.mitglied_vorname, 1),'.', left(m.mitglied_name, 1),'.')
    as 'Initialen' from mitglied m
    order by Initialen ASC;

-- 3.5
    
select m.mitglied_name, m.mitglied_vorname, m.eintrittsdatum from mitglied m
    order by m.eintrittsdatum DESC;

-- 3.6

select m.mitglied_name, m.mitglied_vorname, m.eintrittsdatum from mitglied m
    where m.eintrittsdatum like '2005-%'

--4.1
select min(a.abo_gebuehr) as 'Tiefster Preis',
    max(a.abo_gebuehr) as 'Höchster Preis',
    avg(a.abo_gebuehr) as 'Durchnittlicher Preis'
from abo a;

--4.2
select count(m.anrede_id) from mitglied m
       inner join anrede a
             on a.anrede_id = m.anrede_id
where a.anrede = 'Frau';

--4.3
select m.mitglied_name, m.mitglied_name, m.eintrittsdatum, c.count
    from mitglied m
        inner join (select eintrittsdatum, count(eintrittsdatum) as count
            from mitglied
            where eintrittsdatum like '2005-%'
            group by eintrittsdatum)
        c on m.eintrittsdatum = c.eintrittsdatum;

--4.4
select count(o.ortsname) as 'Zürcher'
    from mitglied m
    inner join ort o on o.ort_id = m.ort_id
    where o.ortsname = 'Zürich';

--4.5
select abo_name, count(m.abo_id) as 'Mitglieder pro Abo'
    from mitglied m
    inner join abo a on m.abo_id = a.abo_id
    group by abo_name;

--4.6
select sum(a.abo_gebuehr) as 'Gebuehren Gesamt'
from mitglied m
inner join abo a on m.abo_id = a.abo_id;
=======

use Abo

-- A1.1

select mitglied_name, mitglied_vorname, eintrittsdatum
       from mitglied
order by eintrittsdatum ASC;

-- A1.2

select mitglied_name, mitglied_vorname, eintrittsdatum
       from mitglied
       where eintrittsdatum >= convert(date, '01.01.2000', 104)
order by mitglied_name, mitglied_vorname ASC;

-- A1.3

select mitglied_name, mitglied_vorname, eintrittsdatum
       from mitglied
       where mitglied_name like'B%';

-- A1.4

select mitglied_name, mitglied_vorname, eintrittsdatum
       from mitglied
       where mitglied_id < '50'
       and eintrittsdatum < '1995-01-01';

-- A1.5

select mitglied_name, mitglied_vorname, eintrittsdatum
       from mitglied
       where mitglied_name like '%zz%'
       and eintrittsdatum > '2000-01-01';

-- A1.6

select mitglied_name, mitglied_vorname, eintrittsdatum
       from mitglied
       where eintrittsdatum between '1994-01-01' and '1997-01-01'
       order by eintrittsdatum;


-- A1.7

select mitglied_name, mitglied_vorname, eintrittsdatum
       from mitglied
       where mitglied_name like '%e%' or
       mitglied_vorname like '%a';


-- A2.1

select * from mitglied m
       inner join abo
             on abo.abo_id = m.abo_id
       inner join anrede a
             on a.anrede_id = m.anrede_id
       where abo.abo_gebuehr <= '500'
       order by m.mitglied_name, m.mitglied_vorname ASC;



-- A2.2

select * from mitglied m
       inner join abo
             on abo.abo_id = m.abo_id
       inner join anrede a
             on a.anrede_id = m.anrede_id
       inner join ort o
             on o.ort_id = m.ort_id
       where abo.abo_name = 'Student'
        and o.ortsname = 'Bern'
        and a.anrede = 'Herr';

-- A2.3

select * from mitglied m
       inner join anrede a
             on a.anrede_id = m.anrede_id
       inner join ort o
             on o.ort_id = m.ort_id
       where a.anrede = 'Herr'
        and (o.ortsname = 'Bern'
        or o.ortsname = 'Zürich');

-- A2.4

select * from mitglied m
       inner join anrede a
             on a.anrede_id = m.anrede_id
       inner join ort o
             on o.ort_id = m.ort_id
       inner join abo
             on abo.abo_id = m.abo_id
       where a.anrede = 'Herr'
        and not abo.abo_name = 'Student'
        and not o.ortsname = 'Bern';

-- A2.5

select * from mitglied m
       inner join anrede a
             on a.anrede_id = m.anrede_id
       where a.anrede = 'Frau'
        or m.eintrittsdatum > '2005-01-01';


-- A2.6

select * from mitglied m
       inner join anrede a
             on a.anrede_id = m.anrede_id
       inner join ort o
             on o.ort_id = m.ort_id
       inner join abo
             on abo.abo_id = m.abo_id

       where (a.anrede = 'Herr'
        and o.ortsname = 'Zürich')
        and (abo.abo_name ='Student'
        or abo.abo_name = 'Jahresabo');

-- 3.1

select concat(m.mitglied_vorname, ',', m.mitglied_name) as 'Mitglied Name'
    from mitglied m;

-- 3.2

select upper(concat(m.mitglied_vorname, ',', m.mitglied_name)) as 'Mitglied Name'
    from mitglied m;

-- 3.3

select m.mitglied_vorname, m.mitglied_name from mitglied m
    order by len(m.mitglied_name) DESC;

-- 3.4

select concat(left(m.mitglied_vorname, 1),'.', left(m.mitglied_name, 1),'.')
    as 'Initialen' from mitglied m
    order by Initialen ASC;

-- 3.5
    
select m.mitglied_name, m.mitglied_vorname, m.eintrittsdatum from mitglied m
    order by m.eintrittsdatum DESC;

-- 3.6

select m.mitglied_name, m.mitglied_vorname, m.eintrittsdatum from mitglied m
    where m.eintrittsdatum like '2005-%'

--4.1
select min(a.abo_gebuehr) as 'Tiefster Preis',
    max(a.abo_gebuehr) as 'Höchster Preis',
    avg(a.abo_gebuehr) as 'Durchnittlicher Preis'
from abo a;

--4.2
select count(m.anrede_id) from mitglied m
       inner join anrede a
             on a.anrede_id = m.anrede_id
where a.anrede = 'Frau';

--4.3
select m.mitglied_name, m.mitglied_name, m.eintrittsdatum, c.count
    from mitglied m
        inner join (select eintrittsdatum, count(eintrittsdatum) as count
            from mitglied
            where eintrittsdatum like '2005-%'
            group by eintrittsdatum)
        c on m.eintrittsdatum = c.eintrittsdatum;

--4.4
select count(o.ortsname) as 'Zürcher'
    from mitglied m
    inner join ort o on o.ort_id = m.ort_id
    where o.ortsname = 'Zürich';

--4.5
select abo_name, count(m.abo_id) as 'Mitglieder pro Abo'
    from mitglied m
    inner join abo a on m.abo_id = a.abo_id
    group by abo_name;

--4.6
select sum(a.abo_gebuehr) as 'Gebuehren Gesamt'
from mitglied m
inner join abo a on m.abo_id = a.abo_id;
>>>>>>> 91c37e0a13ad9148d1d6356ee6197441ad0a42e5
