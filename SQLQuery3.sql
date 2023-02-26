
use NORTHWND 
go

Alter table Customers
Add CustorName nvarchar(40)
go

update Customers
set CustomerName=CompanyName