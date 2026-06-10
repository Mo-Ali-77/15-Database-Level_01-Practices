-- Lesson 01: Views

use HR_DB;

-- Create View Table for Avtive Employyes only.
Create View ActiveEmployees as
Select * From Employees
Where ExitDate is NULL;


-- Create View Table for Resigned Employyes only.
Create View ResignedEmployees as
Select * From Employees
Where ExitDate is NOT Null;


-- Applay the Views
Select *From ActiveEmployees
Where ID = 285;

Select *From ResignedEmployees
Where ID = 290;