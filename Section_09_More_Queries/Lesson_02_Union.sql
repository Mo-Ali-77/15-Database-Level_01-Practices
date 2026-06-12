-- Lesson 02: Union

use HR_DB;

select * from ActiveEmployees

select * from ResignedEmployees


select * from ActiveEmployees
Union
select * from ResignedEmployees

--this will remove the redundancy from the resultset (distinct results only)
select * from Departments
union 
select * from Departments;

--this will append data regardeless of any redundancy
select * from Departments
union ALL
select * from Departments;