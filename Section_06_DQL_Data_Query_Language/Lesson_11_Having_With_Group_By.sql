-- Lesson 11: Having statement

use HR_DB;

select DepartmentID, TotalCount=Count(MonthlySalary), 
	   TotalSum=Sum(MonthlySalary),
	   Average=Avg(MonthlySalary),
	   MinSalary=Min(MonthlySalary),
	   MaxSalary=Max(MonthlySalary) 
	   
	   from Employees
	
       Group By DepartmentID
	  
	   order by DepartmentID


--Having is the where satement for group by
select DepartmentID, TotalCount=Count(MonthlySalary), 
	   TotalSum=Sum(MonthlySalary),
	   Average=Avg(MonthlySalary),
	   MinSalary=Min(MonthlySalary),
	   MaxSalary=Max(MonthlySalary) 
	   
	   from Employees
       Group By DepartmentID
	  having Count(MonthlySalary) > 100



-- Same solution without having :-)
select * from 
(

   select DepartmentID, TotalCount=Count(MonthlySalary), 
	   TotalSum=Sum(MonthlySalary),
	   Average=Avg(MonthlySalary),
	   MinSalary=Min(MonthlySalary),
	   MaxSalary=Max(MonthlySalary) 
	   
	   from Employees
	
       Group By DepartmentID
	  
) R1

where R1.TotalCount> 100;



-- Exercises:
-- 01: Show DepartmentID with more than 140 employees
Select DepartmentID, TotalEmployees = Count(ID) From Employees
Group By DepartmentID
Having COUNT(ID) > 140
Order By DepartmentID;


-- 02: Departments where total salaries exceed 200,000
Select DepartmentID, TotalSalaries = Sum(MonthlySalary) From Employees
Group By DepartmentID
Having Sum(MonthlySalary) > 200000
Order By DepartmentID;


-- 03:   Show the years in which more than 50 employees were hired.
Select Years = Year(HireDate), TotalEmployees = Sum(ID) From Employees
Group By Year(HireDate)
Order By Years


-- 04: Show the departments where the highest salary is more than or equal to 3000.
Select DepartmentID, HighestSalary = MAX(MonthlySalary) From Employees
Group By DepartmentID
Having MAX(MonthlySalary) >= 3000
Order By DepartmentID


-- 05: Show the countries that have more than or equal to 150 employees.
Select CountryID, TotalEmployees = COUNT(ID) From Employees
Group By CountryID
Having COUNT(ID) >= 150
Order By CountryID


-- 06: Show the departments where the total BonusPerc is greater than 12
Select DepartmentID, TotalBonusPerc = sum(BonusPerc) From Employees
Group By DepartmentID
HAving Sum(BonusPerc) > 12
Order By DepartmentID


-- 07: Show the departments where the lowest salary is less than 210.
Select DepartmentID, TotalSalary = Min(MonthlySalary) From Employees
Group By DepartmentID
Having Min(MonthlySalary) < 210
Order By DepartmentID


-- 08: Show the departments that have more employees than the average number of employees per department.
Select DepartmentID, AllEmployeesForEachDep = COUNT(DepartmentID) From Employees
Group By DepartmentID
Having Count(DepartmentID) > (Select COUNT(DepartmentID) / COUNT(DISTINCT DepartmentID) From Employees)
Order By DepartmentID

-- Another Solution By COUNT(*) and it's fast then above solution, becuase * count all row even NULL. 
SELECT DepartmentID, AllEmployeesForEachDep = COUNT(*) FROM Employees
GROUP BY DepartmentID
HAVING COUNT(*) > (SELECT COUNT(*) / COUNT(DISTINCT DepartmentID) FROM Employees)
ORDER BY DepartmentID;