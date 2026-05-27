-- Lesson 02: Rename Column
Use DB1;

-- This Script can you work in all Another Databases like Oracle MySQL elc.. 
--Alter Table Employees
--	Rename Column Gender To Gendor

exec sp_rename 'Employees.Gendor', 'Gender', 'Column';
