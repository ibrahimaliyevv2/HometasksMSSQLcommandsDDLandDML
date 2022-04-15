CREATE DATABASE DepartmentDB

USE DepartmentDB

CREATE TABLE Department
(
    [Id] INT PRIMARY KEY,
    [Name] NVARCHAR(25)
)

CREATE TABLE Employee
(
    [id] INT PRIMARY KEY,
    [Name] NVARCHAR(10),
    [Surname] NVARCHAR(10),
    [BirthDate] DATETIME2,
    [Salary] FLOAT,
    [DepartmentID] INT FOREIGN KEY REFERENCES Department(Id)
)

INSERT INTO Department
VALUES
(1,'Ictimaiyyetle elaqeler'),
(2,'Insan resurslari'),
(3,'Texniki isler'),
(4, 'Cagri merkezi')

INSERT INTO Employee
VALUES
(1, 'Asif', 'Allazov', '2000-02-10', 1500, 2),
(2, 'Azad', 'Hesenov', '2001-10-02', 600, 4),
(3, 'Huseyn', 'Elizade', '2000-12-01', 1800, 1),
(4, 'Cavansir', 'Hacizade', '2001-01-04', 2400, 1),
(5, 'Hikmet', 'Abbasov', '1990-01-01',3000, 3)

SELECT Id,[Name], Surname, BirthDate, Salary FROM Employee
WHERE Salary>1000

SELECT [Name] + ' ' + [Surname] AS 'FullName' FROM Employee

SELECT Id, [Name] + ' ' + [Surname] AS 'FullName', BirthDate, Salary FROM Employee
WHERE Salary BETWEEN 1000 and 2500

SELECT * FROM Employee
WHERE [Name] LIKE '%A%'


