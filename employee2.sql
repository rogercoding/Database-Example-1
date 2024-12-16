--- a) SQL Scripts to Create Tables
-- Create Database
CREATE DATABASE SchoolManagement;
USE SchoolManagement;

-- Table for Students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Class VARCHAR(10) NOT NULL,
    DOB DATE NOT NULL,
    ContactNo VARCHAR(15) NOT NULL
);

-- Table for Teachers
CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Subject VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL
);

-- Table for Classes
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(20) NOT NULL,
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);


---b) Insert at Least 5 Records into Each Table
-- Insert Records into Students Table
INSERT INTO Students (StudentID, Name, Class, DOB, ContactNo) VALUES
(1, 'John Doe', '10A', '2008-04-15', '1234567890'),
(2, 'Jane Smith', '9B', '2009-07-20', '9876543210'),
(3, 'Michael Brown', '11A', '2007-05-10', '4567891230'),
(4, 'Emily Johnson', '12C', '2006-09-12', '3216549870'),
(5, 'Sarah Davis', '10B', '2008-02-25', '6549873210');

-- Insert Records into Teachers Table
INSERT INTO Teachers (TeacherID, Name, Subject, Salary) VALUES
(101, 'Mr. Anderson', 'Mathematics', 50000.00),
(102, 'Ms. Wilson', 'Science', 52000.00),
(103, 'Mr. Clark', 'History', 48000.00),
(104, 'Mrs. Lewis', 'English', 53000.00),
(105, 'Mr. Adams', 'Geography', 51000.00);

-- Insert Records into Classes Table
INSERT INTO Classes (ClassID, ClassName, TeacherID) VALUES
(1, '10A', 101),
(2, '9B', 102),
(3, '11A', 103),
(4, '12C', 104),
(5, '10B', 105);


---c) SQL Query to Display Students Older than 15 Years
SELECT Name, Class, DOB
FROM Students
WHERE TIMESTAMPDIFF(YEAR, DOB, CURDATE()) > 15;
