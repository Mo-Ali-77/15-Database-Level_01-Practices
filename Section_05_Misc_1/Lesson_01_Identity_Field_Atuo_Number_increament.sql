-- Lesson 01: Identity Field (Atuo Number increament)

Use DB1;

Create Table Departements (
	ID int identity (1,1) Not Null,
	Name nvarchar(50) Not Null,
	Primary Key (ID)
	);

Insert into Departements
	Values('HR'),('Cybersecurity'), ('IT'), ('Software Engeniring');

Select * From Departements;

