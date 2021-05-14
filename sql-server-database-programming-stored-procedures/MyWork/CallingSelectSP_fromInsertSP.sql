USE Contacts;
GO
DROP PROCEDURE IF EXISTS dbo.InsertContactsModifiedOutput1
GO
CREATE PROCEDURE dbo.InsertContactsModifiedOutput1
(
	@FirstName VARCHAR(40),
	@LastName  VARCHAR(40),
	@DateOfBirth DATE=NULL,
	@AllowContactByPhone BIT,
	@ContactId INT OUTPUT
)
AS 
BEGIN;

SET NOCOUNT ON;

IF NOT EXISTS (SELECT 1 FROM dbo.Contacts 
WHERE FirstName=@FirstName AND LastName=@LastName AND DateOfBirth=@DateOfBirth)
BEGIN;
INSERT INTO dbo.Contacts (FirstName,LastName,DateOfBirth,AllowContactByPhone)
			VALUES(@FirstName,@LastName,@DateOfBirth,@AllowContactByPhone)

/*SELECT @ContactId=@@IDENTITY*/

SELECT @ContactId=SCOPE_IDENTITY()
END;
EXEC   [dbo].[SelectContacts] @ContactId= @ContactId

SET NOCOUNT OFF;

END;
