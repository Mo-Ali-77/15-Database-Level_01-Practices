-- Lesson 07: Select Top Statement

use HR_DB;

Select * from Employees;


-- This will show top 5 employees.
Select top 5 * from Employees;


-- This will show top 10% of the data.
select top 10 percent * from Employees;

-- this will show the all salaries ordered from the heighest to lowest.
select  MonthlySalary from Employees
order by MonthlySalary Desc;



-- this will show the all salaries ordered from the heighest to lowest without redundancy.
select distinct MonthlySalary from Employees
order by MonthlySalary Desc;

-- this will show the heighest 3 salaries.
select  distinct  top 3 MonthlySalary from Employees
order by MonthlySalary Desc;


--This will show all employees who takes one of the heighest 3 salaries.

select ID, FirstName, MonthlySalary from Employees
where MonthlySalary In
(
	select  distinct  top 3 MonthlySalary from employees
	order by MonthlySalary Desc
)
Order By MonthlySalary Desc;



--This will show all employees who takes one of the Lowest 3 salaries.
select ID, FirstName, MonthlySalary from Employees where MonthlySalary In
(
	select distinct top 3 MonthlySalary from Employees
	order by MonthlySalary ASC
)
Order By MonthlySalary ASC
