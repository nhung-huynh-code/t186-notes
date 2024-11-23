-- 1. Concatenate course_name and semester with a hyphen between them
SELECT concat(course_name, ' - ', semester)
FROM courses;

-- 2. Find courses with lab sessions scheduled on Friday
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'Fri%';

-- 3. List all assignments with a due date after the current date
SELECT *
FROM assignments
WHERE due_date > CURRENT_DATE;

-- 4. Count the number of assignments for each status
SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

-- 5. Find the course with the longest course_name
SELECT course_name
FROM courses
WHERE LENGTH(course_name) = (SELECT MAX(LENGTH(course_name)) FROM courses);

-- 6. Return a list of all course names in uppercase
SELECT UPPER(course_name) AS uppercase_course_name
FROM courses;

-- 7. List the titles of all assignments due in September, regardless of year
SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';

-- 8. Find all assignments where the due_date is missing (NULL)
SELECT *
FROM assignments
WHERE due_date IS NULL;

-- OPTIONAL TASK
-- 1. List each course_id with the total number of assignments associated with it
SELECT courses.course_id, COUNT(assignments.id) AS total_assignments
FROM courses
LEFT JOIN assignments ON courses.course_id = assignments.course_id
GROUP BY courses.course_id;

-- 2. Find all courses that do not have any assignments by using a LEFT JOIN and filtering for NULL assignment IDs
SELECT course_name
FROM courses
LEFT JOIN assignments ON courses.course_id = assignments.course_id
WHERE assignments.id IS NULL;
