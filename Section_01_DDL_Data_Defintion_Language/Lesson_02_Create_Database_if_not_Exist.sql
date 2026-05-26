-- Lesson 02: Create Database if not Exist
if NOT Exists(Select * From sys.databases where name = 'DB2')
	Begin
		Create Database DB2
	End
-- Show All Databases
Select * from sys.databases;
