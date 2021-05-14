USE [Contacts]
GO

DROP PROCEDURE IF EXISTS [dbo].[SelectContacts]
GO

CREATE PROCEDURE [dbo].[SelectContacts]
AS 
BEGIN;
SELECT *FROM dbo.Contacts WHERE FirstName='Grace';
END;
GO


