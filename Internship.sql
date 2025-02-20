
CREATE DATABASE StudentManagement;
USE StudentManagement;
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Gender VARCHAR(1) NOT NULL,
    Age INT NOT NULL,
    Grade VARCHAR(10) NOT NULL,
    MathScore INT NOT NULL,
    ScienceScore INT NOT NULL,
    EnglishScore INT NOT NULL
);

INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES
('Aryan', 'F', 14, 'A', 90, 85, 88),
('Bobby', 'M', 15, 'B', 76, 80, 79),
('Chatur', 'M', 14, 'A', 92, 89, 90),
('Dikshit', 'F', 15, 'C', 60, 70, 68),
('Tanya', 'F', 13, 'B', 78, 82, 80),
('Farhan', 'M', 14, 'A', 88, 84, 86),
('Gracy', 'F', 15, 'A', 94, 91, 93),
('Harsh', 'M', 13, 'C', 65, 60, 70),
('Imtiaz', 'F', 14, 'B', 80, 78, 76),
('Jafar', 'M', 15, 'A', 89, 87, 85);
SELECT * FROM Students;
SELECT AVG(MathScore) AS AvgMath, AVG(ScienceScore) AS AvgScience, AVG(EnglishScore) AS AvgEnglish
FROM Students;

SELECT Name, (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

SELECT Grade, COUNT(*) AS NumStudents
FROM Students
GROUP BY Grade;

SELECT Gender, AVG(MathScore) AS AvgMath, AVG(ScienceScore) AS AvgScience, AVG(EnglishScore) AS AvgEnglish
FROM Students
GROUP BY Gender;

SELECT Name, MathScore
FROM Students
WHERE MathScore > 80;

UPDATE Students
SET Grade = 'A'
WHERE StudentID = 1;  

