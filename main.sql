CREATE TABLE employees (
  employee_id INTEGER PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  gender TEXT NOT NULL,
  date_of_birth DATE NOT NULL,
  hire_date DATE NOT NULL,
  department TEXT NOT NULL,
  job_title TEXT NOT NULL,
  salary DECIMAL(10, 2) NOT NULL,
  email TEXT NOT NULL,
  phone_number TEXT NOT NULL
);

CREATE TABLE departments (
  department_id INTEGER PRIMARY KEY,
  department_name TEXT NOT NULL,
  manager_id INTEGER,
  cargo TEXT NOT NULL
);

INSERT INTO departments (department_id, department_name, manager_id, cargo)
VALUES 
(1, 'Engineering', 1, 'Software Engineer'),
(2, 'HR', 2, 'Marketing Specialist');

-- Inserindo alguns valores de exemplo
INSERT INTO employees (employee_id, first_name, last_name, gender, date_of_birth, hire_date, department, job_title, salary, email, phone_number)
VALUES 
(1, 'John', 'Doe', 'M', '1980-01-15', '2010-06-01', 'Engineering', 'Software Engineer', 75000.00, 'john.doe@example.com', '555-1234'),
(2, 'Jane', 'Smith', 'F', '1990-02-20', '2012-08-15', 'HR', 'HR Manager', 65000.00, 'jane.smith@example.com', '555-5678'),
(3, 'Robert', 'Johnson', 'M', '1985-03-10', '2015-09-01', 'Marketing', 'Marketing Specialist', 60000.00, 'robert.johnson@example.com', '555-8765'),
(4, 'Emily', 'Davis', 'F', '1995-04-25', '2018-11-01', 'Finance', 'Financial Analyst', 70000.00, 'emily.davis@example.com', '555-4321'),
(5, 'Michael', 'Brown', 'M', '1982-05-30', '2008-01-15', 'Sales', 'Sales Manager', 80000.00, 'michael.brown@example.com', '555-6789');


SELECT
   e.employee_id,
  e.first_name,
  e.last_name,
  e.gender,
  e.date_of_birth,
  e.hire_date,
  d.department_name,
  e.job_title,
  e.salary,
  e.email,
  e.phone_number
FROM employees e 
JOIN departments d
ON e.job_title =  d.cargo;


