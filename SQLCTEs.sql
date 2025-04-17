--CTEs

WITH CTE_Employee as 

(SELECT FirstName, LastName, Gender, Salary
, COUNT(Gender) OVER (PARTITION BY Gender) As TotalGender
, AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary
FROM SQLTutorial..EmployeeDemographics dem
JOIN SQLTutorial..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
Where Salary > 45000
)
SELECT FirstName, AvgSalary
FROM CTE_Employee