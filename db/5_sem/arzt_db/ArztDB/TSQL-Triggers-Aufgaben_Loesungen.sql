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
-- Author:		Andreas Zweili
-- Create date: 2017-11-24
-- Description:	Trigger Beispiel
-- =============================================
ALTER TRIGGER dbo.trigArztUpdate 
   ON  dbo.Arzt 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    print 'update trigger ausgeführt.';

    select * from inserted;
    select * from deleted;
    -- Insert statements for trigger here

END
GO

-- =============================================
-- Author:		Zweili Andreas
-- Create date: 2017-11-24
-- Description:	INSTEAD-OF Beispiel
-- =============================================
CREATE TRIGGER dbo.trigArztInsteadDelete 
   ON  dbo.Arzt 
   INSTEAD OF DELETE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
    print 'Instead of Delete Trigger';
END
GO

-- Trigger Test
delete from Arzt where ArztName = 'Hektor';

