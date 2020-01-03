
GO
	

IF NOT EXISTS (SELECT * FROM PatientDrugMapping)
BEGIN

	INSERT INTO [dbo].[PatientDrugMapping] values (1, 1, 1, 1, 1, 5, GETDATE(), GETDATE(), 0, 1, 1)
	INSERT INTO [dbo].[PatientDrugMapping] values (2, 1, 2, 1, 1, 10, GETDATE(), GETDATE(), 0, 1, 1)

END
ELSE
BEGIN
	PRINT 'Data already exists in PatientDrugMapping Table'
	--UPDATE PatientDrugMapping SET DrugID = 1 WHERE UserId = 1
END
GO




