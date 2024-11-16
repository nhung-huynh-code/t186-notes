-- EXERCISE
-- 1. Assignments for a Specific Course
SELECT title, due_date
FROM assignments
WHERE course_id == 'COMP1234';

-- 2. Earliest Assignment Due Date
SELECT min(due_date)
FROM assignments;

-- 3. Latest Assignment Due Date
SELECT 	max(due_date)
FROM assignments;

-- 4. Assignments Due on a Specific Date
SELECT 	title, course_id
FROM assignments
WHERE due_date == '2024-10-08';

-- 5. Find All Assignments Due in October
SELECT 	title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-- 6. Find the Most Recent Completed Assignment
SELECT 	max(due_date)
FROM assignments
WHERE status == 'Completed';

-- OPTIONAL TASKS
-- 1. Count of "Not Started" Assignments
SELECT 	COUNT(*)
FROM assignments
WHERE status == 'Not Started';

-- 2. Find Courses with Labs on Tuesday
SELECT 	course_id, course_name
FROM courses
WHERE lab_time 	LIKE 'Tue%';

-- 3. Write a query that joins the two tables
SELECT *
FROM assignments
JOIN courses
  ON courses.course_id = assignments.course_id;
