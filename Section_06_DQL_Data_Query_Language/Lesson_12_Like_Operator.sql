-- Lesson 12: Like Operator

Use HR_DB;

select * from Employees;

--Finds any values that start with "a"
select ID, FirstName from Employees
where FirstName like 'a%';

--Finds any values that end with "a"
select ID, FirstName from Employees
where FirstName like '%a';

--Finds any values that have "tell" in any position
select ID, FirstName from Employees
where FirstName like '%tell%';

--	Finds any values that start with "a" and ends with "a"
select ID, FirstName from Employees
where FirstName like 'a%a';

--Finds any values that have "a" in the second position
select ID, FirstName from Employees
where FirstName like '_a%';

--Finds any values that have "a" in the third position
select ID, FirstName from Employees
where FirstName like '__a%';

--Finds any values that start with "a" and are at least 3 characters in length
select ID, FirstName from Employees
where FirstName like 'a__%';

--Finds any values that start with "a" and are at least 4 characters in length
select ID, FirstName from Employees
where FirstName like 'a___%';

--Finds any values that start with "a"
select ID, FirstName from Employees
where FirstName like 'a%' or FirstName like 'b%' ;



-- Exercise:
-- 01:  Show employees whose names begin with the letter M.
Select FirstName From Employees
Where FirstName Like 'M%'

-- 02: Show employees whose last names end with the letter N.
Select FirstName From Employees
Where FirstName Like '%N'

-- 03: Show employees whose names contain: ah
Select FirstName From Employees
Where FirstName Like '%ah%'

-- 04: Show employees whose name starts with the letter “m”
Select FirstName From Employees
Where FirstName Like '__m%'

-- 05: Show employees whose names begin with A or B.
Select FirstName From Employees
Where FirstName Like '%A' OR FirstName Like '%B'

-- 06: Show employees whose: names start with B and end with a
Select FirstName From Employees
Where FirstName Like 'B%a'

-- 07: Show employees whose: second letter = a and fourth letter = e
Select FirstName From Employees
Where FirstName Like '_a%' and FirstName Like '___e%'


-- Another Exercise: I need a report on departments 1, 2, and 4:
-- 1. I want the total salaries for each department.
-- 2. I want the average for each department.
-- However, under the following conditions:
-- 1. I want the first name of employees whose second letter is “a”.
-- 2. The salaries of these employees are not between 500 and 1000.
-- 3- I want the results sorted in ascending order.

-- Solution:
Select DepartmentID, TotalSalary = Sum(MonthlySalary), AverageSalary = AVG(MonthlySalary) From Employees
Where FirstName Like '_a%' and MonthlySalary NOT Between 500 and 1000 and DepartmentID in(1,2,4)
Group By DepartmentID
Order By DepartmentID;


