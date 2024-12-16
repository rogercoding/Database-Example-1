-- Create the employee table
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10, 2)
);

-- Insert data for 5 employees
INSERT INTO employee (employee_id, name, department, salary) VALUES
(1, 'John Doe', 'Engineering', 75000.00),
(2, 'Jane Smith', 'Marketing', 60000.00),
(3, 'Alice Johnson', 'Finance', 80000.00),
(4, 'Bob Brown', 'Human Resources', 55000.00),
(5, 'Charlie White', 'IT', 70000.00);

-- Verify the inserted data
SELECT * FROM employee;
