CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    MathScore INT,
    TotalScore INT
);

INSERT INTO Students (StudentID, Name, MathScore, TotalScore) VALUES
(1, 'Aarav', 85, 250),
(2, 'Vihaan', 90, 260),
(3, 'Ishaan', 78, 240),
(4, 'Kabir', 88, 255),
(5, 'Anaya', 92, 270);

SELECT 
    StudentID, 
    Name, 
    TotalScore, 
    RANK() OVER (ORDER BY TotalScore DESC) AS `Rank`
FROM Students;
SELECT 
    StudentID, 
    Name, 
    MathScore, 
    SUM(MathScore) OVER (ORDER BY StudentID) AS RunningTotal
FROM Students;
