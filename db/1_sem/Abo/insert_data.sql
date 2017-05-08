-- Removes the tables for the Abo DB
--
-- Author: Andreas Zweili
-- Erstellt: 2017-01-06
-- DB-Server SQL Server 2016

use Abo;

insert into dbo.abo (abo_name, abo_gebuehr)
	values ('Student','500'),
	('Monatsabo','150'),
	('Jahresabo','1000');

insert into dbo.ort (ortsname, postleizahl)
	values ('Zürich','8000'),
	('Zürich','8021'),
	('Zürich','8048'),
	('Bern','3000'),
	('Basel','4000');

insert into dbo.anrede (anrede)
	values ('Herr'),
	('Frau');

insert into dbo.mitglied (anrede_id, mitglied_name, mitglied_vorname, eintrittsdatum, ort_id, abo_id)
	values ('2','Müller','Karina','2005-08-30','4','3'),
	('2','Pozzi','Isabelle','2005-07-15','4','2'),
	('1','Groz','Thomas','2005-07-15','5','1'),
	('1','Balmelli','Marco','1990-01-01','1','1'),
	('2','Bürgin','Sandra','1989-05-01','2','3'),
	('1','Keller','Georg','1996-11-26','2','3'),
	('1','Emmenegger','Reto','1994-10-01','3','2');
