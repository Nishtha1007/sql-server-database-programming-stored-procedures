USE Contacts;
GO
CREATE PROCEDURE dbo.InsertContacts
AS 
BEGIN;
DECLARE @FirstName VARCHAR(40),
		@LastName  VARCHAR(40),
		@DateOfBirth DATE,
		@AllowContactByPhone BIT

SELECT @FirstName='Nishtha',
		@LastName='Prasad',
		@DateOfBirth='1999-01-10',
		@AllowContactByPhone=0
INSERT INTO dbo.Contacts (FirstName,LastName,DateOfBirth,AllowContactByPhone)
			VALUES(@FirstName,@LastName,@DateOfBirth,@AllowContactByPhone)


END;

EXEC dbo.InsertContacts;

EXEC dbo.SelectContacts


select *from dbo.Contacts