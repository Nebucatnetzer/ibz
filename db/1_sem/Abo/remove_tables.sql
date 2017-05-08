-- Removes the tables for the Abo DB
--
-- Author: Andreas Zweili
-- Erstellt: 2017-01-06
-- DB-Server SQL Server 2016

use Abo;

if exists (select * from sysobjects where name='mitglied')
	drop table mitglied;

if exists (select * from sysobjects where name='anrede')
	drop table anrede;
	
if exists (select * from sysobjects where name='ort')
	drop table ort;

if exists (select * from sysobjects where name='abo')
	drop table abo;