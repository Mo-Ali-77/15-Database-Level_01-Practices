-- Lesson 01: Select Statement
use HR_DB;

Select * From Employees;

Select Employees.* From Employees;

Select FirstName, ID , LastName From Employees;

Select Employees.ID, Employees.CountryID From Employees;

Select * From Countries;

Select * From Departments;