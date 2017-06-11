
-- A1.1 create student view
use Abo;
go

create view mitglied_student_v(Anr, Nachn, Vorn, Ort)
as
select a.anrede,
            m.mitglied_name,
            m.mitglied_vorname,
            o.ortsname
    from mitglied m
	inner join anrede a
        on m.anrede_id = a.anrede_id
	inner join ort o
		on m.ort_id =o.ort_id
	inner join abo
		on m.abo_id = abo.abo_id
	where abo.abo_name = 'Student'


use Abo;
    go

select * from mitglied_student_v;
    go

-- drop the view
use Abo;
go

drop view mitglied_student_v;

-- A1.2 create Zürich Mitglied view

use Abo;
go

create view mitglied_zuerich_v(Anr, Nachn, Vorn, Aboart, PLZ, Ort)
as
select a.anrede,
            m.mitglied_name,
            m.mitglied_vorname,
            abo.abo_name,
            o.postleizahl,
            o.ortsname
    from mitglied m
	inner join anrede a
        on m.anrede_id = a.anrede_id
	inner join ort o
		on m.ort_id =o.ort_id
	inner join abo
		on m.abo_id = abo.abo_id
	where o.ortsname = 'Zürich';

use Abo;
    go

select * from mitglied_zuerich_v;

-- drop the view
use Abo;
go

drop view mitglied_zuerich_v;


-- A1.3 create view Mitglieder/Aboart
use Abo;
go

create view mitglied_aboart_v(AboArt, 'Anzahl Mitglieder')
as select
    abo.aboname,


use Abo;
go
select * from mitglied_aboart_v;

use Abo;
go
drop view mitglied_aboart_v;
