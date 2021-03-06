USE [STEAM]
GO
--CREATION DATE TABLE WITH ID CONTROL
CREATE PROC [DBO].[SPLOGICDATE]
AS
SELECT T.[ID]
      ,YEAR(T.RECORDTIME) YEAR
	  ,MONTH(T.RECORDTIME) MONTH
	  ,DAY(T.RECORDTIME) DAY
	  ,DATEPART(WEEKDAY,T.RECORDTIME) WEEKNAME
	  ,DATENAME(WEEKDAY,T.RECORDTIME)
      ,[RECORDPRICE]      
FROM [STEAM].[DBO].[SPRICE] T

