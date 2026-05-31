-- Lesson 08: Between Operator

use HR_DB;

Select * from Employees where
(MonthlySalary >=500 and MonthlySalary <=1000)


Select * from Employees where
MonthlySalary Between 500 and 1000;


-- Exercise:
-- Get employees hired between January 1, 2020, and December 31, 2025, provided they are in departments 1, 3, or 5.

-- The solution is the query below
select ID, FullName = FirstName + ' ' + LastName from Employees
Where DepartmentID in(1,3,5) and HireDate Between '2020-01-01' and  '2025-12-31';