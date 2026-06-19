-- Lesson 02: Check Constraint

use DB3;

-- SQL CHECK on CREATE TABLE
CREATE TABLE Persons (
   ID int NOT NULL,
   LastName varchar(255) NOT NULL,
   FirstName varchar(255),
   Age int CHECK (Age>=18)
);

CREATE TABLE Persons (
   ID int NOT NULL,
   LastName varchar(255) NOT NULL,
   FirstName varchar(255),
   Age int,
   City varchar(255),
    CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Amman')
);


-- DROP a CHECK Constraint
ALTER TABLE Persons
DROP CONSTRAINT CHK_Person;