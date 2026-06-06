-- Lesson 13: Wildcards

use HR_DB;


--Execute these satatements to update data
Update Employees 
set FirstName ='Mohammed' , LastName='Abu-Hadhoud'
where ID= 285;


Update Employees 
set FirstName ='Mohammad' , LastName='Al-Amoudi'
where ID= 286;

--------------------------------

select ID, FirstName, LastName from Employees
Where firstName = 'Mohammed' or FirstName ='Mohammad'; 


-- will search form Mohammed or Mohammad
select ID, FirstName, LastName from Employees
Where firstName like 'Mohamm[ae]d';

-------------------------------------

--You can use Not 
select ID, FirstName, LastName from Employees
Where firstName Not like 'Mohamm[ae]d';

--------------------

select ID, FirstName, LastName from Employees
Where firstName like 'a%' or firstName like 'b%' or firstName like 'c%';


-- search for all employees that their first name start with a or b or c
select ID, FirstName, LastName from Employees
Where firstName like '[abc]%';


---------------------------------
-- search for all employees that their first name start with any letter from a to l
select ID, FirstName, LastName from Employees
Where firstName like '[a-l]%';

-- Exrsices:
-- 01: Show employees whose names starts with: a or I
Select ID, FirstName, LastName From Employees
where FirstName Like '[aI]%'

-- 02: Show employees whose names starts with: h to t
Select ID, FirstName, LastName From Employees
where FirstName Like '[h-t]%'
order By FirstName