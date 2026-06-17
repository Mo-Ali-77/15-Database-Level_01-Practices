-- Lesson 01: Default Constraint

Create Database DB3;

Use DB3;


-- SQL DEFAULT on CREATE TABLE
CREATE TABLE Persons (
   ID int NOT NULL,
   LastName varchar(255) NOT NULL,
   FirstName varchar(255),
   Age int,
   City varchar(255) DEFAULT 'Amman'
);


CREATE TABLE Orders (
   ID int NOT NULL,
   OrderNumber int NOT NULL,
   OrderDate date DEFAULT GETDATE()
);


-- SQL DEFAULT on ALTER TABLE
ALTER TABLE Persons
ADD CONSTRAINT df_City
DEFAULT 'Amman' FOR City;


--DROP a DEFAULT Constraint
ALTER TABLE Persons
DROP Constraint  df_City;