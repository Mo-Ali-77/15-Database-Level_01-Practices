--Lesson 01: Buckup Database (Full Backup)
-- Nessesary Executed in master Database
Use master;
Backup Database DB1
	To Disk = 'D:\SQL Server Manager Studio\Buckups\DB1_Full.bak';
