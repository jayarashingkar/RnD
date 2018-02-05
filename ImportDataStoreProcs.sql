--Comment here
 
 IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
'[RNDTension_Insert]'
AND SPECIFIC_SCHEMA = 'dbo')
DROP PROCEDURE
RNDTension_Insert
GO
CREATE PROCEDURE 
 [dbo].RNDTension_Insert
		@WorkStudyID char(10),
        @TestNo int,
        @SubConduct numeric(4,1),
        @SurfConduct numeric(4,1),
        @FtuKsi numeric(4,1),
        @FtyKsi numeric(4,1),
        @eElongation numeric(4,1),
        @EModulusMpsi numeric(4,1),
        @SpeciComment char(50),
        @Operator char(20),
        @TestDate datetime,
        @TestTime char(15),
        @EntryBy char(25),
        @EntryDate datetime,
        @Completed char(1)
AS
BEGIN		
	INSERT INTO [dbo].[RNDTensionResults]
           ([WorkStudyID]
           ,[TestNo]
           ,[SubConduct]
           ,[SurfConduct]
           ,[FtuKsi]
           ,[FtyKsi]
           ,[eElongation]
           ,[EModulusMpsi]
           ,[SpeciComment]
           ,[Operator]
           ,[TestDate]
           ,[TestTime]
           ,[EntryBy]
           ,[EntryDate]
           ,[Completed])
     VALUES
	 (
	 	@WorkStudyID , 
		@TestNo ,
        @SubConduct ,
        @SurfConduct ,
        @FtuKsi ,
        @FtyKsi ,
        @eElongation ,
        @EModulusMpsi ,
        @SpeciComment ,
        @Operator ,
        @TestDate ,
        @TestTime ,
        @EntryBy ,
        @EntryDate ,
        @Completed 
	 )

    DECLARE @RecId int

	SELECT @RecId = [RecID]
	FROM [dbo].[RNDTensionResults]
	WHERE @@ROWCOUNT > 0 AND [RecID] = scope_identity()

	SELECT t0.[RecID]
	FROM [dbo].[RNDTensionResults] AS t0
	WHERE @@ROWCOUNT > 0 AND t0.[RecID] = @RecId
END

GO

--[RNDCompressionResults]
 
 IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
'[RNDCompression_Insert]'
AND SPECIFIC_SCHEMA = 'dbo')
DROP PROCEDURE
RNDCompression_Insert
GO
CREATE PROCEDURE 
 [dbo].RNDCompression_Insert
		@WorkStudyID char(10),
        @TestNo int,
        @SubConduct numeric(4,1),
        @SurfConduct numeric(4,1),
        @FcyKsi numeric(4,1),
        @EcModulusMpsi numeric(4,1),
        @SpeciComment char(50),
        @Operator char(20),
        @TestDate datetime,
        @TestTime char(15),
        @EntryBy char(25),
        @EntryDate datetime,
        @Completed char(1)
AS
BEGIN		
	INSERT INTO [dbo].[RNDCompressionResults]
           ([WorkStudyID]
      ,[TestNo]
      ,[SubConduct]
      ,[SurfConduct]
      ,[FcyKsi]
      ,[EcModulusMpsi]
      ,[SpeciComment]
      ,[Operator]
      ,[TestDate]
      ,[TestTime]
      ,[EntryBy]
      ,[EntryDate]
      ,[Completed])
     VALUES
	 (
	 	@WorkStudyID , 
		@TestNo ,
        @SubConduct ,
        @SurfConduct ,
        @FcyKsi ,   
        @EcModulusMpsi ,
        @SpeciComment ,
        @Operator ,
        @TestDate ,
        @TestTime ,
        @EntryBy ,
        @EntryDate ,
        @Completed 
	 )

    DECLARE @RecId int

	SELECT @RecId = [RecID]
	FROM [dbo].[RNDCompressionResults]
	WHERE @@ROWCOUNT > 0 AND [RecID] = scope_identity()

	SELECT t0.[RecID]
	FROM [dbo].[RNDCompressionResults] AS t0
	WHERE @@ROWCOUNT > 0 AND t0.[RecID] = @RecId
END

GO

--[RNDBearing_Insert]
 
 IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
'[RNDBearing_Insert]'
AND SPECIFIC_SCHEMA = 'dbo')
DROP PROCEDURE
RNDBearing_Insert
GO
CREATE PROCEDURE 
 [dbo].RNDBearing_Insert
		@WorkStudyID char(10),
        @TestNo int,
        @SubConduct numeric(4,1),
        @SurfConduct numeric(4,1),
		@eDCalc numeric(4,1),
        @FbruKsi numeric(4,1),
		@FbryKsi numeric(4,1),      
        @SpeciComment char(50),
        @Operator char(20),
        @TestDate datetime,
        @TestTime char(15),
        @EntryBy char(25),
        @EntryDate datetime,
        @Completed char(1)
AS
BEGIN		
	INSERT INTO [dbo].[RNDBearingResults]
      ([WorkStudyID]
      ,[TestNo]
      ,[SubConduct]
      ,[SurfConduct]
	  ,[eDCalc]
      ,[FbruKsi]
	  ,[FbryKsi]      
      ,[SpeciComment]
      ,[Operator]
      ,[TestDate]
      ,[TestTime]
      ,[EntryBy]
      ,[EntryDate]
      ,[Completed])
     VALUES
	 (
	 	@WorkStudyID , 
		@TestNo ,
        @SubConduct ,
        @SurfConduct ,
		@eDCalc,
        @FbruKsi ,   
        @FbryKsi ,
        @SpeciComment ,
        @Operator ,
        @TestDate ,
        @TestTime ,
        @EntryBy ,
        @EntryDate ,
        @Completed 
	 )

    DECLARE @RecId int

	SELECT @RecId = [RecID]
	FROM [dbo].[RNDBearingResults]
	WHERE @@ROWCOUNT > 0 AND [RecID] = scope_identity()

	SELECT t0.[RecID]
	FROM [dbo].[RNDBearingResults] AS t0
	WHERE @@ROWCOUNT > 0 AND t0.[RecID] = @RecId
END

GO

--[RNDShear_Insert]
 
 IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
'[RNDShear_Insert]'
AND SPECIFIC_SCHEMA = 'dbo')
DROP PROCEDURE
RNDShear_Insert
GO
CREATE PROCEDURE 
 [dbo].RNDShear_Insert
		@WorkStudyID char(10),
        @TestNo int,
        @SubConduct numeric(4,1),
        @SurfConduct numeric(4,1),
		@FsuKsi numeric(4,1),     
        @SpeciComment char(50),
        @Operator char(20),
        @TestDate datetime,
        @TestTime char(15),
        @EntryBy char(25),
        @EntryDate datetime,
        @Completed char(1)
AS
BEGIN		
	INSERT INTO [dbo].[RNDShearResults]
      ([WorkStudyID]
      ,[TestNo]
      ,[SubConduct]
      ,[SurfConduct]
      ,[FsuKsi]    
      ,[SpeciComment]
      ,[Operator]
      ,[TestDate]
      ,[TestTime]
      ,[EntryBy]
      ,[EntryDate]
      ,[Completed])
     VALUES
	 (
	 	@WorkStudyID , 
		@TestNo ,
        @SubConduct ,
        @SurfConduct ,
		@FsuKsi,
        @SpeciComment ,
        @Operator ,
        @TestDate ,
        @TestTime ,
        @EntryBy ,
        @EntryDate ,
        @Completed 
	 )

    DECLARE @RecId int

	SELECT @RecId = [RecID]
	FROM [dbo].[RNDShearResults]
	WHERE @@ROWCOUNT > 0 AND [RecID] = scope_identity()

	SELECT t0.[RecID]
	FROM [dbo].[RNDShearResults] AS t0
	WHERE @@ROWCOUNT > 0 AND t0.[RecID] = @RecId
END

GO

--[RNDFractureToughnessResults] FractureToughness
 
 IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
'[RNDFractureToughness_Insert]'
AND SPECIFIC_SCHEMA = 'dbo')
DROP PROCEDURE
RNDFractureToughness_Insert
GO
CREATE PROCEDURE 
 [dbo].RNDFractureToughness_Insert
		@WorkStudyID char(10),
        @TestNo int,
        @SubConduct numeric(4,1),
        @SurfConduct numeric(4,1),
		@Validity char(20),
        @KKsiIn numeric(4,1),
		@KmaxKsiIn numeric(4,1),
         @PqLBS numeric(7,0),
           @PmaxLBS numeric(7,0),
           @aOIn numeric(7,4),
           @WIn numeric(7,4),
           @BIn numeric(7,4),
           @BnIn numeric(7,4),
           @AvgFinalPreCrack numeric(7,4),
           @SpeciComment char(50),
           @Operator char(20),
           @TestDate datetime,
           @TestTime char(15),
           @EntryBy char(25),
           @EntryDate datetime,
           @Completed char(1)
AS
BEGIN		
	INSERT INTO [dbo].RNDFractureToughnessResults
      ([WorkStudyID]
      ,[TestNo]
      ,[SubConduct]
      ,[SurfConduct]
	  ,[Validity]
      ,[KKsiIn]
	  ,[KmaxKsiIn]
	  ,[PqLBS]
      ,[PmaxLBS]
      ,[aOIn]
      ,[WIn]
      ,[BIn]
      ,[BnIn]
      ,[AvgFinalPreCrack]
      ,[SpeciComment]
      ,[Operator]
      ,[TestDate]
      ,[TestTime]
      ,[EntryBy]
      ,[EntryDate]
      ,[Completed])
     VALUES
	 (
	 	@WorkStudyID,
        @TestNo ,
        @SubConduct ,
        @SurfConduct,
		@Validity ,
        @KKsiIn ,
		@KmaxKsiIn ,
        @PqLBS ,
        @PmaxLBS ,
        @aOIn ,
        @WIn ,
        @BIn ,
        @BnIn ,
        @AvgFinalPreCrack ,
        @SpeciComment ,
        @Operator ,
        @TestDate ,
        @TestTime ,
        @EntryBy ,
        @EntryDate ,
        @Completed 
	 )

    DECLARE @RecId int

	SELECT @RecId = [RecID]
	FROM [dbo].RNDFractureToughnessResults
	WHERE @@ROWCOUNT > 0 AND [RecID] = scope_identity()

	SELECT t0.[RecID]
	FROM [dbo].RNDFractureToughnessResults AS t0
	WHERE @@ROWCOUNT > 0 AND t0.[RecID] = @RecId
END

GO

--[RNDNotchYield_Insert] NotchYield
 
 IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
'[RNDNotchYield_Insert]'
AND SPECIFIC_SCHEMA = 'dbo')
DROP PROCEDURE
RNDNotchYield_Insert
GO
CREATE PROCEDURE 
 [dbo].RNDNotchYield_Insert
		@WorkStudyID char(10),
        @TestNo int,
        @SubConduct numeric(4,1),
        @SurfConduct numeric(4,1),
		@NotchStrengthKsi numeric(4,1),
        @YieldStrengthKsi numeric(3,0),
        @NotchYieldRatio numeric(5,3),
        @SpeciComment char(50),
        @Operator char(20),
        @TestDate datetime,
        @TestTime char(15),
        @EntryBy char(25),
        @EntryDate datetime,
        @Completed char(1)
AS
BEGIN		
	INSERT INTO [dbo].[RNDNotchYieldResults]
		([WorkStudyID]
		,[TestNo]
		,[SubConduct]
		,[SurfConduct]
		,[NotchStrengthKsi]
		,[YieldStrengthKsi]
		,[NotchYieldRatio]
		,[SpeciComment]
		,[Operator]
		,[TestDate]
		,[TestTime]
		,[EntryBy]
		,[EntryDate]
		,[Completed])
     VALUES
	 (
	 	@WorkStudyID
		,@TestNo
		,@SubConduct
		,@SurfConduct
		,@NotchStrengthKsi
		,@YieldStrengthKsi
		,@NotchYieldRatio
		,@SpeciComment
		,@Operator
		,@TestDate
		,@TestTime
		,@EntryBy
		,@EntryDate
		,@Completed
	 )

    DECLARE @RecId int

	SELECT @RecId = [RecID]
	FROM [dbo].[RNDNotchYieldResults]
	WHERE @@ROWCOUNT > 0 AND [RecID] = scope_identity()

	SELECT t0.[RecID]
	FROM [dbo].[RNDNotchYieldResults] AS t0
	WHERE @@ROWCOUNT > 0 AND t0.[RecID] = @RecId
END

GO

--[[RNDResidualStrengthResults]] ResidualStrength
 
 IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
'[RNDResidualStrength_Insert]'
AND SPECIFIC_SCHEMA = 'dbo')
DROP PROCEDURE
RNDResidualStrength_Insert
GO
CREATE PROCEDURE 
 [dbo].RNDResidualStrength_Insert
		@WorkStudyID char(10),
        @TestNo int,
        @SubConduct numeric(4,1),
        @SurfConduct numeric(4,1),
		@Validity char(5),
        @ResidualStrength numeric(4,1),
        @PmaxLBS numeric(7,0),
        @WIn numeric(7,4),
        @BIn numeric(7,4),
        @AvgFinalPreCrack numeric(7,4),
        @SpeciComment char(50),
        @Operator char(20),
        @TestDate datetime,
        @TestTime char(15),
        @EntryBy char(25),
        @EntryDate datetime,
        @Completed char(1)
AS
BEGIN		
	INSERT INTO [dbo].RNDResidualStrengthResults
		([WorkStudyID]
		,[TestNo]
		,[SubConduct]
		,[SurfConduct]
		,[Validity]
        ,[ResidualStrength]
        ,[PmaxLBS]
        ,[WIn]
        ,[BIn]
        ,[AvgFinalPreCrack]
        ,[SpeciComment]
        ,[Operator]
        ,[TestDate]
        ,[TestTime]
        ,[EntryBy]
        ,[EntryDate]
        ,[Completed])
     VALUES
	 (
	 	@WorkStudyID
		,@TestNo
		,@SubConduct
		,@SurfConduct
		,@Validity
        ,@ResidualStrength
        ,@PmaxLBS
        ,@WIn
        ,@BIn
        ,@AvgFinalPreCrack
        ,@SpeciComment
        ,@Operator
        ,@TestDate
        ,@TestTime
        ,@EntryBy
        ,@EntryDate
        ,@Completed
	 )

    DECLARE @RecId int

	SELECT @RecId = [RecID]
	FROM [dbo].RNDResidualStrengthResults
	WHERE @@ROWCOUNT > 0 AND [RecID] = scope_identity()

	SELECT t0.[RecID]
	FROM [dbo].RNDResidualStrengthResults AS t0
	WHERE @@ROWCOUNT > 0 AND t0.[RecID] = @RecId
END

GO

--[RNDModulusTensionResults] ModulusTension
 
 IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
'[RNDModulusTension_Insert]'
AND SPECIFIC_SCHEMA = 'dbo')
DROP PROCEDURE
RNDModulusTension_Insert
GO
CREATE PROCEDURE 
 [dbo].RNDModulusTension_Insert
		@WorkStudyID char(10),
        @TestNo int,
        @SubConduct numeric(4,1),
        @SurfConduct numeric(4,1),
		@EModulusTension numeric(4,1),
        @SpeciComment char(50),
        @Operator char(20),
        @TestDate datetime,
        @TestTime char(15),
        @EntryBy char(25),
        @EntryDate datetime,
        @Completed char(1)
AS
BEGIN		
	INSERT INTO [dbo].RNDModulusTensionResults
      ([WorkStudyID]
      ,[TestNo]
      ,[SubConduct]
      ,[SurfConduct]
	  ,[EModulusTension]      
      ,[SpeciComment]
      ,[Operator]
      ,[TestDate]
      ,[TestTime]
      ,[EntryBy]
      ,[EntryDate]
      ,[Completed])
     VALUES
	 (
	 	@WorkStudyID,
        @TestNo ,
        @SubConduct ,
        @SurfConduct,
		@EModulusTension ,       
        @SpeciComment ,
        @Operator ,
        @TestDate ,
        @TestTime ,
        @EntryBy ,
        @EntryDate ,
        @Completed 
	 )

    DECLARE @RecId int

	SELECT @RecId = [RecID]
	FROM [dbo].RNDModulusTensionResults
	WHERE @@ROWCOUNT > 0 AND [RecID] = scope_identity()

	SELECT t0.[RecID]
	FROM [dbo].RNDModulusTensionResults AS t0
	WHERE @@ROWCOUNT > 0 AND t0.[RecID] = @RecId
END

GO



-------

--[RNDModulusCompression_Insert] 
 
 IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
'[RNDModulusCompression_Insert]'
AND SPECIFIC_SCHEMA = 'dbo')
DROP PROCEDURE
RNDModulusCompression_Insert
GO
CREATE PROCEDURE 
 [dbo].RNDModulusCompression_Insert
		@WorkStudyID char(10),
        @TestNo int,
        @SubConduct numeric(4,1),
        @SurfConduct numeric(4,1),
		@EModulusCompression numeric(4,1),		
        @SpeciComment char(50),
        @Operator char(20),
        @TestDate datetime,
        @TestTime char(15),
        @EntryBy char(25),
        @EntryDate datetime,
        @Completed char(1)
AS
BEGIN		
	INSERT INTO [dbo].[RNDModulusCompressionResults]	
      ([WorkStudyID]
      ,[TestNo]
      ,[SubConduct]
      ,[SurfConduct]
	  ,[EModulusCompression]      
      ,[SpeciComment]
      ,[Operator]
      ,[TestDate]
      ,[TestTime]
      ,[EntryBy]
      ,[EntryDate]
      ,[Completed])
     VALUES
	 (
	 	@WorkStudyID,
        @TestNo ,
        @SubConduct ,
        @SurfConduct,
		@EModulusCompression ,       
        @SpeciComment ,
        @Operator ,
        @TestDate ,
        @TestTime ,
        @EntryBy ,
        @EntryDate ,
        @Completed 
	 )

    DECLARE @RecId int

	SELECT @RecId = [RecID]
	FROM [dbo].[RNDModulusCompressionResults]
	WHERE @@ROWCOUNT > 0 AND [RecID] = scope_identity()

	SELECT t0.[RecID]
	FROM [dbo].[RNDModulusCompressionResults] AS t0
	WHERE @@ROWCOUNT > 0 AND t0.[RecID] = @RecId
END

GO



-------

--[RNDFatigueTesting_Insert] 
 
 IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE  ROUTINE_NAME = 
'[RNDFatigueTesting_Insert]'
AND SPECIFIC_SCHEMA = 'dbo')
DROP PROCEDURE
RNDFatigueTesting_Insert
GO
CREATE PROCEDURE 
 [dbo].RNDFatigueTesting_Insert
		@WorkStudyID char(10),  
		@TestNo int,
        @SpecimenDrawing char(50),
        @MinStress numeric(4,1),
        @MaxStress numeric(4,1),
        @MinLoad numeric(7,2),
        @MaxLoad numeric(7,2),
        @WidthOrDia numeric(8,5),
        @Thickness numeric(8,5),
        @HoleDia numeric(8,5),
        @AvgChamferDepth numeric(8,5),
        @Frequency char(5),
        @CyclesToFailure numeric(8,0),
        @Roughness numeric(5,2),
        @TestFrame char(5),
        @Comment char(50),
        @FractureLocation char(50),
        @Operator char(20),
        @TestDate datetime,
        @TestTime char(15),
        @EntryBy char(25),
        @EntryDate datetime,
        @Completed char(1)
AS
BEGIN		
	INSERT INTO [dbo].[RNDFatigueTestingResults]	
     (
			[WorkStudyID]     
		   ,[TestNo]    
           ,[SpecimenDrawing]
           ,[MinStress]
           ,[MaxStress]
           ,[MinLoad]
           ,[MaxLoad]
           ,[WidthOrDia]
           ,[Thickness]
           ,[HoleDia]
           ,[AvgChamferDepth]
           ,[Frequency]
           ,[CyclesToFailure]
           ,[Roughness]
           ,[TestFrame]
           ,[Comment]
           ,[FractureLocation]
           ,[Operator]
           ,[TestDate]
           ,[TestTime]
           ,[EntryBy]
           ,[EntryDate]
           ,[Completed])
     VALUES
	 (
	 		@WorkStudyID          
		   ,@TestNo
           ,@SpecimenDrawing
           ,@MinStress
           ,@MaxStress
           ,@MinLoad
           ,@MaxLoad
           ,@WidthOrDia
           ,@Thickness
           ,@HoleDia
           ,@AvgChamferDepth
           ,@Frequency
           ,@CyclesToFailure
           ,@Roughness
           ,@TestFrame
           ,@Comment
           ,@FractureLocation
           ,@Operator
           ,@TestDate
           ,@TestTime
           ,@EntryBy
           ,@EntryDate
           ,@Completed)

    DECLARE @RecId int

	SELECT @RecId = [RecID]
	FROM [dbo].[RNDFatigueTestingResults]
	WHERE @@ROWCOUNT > 0 AND [RecID] = scope_identity()

	SELECT t0.[RecID]
	FROM [dbo].[RNDFatigueTestingResults] AS t0
	WHERE @@ROWCOUNT > 0 AND t0.[RecID] = @RecId
END

GO
