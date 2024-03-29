
GO
/****** Object:  StoredProcedure [dbo].[Sp_UpdateProviderForUser]    Script Date: 12/12/2019 6:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Sp_UpdateProviderForUser]
	@UserId INT,
	@ProviderId INT
AS
BEGIN TRY

	UPDATE [dbo].[PatientDrugMapping] SET ProviderID = @ProviderId WHERE UserId = @UserId

END TRY
BEGIN CATCH
SELECT ERROR_LINE(),
		ERROR_MESSAGE(),
		ERROR_PROCEDURE()

END CATCH
