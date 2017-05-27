-- Dateiname create_database.sql
--
-- Beschreibung: Is an Airplane Übung
--
-- Autor: Andreas Zweili
-- Datum: 2017-05-27
-- Server Version: SQL Server 2016

if not exists (select * from sys.databases where name='Luftfahrzeuge')
	CREATE DATABASE Luftfahrzeuge;
