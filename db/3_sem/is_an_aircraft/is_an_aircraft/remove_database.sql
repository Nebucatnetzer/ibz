-- Removes the tables for the Flugzeug DB
--
-- Author: Andreas Zweili
-- Erstellt: 2017-05-27
-- DB-Server SQL Server 2016

use Luftfahrzeuge;

if exists (select * from sysobjects where name='Flugzeug')
	drop table Flugzeug;

if exists (select * from sysobjects where name='Hubschrauber')
	drop table Hubschrauber;

if exists (select * from sysobjects where name='Zeppelin')
	drop table Zeppelin;

if exists (select * from sysobjects where name='Luftfahrzeug')
	drop table Luftfahrzeug;

use master;
if exists (select * from sys.databases where name='Luftfahrzeuge')
    drop DATABASE Luftfahrzeuge;
