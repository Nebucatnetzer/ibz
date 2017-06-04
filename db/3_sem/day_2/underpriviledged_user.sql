-- Test Queries for an unprivileged user

use IBZ;

select * from SprechendeTiere;

delete SprechendeTiere
where Tierame='Einhorn';

update SprechendeTiere
	set Tierame='Einhörner'
	where Tierame='Einhorn';


insert into SprechendeTiere(Tierame)
values ('Papagei');