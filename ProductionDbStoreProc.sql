
---------------------------------------------------------------------------------------------------------------------------
--Store Procedure for US Database
---------------------------------------------------------------------------------------------------------------------------


USE RDBPROD
GO

--comment here

IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
'[RNDUACPART_READ]' 
AND SPECIFIC_SCHEMA = 'dbo')
	DROP PROCEDURE 
	[RNDUACPART_READ]
GO
CREATE PROCEDURE 
 [dbo].[RNDUACPART_READ] ( @MillLotID INT )
AS
BEGIN
	 DECLARE @DefaultMillLotID INT 
	 SET @DefaultMillLotID = -1

	IF EXISTS 
		(
		SELECT W.WorkOrdID AS MillLotID
		FROM Salesord S WITH(NOLOCK)
		INNER JOIN Workord W WITH(NOLOCK) ON S.SO_Num = W.SO_num AND W.WorkOrdID = @MillLotID
		)
		SELECT LTRIM(RTRIM(S.ALLOY)) AS [ALLOY], LTRIM(RTRIM(S.Temper)) AS Temper, S.UACPART, CONCAT(S.SO_NUM,'-',W.WO_NUM) AS SoNum,
		S.SEARCHPART AS CustPartNo, W.WorkOrdID AS MillLotID
		FROM Salesord S WITH(NOLOCK)
		INNER JOIN Workord W WITH(NOLOCK) ON S.SO_Num = W.SO_num AND W.WorkOrdID = @MillLotID
	ELSE		
		SELECT @DefaultMillLotID
		
END
GO


---------------------------------------------------------------------------------------------------------------------------
--Store Procedure for Romania Database
---------------------------------------------------------------------------------------------------------------------------

USE ROPROD
GO


IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
'[RNDUACPART_READ]' 
AND SPECIFIC_SCHEMA = 'dbo')
	DROP PROCEDURE 
	[RNDUACPART_READ]
GO
CREATE PROCEDURE 
 [dbo].[RNDUACPART_READ] ( @MillLotID INT )
AS
BEGIN
	DECLARE @DefaultMillLotID INT 
	 SET @DefaultMillLotID = -1

	IF EXISTS 
		(
		SELECT W.WorkOrdID AS MillLotID
		FROM Salesord S WITH(NOLOCK)
		INNER JOIN Workord W WITH(NOLOCK) ON S.SO_Num = W.SO_num AND W.WorkOrdID = @MillLotID
		)
		SELECT LTRIM(RTRIM(S.ALLOY)) AS [ALLOY], LTRIM(RTRIM(S.Temper)) AS Temper, S.UACPART, CONCAT(S.SO_NUM,'-',W.WO_NUM) AS SoNum,
		S.SEARCHPART AS CustPartNo, W.WorkOrdID AS MillLotID
		FROM Salesord S WITH(NOLOCK)
		INNER JOIN Workord W WITH(NOLOCK) ON S.SO_Num = W.SO_num AND W.WorkOrdID = @MillLotID
	ELSE		
		SELECT @DefaultMillLotID
END
GO


--IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
--'[RNDUACPART_READ]' 
--AND SPECIFIC_SCHEMA = 'dbo')
--	DROP PROCEDURE 
--	[RNDUACPART_READ]
--GO
--CREATE PROCEDURE 
-- [dbo].[RNDUACPART_READ] ( @MillLotID INT )
--AS
--BEGIN
--	SELECT LTRIM(RTRIM(S.ALLOY)) AS [ALLOY], LTRIM(RTRIM(S.Temper)) AS Temper, S.UACPART, CONCAT(S.SO_NUM,'-',W.WO_NUM) AS SoNum,
--	S.SEARCHPART AS CustPartNo, W.WorkOrdID AS MillLotID
--	FROM Salesord S WITH(NOLOCK)
--	INNER JOIN Workord W WITH(NOLOCK) ON S.SO_Num = W.SO_num AND W.WorkOrdID = @MillLotID
--END
--GO
----------------------------------------------


--comment here

--IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
--'[RNDUACPART_READ]' 
--AND SPECIFIC_SCHEMA = 'dbo')
--	DROP PROCEDURE 
--	[RNDUACPART_READ]
--GO
--CREATE PROCEDURE 
-- [dbo].[RNDUACPART_READ] (@UACPART numeric(8,0))
-- -- ( @MillLotID INT )
--AS
--BEGIN
--	SELECT LTRIM(RTRIM(S.ALLOY)) AS [ALLOY], LTRIM(RTRIM(S.Temper)) AS Temper, S.UACPART, CONCAT(S.SO_NUM,'-',W.WO_NUM) AS SoNum,
--	S.SEARCHPART AS CustPartNo, W.WorkOrdID AS MillLotID
--	FROM Salesord S WITH(NOLOCK)
--	INNER JOIN Workord W WITH(NOLOCK) ON S.SO_Num = W.SO_num AND s.UACPART = @UACPART
--	--W.WorkOrdID = @MillLotID
--END
--GO

--comment here

--IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
--'[[RNDUACVALIDTEMPER_READBYALLOY]]' 
--AND SPECIFIC_SCHEMA = 'dbo')
--	DROP PROCEDURE 
--	[RNDUACVALIDTEMPER_READBYALLOY]
--GO
--CREATE PROCEDURE 
-- [dbo].[RNDUACVALIDTEMPER_READBYALLOY] @Alloy char(6)
--AS
--BEGIN
--	SELECT DISTINCT LTRIM(RTRIM(S.Temper)) AS [Temper] FROM Salesord S WITH(NOLOCK)
--	INNER JOIN VALIDALLOYTEMPER VA WITH(NOLOCK)	ON VA.ALLOY = @Alloy            
--END
--GO



---------------------------------------------------------------------------------------------------------------------------
--Store Procedure for Romania Database
---------------------------------------------------------------------------------------------------------------------------

--USE ROPROD
--GO


--IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
--'[RNDUACPART_READ]' 
--AND SPECIFIC_SCHEMA = 'dbo')
--	DROP PROCEDURE 
--	[RNDUACPART_READ]
--GO
--CREATE PROCEDURE 
-- [dbo].[RNDUACPART_READ] ( @MillLotID INT )
--AS
--BEGIN
--	SELECT LTRIM(RTRIM(S.ALLOY)) AS [ALLOY], LTRIM(RTRIM(S.Temper)) AS Temper, S.UACPART, CONCAT(S.SO_NUM,'-',W.WO_NUM) AS SoNum,
--	S.SEARCHPART AS CustPartNo, W.WorkOrdID AS MillLotID
--	FROM Salesord S WITH(NOLOCK)
--	INNER JOIN Workord W WITH(NOLOCK) ON S.SO_Num = W.SO_num AND W.WorkOrdID = @MillLotID
--END
--GO
----comment here

--IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
--'[RNDUACPART_READ]' 
--AND SPECIFIC_SCHEMA = 'dbo')
--	DROP PROCEDURE 
--	[RNDUACPART_READ]
--GO
--CREATE PROCEDURE 
-- [dbo].[RNDUACPART_READ] (@UACPART numeric(8,0))
--AS
--BEGIN
--	SELECT LTRIM(RTRIM(S.ALLOY)) AS [ALLOY], LTRIM(RTRIM(S.Temper)) AS Temper, S.UACPART, CONCAT(S.SO_NUM,'-',W.WO_NUM) AS SoNum,
--	S.SEARCHPART AS CustPartNo, W.WorkOrdID AS MillLotID
--	FROM Salesord S WITH(NOLOCK)
--	INNER JOIN Workord W WITH(NOLOCK) ON S.SO_Num = W.SO_num AND s.UACPART = @UACPART
--END
--GO
--comment here


--comment here

--IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
--'[[RNDUACVALIDTEMPER_READBYALLOY]]' 
--AND SPECIFIC_SCHEMA = 'dbo')
--	DROP PROCEDURE 
--	[RNDUACVALIDTEMPER_READBYALLOY]
--GO
--CREATE PROCEDURE 
-- [dbo].[RNDUACVALIDTEMPER_READBYALLOY] @Alloy char(6)
--AS
--BEGIN
--	SELECT DISTINCT LTRIM(RTRIM(S.Temper)) AS [Temper] FROM Salesord S WITH(NOLOCK)
--	INNER JOIN VALIDALLOYTEMPER VA WITH(NOLOCK)	ON VA.ALLOY = @Alloy            
--END
--GO
