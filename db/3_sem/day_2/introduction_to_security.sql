-- Queuries to create test table and change the permissions of the underpriviledged user

use IBZ;

create table SprechendeTiere
(
	ID			int identity(1,1) not null,
	Tierame		varchar(50)
	constraint pk_sprechende_tiere primary key (ID)
);


insert into SprechendeTiere(Tierame)
values ('Einhorn');

-- Grant

grant select on SprechendeTiere to ibzadmin;

grant delete on SprechendeTiere to ibzadmin;

grant update on SprechendeTiere to ibzadmin;

grant all on SprechendeTiere to ibzadmin;
