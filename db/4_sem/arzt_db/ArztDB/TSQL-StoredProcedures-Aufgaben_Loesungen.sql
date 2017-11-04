-- Solutions for the TSQL-StoredProcedures-Aufgaben.pdf document
--
-- Author: Andreas Zweili
-- 2017-11-04
-- SQLServer 2016

use ArztDB;
go

--A2.1
if OBJECT_ID('uspScoresA2_1') is not null
    drop procedure uspScoresA2_1
go
CREATE PROCEDURE uspScoresA2_1
	-- Add the parameters for the stored procedure here
	@value1 int = 0,
    @value2 int = 0,
    @value3 int = 0,
    @value4 int = 0,
	@value5 int = 0,
    @result int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT @result = @value1 + @value2 + @value3 + @value4 + @value5
END
GO

DECLARE @SumScore smallint
EXEC uspScoresA2_1 10, 9, 8, 8, 10, @SumScore OUTPUT
SELECT 'The Sum Score is: ', @SumScore
GO

--A2.2
declare @SumScoreA2_1 smallint = 0
exec uspScoresA2_1
    @value1 = 10,
    @value2 = 9,
    @value3 = 8,
    @value4 = 8,
    @value5 = 10,
    @result = @SumScoreA2_1 OUTPUT

Select 'Die Summe ist: ', @SumScoreA2_1
go

--A2.3
if OBJECT_ID('uspScoresA2_3') is not null
    drop procedure uspScoresA2_3
go
CREATE PROCEDURE uspScoresA2_3
	-- Add the parameters for the stored procedure here
	@value1 int = 0,
    @value2 int = 0,
    @value3 int = 0,
    @value4 int = 0,
	@value5 int = 0,
    @product bit = 0,
    @result int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    if @product = 0
	    SELECT @result = (@value1 + @value2 + @value3 + @value4 + @value5)
    else
        select @result = (@value1 * @value2 * @value3 * @value4 * @value5)
    END
GO

declare @SumScore int = 0, @option bit = 1
exec uspScoresA2_3
    @product = @option,
    @value1 = 10,
    @value2 = 9,
    @value3 = 8,
    @value4 = 8,
    @value5 = 10,
    @result = @Sumscore OUTPUT

if @option = 0
    Select 'Die Summe ist: ', @SumScore
else
    select 'Das Produkt ist: ', @SumScore
go


--A2.4
if OBJECT_ID('usp_NumberOfConsultationsA2_4') is not null
    drop procedure usp_NumberOfConsultationsA2_4
go

CREATE PROCEDURE usp_NumberOfConsultationsA2_4
	-- Add the parameters for the stored procedure here
	(@parameter varchar(30),
     @result int output)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    select @result=count(*) from Konsultation
        inner join Diagnose
            on Konsultation.DiagnoseNr = Diagnose.DiagnoseNr
        where Diagnose.DiagnoseName = @parameter;
    END
GO

declare @numberOfConsultations int = 0;
declare @diagnoseName varchar(30) = 'Röteln';

exec usp_NumberOfConsultationsA2_4
    @parameter = @diagnoseName,
    @result = @numberOfConsultations output
    Select 'Die Anzahl an Diagnosen für ' + @diagnoseName + ' ist: ' + CONVERT(varchar, @numberOfConsultations)
go

--A2.5
if OBJECT_ID('usp_ListOfDoctorsA2_5') is not null
    drop procedure usp_ListOfDoctorsA2_5
go

CREATE PROCEDURE usp_ListOfDoctorsA2_5
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    select
        Arzt.ArztNr,
        Arzt.ArztName,
        Ort.PLZ,
        Ort.Ort
    from Arzt
        inner join Ort on Arzt.OrtNr = Ort.OrtNr;
    END
GO

exec usp_ListOfDoctorsA2_5
go

