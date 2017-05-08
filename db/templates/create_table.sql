    -- a template to create a table
    --
    -- Author: Andreas Zweili
    -- Erstellt: 2016-12-16
    -- DB-Server SQL Server 2016
    use [2_Semester];
    if not exists (select * from sysobjects where name='MyTest')
    	CREATE TABLE MyTest (
    	id int identity(1,1) not null, 
    	lastname varchar(50) null,
    	firstname varchar(50) null
    	constraint pk_mytest primary key (id)
    );