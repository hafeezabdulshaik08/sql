--Create a Sample Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Age INT,
    Department VARCHAR(50)
);

--Insert Sample Data
INSERT INTO Students (StudentID, StudentName, Age, Department)
VALUES
(1, 'Rahul', 20, 'Computer Science'),
(2, 'Priya', 22, 'Electronics'),
(3, 'Amit', 21, 'Mechanical'),
(4, 'Neha', 23, 'Computer Science'),
(5, 'Karan', 22, 'Civil');

-- Non-indexed search
SELECT * FROM Students
WHERE Department = 'Computer Science';

--Create an Index
CREATE INDEX idx_department ON Students(Department);

-- Indexed search
SELECT * FROM Students
WHERE Department = 'Computer Science';

-- Without index
EXPLAIN SELECT * FROM Students WHERE Department = 'Computer Science';

-- With index
EXPLAIN SELECT * FROM Students WHERE Department = 'Computer Science';

