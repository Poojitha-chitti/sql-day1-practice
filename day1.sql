-- Create database
CREATE DATABASE practice_db;
USE practice_db;

-- Create table
CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    marks INT
);

-- Insert data
INSERT INTO students VALUES
(82, 'Poojitha', 98),
(72, 'Vara Prasad', 98),
(34, 'Chitti', 96),
(43, 'Bittu', 97),
(28, 'Devi', 98);

-- Select queries
SELECT * FROM students;
SELECT * FROM students WHERE marks > 95;
SELECT * FROM students ORDER BY marks DESC;

-- ALTER examples
ALTER TABLE students ADD age INT;

UPDATE students SET age = 20 WHERE id = 72;
UPDATE students SET age = 21 WHERE id = 28;
UPDATE students SET age = 19 WHERE id = 82;
UPDATE students SET age = 19 WHERE id = 34;
UPDATE students SET age = 20 WHERE id = 43;

SELECT * FROM students;
ALTER TABLE students rename to students_info;
ALTER TABLE students_info DROP COLUMN age;
