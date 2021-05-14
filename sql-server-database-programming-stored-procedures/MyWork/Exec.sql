USE Contacts;
GO
DECLARE @ContactIdOut INT;

EXEC dbo.InsertContactsModifiedOutput1 
@FirstName='BL1',
@LastName='BL12',
@DateOfBirth='1992-01-10',
@AllowContactByPhone=0,
@ContactId=@ContactIdOut OUTPUT;

--select *from Contacts where ContactId=@ContactIdOut order by ContactId desc;


SELECT *FROM  Contacts 