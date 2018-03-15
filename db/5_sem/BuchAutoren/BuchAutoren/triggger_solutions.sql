-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters
-- command (Ctrl-Shift-M) to fill in the parameter
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Zweili Andreas
-- Create date: 2017-11-24
-- Description:
-- =============================================
ALTER TRIGGER buch.trigAutorBuch_Insert_Update
   ON  buch.tblAutorBuch
   AFTER INSERT, UPDATE
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here

    declare @ID int;
    declare @ISBN char(13);
    declare @anteil decimal(5,2);
    declare @anteil_summe decimal(5,2);

    select @ID = ID, @ISBN = ISBN from inserted;

    select @anteil_summe = sum(Anteil) from tblAutorBuch
        where tblAutorBuch.ISBN = @ISBN;

    if @anteil_summe > 100.00 delete from tblAutorBuch
        where tblAutorBuch.ID = @ID;
        print 'Summe ist zu hoch'
END
GO

-- Trigger Test
use BuchAutorDB;
insert into buch.tblAutor (Nachname, Vorname)
    values ('Muster', 'Max');

insert into buch.tblAutorBuch (ID, ISBN, Anteil)
    values (1, '3-89842-129-5', 90.00);

insert into buch.tblAutorBuch (ID, ISBN, Anteil)
    values (2, '3-89842-129-5', 15.00);
