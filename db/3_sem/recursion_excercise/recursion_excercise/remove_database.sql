-- Removes the bike_shop DB
--
-- Author: Andreas Zweili
-- Erstellt: 2017-05-28
-- DB-Server SQL Server 2016

use bike_shop;

if exists (select * from sysobjects where name='teile')
	drop table teile;

if exists (select * from sysobjects where name='struktur')
	drop table struktur;

use master;
if exists (select * from sys.databases where name='bike_shop')
    drop DATABASE bike_shop;
