CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    math_score INT,
    science_score INT,
    english_score INT
);
INSERT INTO Students (student_id, name, math_score, science_score, english_score)
VALUES 
(1, 'Aman', 85, 78, 90),
(2, 'Bobby', 72, 88, 75),
(3, 'Harsh', 95, 92, 89),
(4, 'Doyal', 60, 75, 80),
(5, 'Anushka', 88, 85, 91),
(6, 'Farhad', 90, 79, 85);
SELECT name, 
       (math_score + science_score + english_score) AS total_score
FROM Students
ORDER BY total_score DESC
LIMIT 5;
SELECT AVG(math_score) AS average_math_score
FROM Students
WHERE math_score > 70;
SELECT AVG(total_score) AS avg_total_score
FROM (
    SELECT (math_score + science_score + english_score) AS total_score
    FROM Students
) AS subquery
WHERE total_score BETWEEN 200 AND 250;
SELECT MAX(math_score) AS second_highest_math_score
FROM Students
WHERE math_score < (SELECT MAX(math_score) FROM Students);
