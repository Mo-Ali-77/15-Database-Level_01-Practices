-- Lesson 04: SQL Index

Create Database DB5;

use DB5;


-- SQL CREATE INDEX Statement

CREATE INDEX idx_lastname
ON Persons (LastName);


CREATE INDEX idx_pname
ON Persons (LastName, FirstName);


-- DROP INDEX Statement
Drop Index Persons.idx_pname;
