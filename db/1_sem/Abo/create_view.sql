use Abo;
go

-- create a view
create view mitglieder_liste(Anr, Vor, Nach)
as
select	anrede.anrede,
		mitglied.mitglied_vorname,
		mitglied.mitglied_name
	from mitglied inner join anrede
		on mitglied.anrede_id = anrede.anrede_id;

-- query the view

use Abo;
go

select * from mitglieder_liste;
go

drop view mitglieder_liste;
