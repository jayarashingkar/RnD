---------------------------------------------------------------------------------------------------------------------
--************************************************************************************************************
-- Functions 
--************************************************************************************************************
---------------------------------------------------------------------------------------------------------------------
--[fnSplitValues]

IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 'fnSplitValues' AND SPECIFIC_SCHEMA = 'dbo')
	DROP FUNCTION [dbo].[fnSplitValues]
GO
CREATE FUNCTION [dbo].[fnSplitValues]
(
	@IDs NVARCHAR(MAX),
	@splitBy VARCHAR(1)
)
RETURNS 
@SplitValues TABLE 
(
	ID int
)
AS
BEGIN
	-- Fill the table variable with the rows for your result set
	IF @splitBy IS NULL
		SET @splitBy = ','
	DECLARE @xml xml
	SET @xml = N'<root><r>' + replace(@IDs,@splitBy,'</r><r>') + '</r></root>'

	INSERT INTO @SplitValues(ID)
	SELECT r.value('.','int')
	FROM @xml.nodes('//root/r') as records(r)

	RETURN
END
GO


--[GetStudyScope]

IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 'GetStudyScope' AND SPECIFIC_SCHEMA = 'dbo')
DROP FUNCTION [dbo].[GetStudyScope]
GO
CREATE FUNCTION GetStudyScope
(
    @workStudyId VARCHAR(50)
)
RETURNS VARCHAR(100)
AS
BEGIN
    Declare @value varchar(100) = ''
	SELECT @value = StudyScope FROM RNDStudyScope WHERE RTRIM(WorkStudyID)=RTRIM(@workStudyId)
    RETURN RTRIM(@value)
END
GO


---[GetSelectValue]

IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 'GetSelectValue' AND SPECIFIC_SCHEMA = 'dbo')
DROP FUNCTION [dbo].[GetSelectValue]
GO
CREATE FUNCTION GetSelectValue
(
    @tname VARCHAR(50),
	@colName VARCHAR(50)=NULL,
	@colValue VARCHAR(100)=NULL
)
RETURNS VARCHAR(100)
AS
BEGIN
    Declare @value varchar(100) = ''
	IF(@tname ='RNDStudyType')
		BEGIN
			SELECT @value = TypeDesc FROM RNDStudyType WHERE RTRIM(TypeStudy)=RTRIM(@colValue)
		END
	ELSE IF(@tname ='RNDStudyStatus')
		BEGIN
			SELECT @value = StatusDesc FROM RNDStudyStatus WHERE RTRIM(StudyStatus)=RTRIM(@colValue)
		END
	ELSE IF(@tname ='RNDLocation')
		BEGIN
			SELECT @value = PlantDesc FROM RNDLocation WHERE RTRIM(PlantState)=RTRIM(@colValue)
		END
    RETURN RTRIM(@value)
END
GO