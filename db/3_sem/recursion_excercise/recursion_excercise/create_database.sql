-- Dateiname create_database.sql
--
-- Beschreibung: recursion excercise
--
-- Autor: Andreas Zweili
-- Datum: 2017-05-28
-- Server Version: SQL Server 2016

if not exists (select * from sys.databases where name='bike_shop')
	CREATE DATABASE bike_shop;
