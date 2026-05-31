-- Lesson 07:Select As Statement

use HR_DB;

-- Any expression that is not related to any table.
select A = 5 * 6, B = 5 / 2;


-- The fullName is derived from two columns in the table: the FirstName and the LAstName.
select ID, FirstName + ' ' + LAstName as FullName From Employees;

select ID, FullName = FirstName + ' ' + LAstName From Employees;


-- HalfSalary was calculated based on the MonthlySalary.
select ID, MonthlySalary / 2 As HelfSalary From Employees;

select ID, HelfSalary = MonthlySalary / 2 From Employees;


-- The yearlySalary was calculated based on the monthly salary.
select ID, FirstName , MonthlySalary , YealySalary = MonthlySalary * 12  from employees;

select ID, FirstName, MonthlySalary, MonthlySalary * 12 as YearlySalary from Employees;


-- The BonusAmount was calculated based on the MonthlySalary * BonusPerc.
select ID, FirstName , MonthlySalary , YealySalary =MonthlySalary* 12 , BonusAmount= MonthlySalary * BonusPerc  from employees;

select ID, FirstName , MonthlySalary , MonthlySalary* 12 as YealySalary , MonthlySalary * BonusPerc as BonusAmount  from employees;

-- Time Now
select Today = getDate()


-- The age was derived from the “Birthday” column, and we used the DateDiff function to calculate the difference between the current time and the time of birth.
-- This allows us to determine how old the person is now.
select ID, FullName= FirstName + ' ' + LastName, Age = DATEDIFF(Year , DateOfBirth ,getDate()) from Employees;

select ID, FirstName + ' ' + LastName as FullName, DATEDIFF(Year , DateOfBirth ,getDate()) as Age from Employees;

select ID, FirstName + ' ' + LastName as FullName, DATEDIFF(MONTH , DateOfBirth ,getDate()) as Age from Employees;

select ID, FirstName + ' ' + LastName as FullName, DATEDIFF(Day , DateOfBirth ,getDate()) as Age from Employees;

select ID, FirstName + ' ' + LastName as FullName, DATEDIFF(SECOND , DateOfBirth ,getDate()) as Age from Employees;
