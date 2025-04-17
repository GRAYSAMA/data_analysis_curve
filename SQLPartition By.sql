--Updating and Inserting Data
--Aliasing

--SELECT * 
--FROM SQLTutorial.dbo.EmployeeDemographics

--partition by

SELECT FirstName, LastName, Gender, Salary
, COUNT(Gender) OVER (PARTITION BY Gender) As TotalGender
, AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary
FROM SQLTutorial..EmployeeDemographics dem
JOIN SQLTutorial..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
Where Salary > 45000


