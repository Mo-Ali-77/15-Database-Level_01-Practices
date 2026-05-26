-- Lesson 05: Drop Database is Exists
if Exists(Select * From sys.databases where name = 'DB2')
	Begin
		Drop Database DB2
	End
