--constraints--
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary INT CHECK (salary > 1000),
    email VARCHAR(100) UNIQUE
);

--WHERE Conditions Practice--
SELECT * FROM employees WHERE salary  BETWEEN 50000 AND 90000;

SELECT * FROM employees WHERE name LIKE 'p%';

SELECT * FROM employees WHERE salary IN (70000, 85000);

SELECT * FROM employees WHERE salary IS NOT NULL;

--Aggregate Functions --

SELECT AVG(salary) FROM employees;
SELECT MAX(salary) FROM  employees;
SELECT MIN(salary) FROM employees;
SELECT COUNT(*) FROM employees;

--GROUP BY + HAVING --

--Create new table--

CREATE TABLE results (
    student_name VARCHAR(50),
    subject VARCHAR(50),
    marks INT
);

INSERT INTO results VALUES
('Poojitha', 'Math', 80),
('Poojitha', 'Science', 85),
('Vara Prasad', 'Math', 90),
('Vara Prasad', 'Science', 95),
('Chitti', 'Math', 70);



--Group by and having --

SELECT student_name, AVG(marks)
FROM results
GROUP BY student_name;

SELECT student_name, AVG(marks)
FROM results
GROUP BY student_name
HAVING AVG(marks) > 80;

--Joins--

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT');

ALTER TABLE results ADD dept_id INT;

UPDATE results SET dept_id = 1 WHERE name= 'Poojitha';
UPDATE results SET dept_id = 2 WHERE name = 'Vara Prasad';
UPDATE results SET dept_id = 2 WHERE name='Chitti';

--Inner Joins--

SELECT results.name, departments.dept_name
FROM results 
INNER JOIN departments
ON results.dept_id = departments.dept_id;

DELETE FROM results WHERE id = 1;  -- deletes specific row
TRUNCATE TABLE results;           -- deletes all rows
DROP TABLE results;               -- deletes table completely
