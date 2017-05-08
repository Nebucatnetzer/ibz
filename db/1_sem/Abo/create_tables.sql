-- Creates the tables for the Abo DB
--
-- Author: Andreas Zweili
-- Erstellt: 2017-01-06
-- DB-Server SQL Server 2016

use Abo

if not exists (select * from sysobjects where name='anrede')
	CREATE TABLE anrede (
	anrede_id int identity(1,1) not null,
	anrede varchar(50) not null,
	constraint pk_anrede primary key (anrede_id)
);

if not exists (select * from sysobjects where name='ort')
	CREATE TABLE ort (
	ort_id int identity(1,1) not null,
	ortsname varchar(50) not null,
	postleizahl int not null,
	constraint pk_ort primary key (ort_id)
);

if not exists (select * from sysobjects where name='abo')
	CREATE TABLE abo (
	abo_id int identity(1,1) not null,
	abo_name varchar(50) not null,
	abo_gebuehr money not null,
	constraint pk_abo primary key (abo_id)
);

if not exists (select * from sysobjects where name='mitglied')
	CREATE TABLE mitglied (
	mitglied_id int identity(1,1) not null,
	anrede_id int not null,
	mitglied_name varchar(50) not null,
	mitglied_vorname varchar(50) not null,
	eintrittsdatum date not null,
	ort_id int not null,
	abo_id int not null,
	constraint pk_mitglied primary key (mitglied_id),
	foreign key (anrede_id) references dbo.anrede(anrede_id),
	foreign key (ort_id) references dbo.ort(ort_id),
	foreign key (abo_id) references dbo.abo(abo_id)
);
