-- Lesson 02: Differential Backup
Use master;
Backup Database DB1
	To Disk = 'D:\SQL Server Manager Studio\Buckups\DB1_Diff.bak'
	With Differential;
