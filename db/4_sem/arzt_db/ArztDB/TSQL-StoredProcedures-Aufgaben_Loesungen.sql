-- Solutions for the TSQL-StoredProcedures-Aufgaben.pdf document
--
-- Author: Andreas Zweili
-- 2017-11-04
-- SQLServer 2016

use ArztDB;
go

--A2.1
CREATE PROCEDURE uspScores
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
EXEC uspScores 10, 9, 8, 8, 10, @SumScore OUTPUT
SELECT 'The Sum Score is: ', @SumScore
GO

--A2.2
declare @SumScore smallint = 0
exec uspScores
    @value1 = 10,
    @value2 = 9,
    @value3 = 8,
    @value4 = 8,
    @value5 = 10,
    @result = @Sumscore OUTPUT

Select 'Die Summe ist: ', @SumScore
go

--A2.3
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