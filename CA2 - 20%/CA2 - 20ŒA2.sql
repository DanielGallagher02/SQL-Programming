-- CA2 Question Part: A --

--Q1: Write a Query to describe the structure of one of the tables --
-- Using DESCRIBE --
DESCRIBE Course;

--Q2: Write a Query that joins data from 3 or more tables --
SELECT section_id, location, course.course_no, instructor.instructor_id, capacity, cost
FROM section
INNER JOIN course
ON section.course_no = course.course_no
INNER JOIN instructor
ON section.instructor_id = instructor.instructor_id;

--Q3: Write a Query that uses 2 or more restricting data operators or keywords --
-- Using WHERE ,IS NOT NULL and LIKE --
SELECT *
FROM course
WHERE course.cost IS NOT NULL
AND course.description LIKE 'I%';

--Q4: Write a Query that Uses an aggregate function --
-- Using The COUNT function --
SELECT COUNT(Student_id), Count(DISTINCT Student_id)
FROM Student;

--Q5: Write a Query that Alias all columns appropriately --
SELECT 'Category Of Grade: ' || grade_type_code AS "Grade Category",
       'Description: ' || description AS "Description",
       'Who Inserted Data: ' || created_by AS "Creation By",
       'Date Of Insertion ' || created_date AS "Creation Date",
       'Who Made Last Update: ' || modified_by AS "Modified By",
       'Date of Last Update: ' || modified_date AS "Modified Date"
FROM grade_type;







