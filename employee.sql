---Schema
---Employee table: (EmpID, Name, Department, Salary)
---Department table: (DeptID, DeptName, Location)
---Project table: (Project, ProjectName, EmpID, HoursWorked)

---a) Employees working in the "HR" department earning more than 50,000
SELECT Name, Department, Salary
FROM Employee
WHERE Department = 'HR' AND Salary > 50000;

---b) Names of employees who do not work on any project
SELECT Name
FROM Employee
WHERE EmpID NOT IN (SELECT EmpID FROM Project);

---c) Find the department with the maximum number of employees
SELECT Department, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Department
ORDER BY EmployeeCount DESC
LIMIT 1;
