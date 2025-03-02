CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    course_description VARCHAR(255)
);

CREATE TABLE Enrolments (
    enrolment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrolment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
INSERT INTO Students VALUES (1, 'Aman', 'aman@email.com');
INSERT INTO Students VALUES (2, 'Bobby', 'bobby@email.com');
INSERT INTO Students VALUES (3, 'harsh', 'harsh@email.com');

INSERT INTO Courses VALUES (101, 'Mathematics', 'Introduction to mathematics');
INSERT INTO Courses VALUES (102, 'Advanced Statistics', 'Joins and Filtering');
INSERT INTO Courses VALUES (103, 'Python Programming', 'Basic Python');

INSERT INTO Enrolments VALUES (201, 1, 101, '2025-03-01');
INSERT INTO Enrolments VALUES (202, 2, 101, '2025-03-02');
INSERT INTO Enrolments VALUES (203, 1, 102, '2025-03-02');
SELECT S.name AS Student_Name, C.course_name AS Course_Name
FROM Students S
INNER JOIN Enrolments E ON S.student_id = E.student_id
INNER JOIN Courses C ON E.course_id = C.course_id;
SELECT C.course_name, COUNT(E.student_id) AS Enrolled_Students
FROM Courses C
LEFT JOIN Enrolments E ON C.course_id = E.course_id
GROUP BY C.course_id, C.course_name;
SELECT S.name AS Student_Name, COUNT(E.course_id) AS Total_Courses
FROM Enrolments E
JOIN Students S ON E.student_id = S.student_id
GROUP BY S.student_id, S.name
HAVING COUNT(E.course_id) > 1;
SELECT C.course_name
FROM Courses C
LEFT JOIN Enrolments E ON C.course_id = E.course_id
WHERE E.enrolment_id IS NULL;
