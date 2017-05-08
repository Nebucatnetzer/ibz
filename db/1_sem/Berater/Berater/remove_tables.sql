-- Creates the tables for the Berater DB
--
-- Author: Andreas Zweili
-- Erstellt: 2016-12-16
-- DB-Server SQL Server 2016

use Berater;

alter table berater
    drop constraint if exists fk_berater_aufgabe;
go

alter table arbeit
    drop constraint if exists fk_arbeit_berater;
go

alter table arbeit
    drop constraint if exists fk_arbeit_kunde;
go

if exists (select * from sysobjects where name='arbeit')
	drop table arbeit;

if exists (select * from sysobjects where name='kunde')
	drop table kunde;

if exists (select * from sysobjects where name='aufgabe')
	drop table aufgabe;
