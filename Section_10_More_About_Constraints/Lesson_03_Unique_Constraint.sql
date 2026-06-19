-- Lesson 03: Unique Constraint

Create Database DB4;

use DB4;


-- SQL UNIQUE Constraint on CREATE TABLE
CREATE TABLE Persons (
   ID int NOT NULL UNIQUE,
   LastName varchar(255) NOT NULL,
   FirstName varchar(255),
   Age int
);


-- define a UNIQUE constraint on multiple columns, use the following SQL syntax:
CREATE TABLE Persons (
   ID int NOT NULL,
   LastName varchar(255) NOT NULL,
   FirstName varchar(255),
   Age int,
    CONSTRAINT UC_Person UNIQUE (ID,LastName)
);


-- SQL UNIQUE Constraint on ALTER TABLE
ALTER TABLE Persons
ADD UNIQUE (ID);

ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);


-- DROP a UNIQUE ConstraintDROP a UNIQUE Constraint
ALTER TABLE Persons
DROP CONSTRAINT UC_Person;