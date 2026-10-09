
-- Select the sales database
USE sales;

-- Question 1: Create the student table
CREATE TABLE student (
    id INT PRIMARY KEY,
    fullName VARCHAR(100),
    age INT
);

-- Question 2: Insert at least 3 records
INSERT INTO student (id, fullName, age)
VALUES
    (1, 'John Peter', 18),
    (2, 'Mary James', 19),
    (3, 'David Simon', 21);

-- Question 3: Update the age of student with ID 2 to 20
UPDATE student
SET age = 20
WHERE id = 2;

-- Question 4: Use a transaction to manage changes
START TRANSACTION;

UPDATE student
SET age = 22
WHERE id = 3;

COMMIT;

-- Question 5: Use aggregate functions to analyze student data
SELECT
    COUNT(*) AS total_students,
    AVG(age) AS average_age,
    MAX(age) AS oldest_student,
    MIN(age) AS youngest_student
FROM student;

-- Display all student records
SELECT * FROM student;