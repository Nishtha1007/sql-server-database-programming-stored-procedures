USE Contacts;
GO
DECLARE @ContactIdOut INT;

EXEC dbo.InsertContactsModifiedOutput 
@FirstName='VER2',
@LastName='VER21',
@AllowContactByPhone=0
@ContactId=@ContactIdOut;

select *from Contacts where ContactId=@ContactId order by ContactId desc;