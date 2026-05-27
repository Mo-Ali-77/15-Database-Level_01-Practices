-- Lesson 03: Restore Database
-- Full Database without Diff
Use master;
Restore Database DB1
	From Disk = 'D:\SQL Server Manager Studio\Buckups\DB1_Full.bak';

-- Full Database with wiatting Diff files
Use master;
Restore Database DB1
	From Disk = 'D:\SQL Server Manager Studio\Buckups\DB1_Full.bak'
	with NoRecovery;
	
Restore Database DB1
	From Disk = 'D:\SQL Server Manager Studio\Buckups\DB1_Diff.bak'
	with Recovery;

