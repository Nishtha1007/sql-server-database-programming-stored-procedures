USE Contacts;
GO
DROP PROCEDURE IF EXISTS dbo.InsertContactsModified
GO
CREATE PROCEDURE dbo.InsertContactsModified
(
	@FirstName VARCHAR(40),
	@LastName  VARCHAR(40),
	@DateOfBirth DATE=NULL,
	@AllowContactByPhone BIT
)
AS 
BEGIN;
DECLARE @ContactId INT;

INSERT INTO dbo.Contacts (FirstName,LastName,DateOfBirth,AllowContactByPhone)
			VALUES(@FirstName,@LastName,@DateOfBirth,@AllowContactByPhone)

/*SELECT @ContactId=@@IDENTITY*/

SELECT @ContactId=SCOPE_IDENTITY()
SELECT ContactId,FirstName,LastName,DateOfBirth,AllowContactByPhone FROM dbo.Contacts
WHERE ContactId= @ContactId
END;
