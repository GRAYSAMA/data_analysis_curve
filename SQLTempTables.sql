--Temp Tables

CREATE TABLE #temp_employee(
EmployeeID int,
JobTitle varchar(100),
Salary int
)

SELECT * 
FROM #temp_employee

INSERT INTO #temp_employee VALUES
('1001', 'HR', 45000
)

INSERT INTO #temp_employee
SELECT * 
FROM SQLTutorial..EmployeeSalary


CREATE TABLE #emp_empl