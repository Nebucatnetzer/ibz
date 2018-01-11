use Berater;
go

create FUNCTION fBestverdiener()
RETURNS varchar(100)

AS BEGIN
DECLARE @nr int,
    @nachname varchar(50),
    @vorname varchar(50),
    @aufgabe varchar(30)
--set nocount on

SELECT @nr = b.BERATERID,
    @nachname = b.BERATERNAME,
    @aufgabe = a.AUFGABE
FROM BERATER b INNER JOIN AUFGABE a
ON b.AUFGABEID = a.AUFGABEID
WHERE b.STUNDENLOHN = (SELECT MAX(STUNDENLOHN)
FROM BERATER)

Return convert(varchar,@nr) + ',' + @nachname + ',' + @aufgabe
END
go


select dbo.fBestverdiener(), BERATERNAME FROM BERATER;
