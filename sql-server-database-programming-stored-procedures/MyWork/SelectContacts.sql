USE [Contacts]
GO

DROP PROCEDURE IF EXISTS [dbo].[SelectContacts]
GO

CREATE PROCEDURE [dbo].[SelectContacts]
(
@ContactId INT
)
AS 
BEGIN;

SET NOCOUNT ON;

SELECT *FROM dbo.Contacts WHERE ContactId= @ContactId

SET NOCOUNT OFF;
END;
GO


