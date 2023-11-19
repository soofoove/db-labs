-- Select all sudents
SELECT * from "Student";

-- Select specific columns
SELECT "FirstName", "LastName" from "Student";

-- Select distinct values
SELECT DISTINCT "Score" FROM "Result";

-- Limit amount of values to be returned
SELECT *
FROM "Student"
LIMIT 2;

-- Select with condition
SELECT "FirstName", "LastName" 
FROM "Student"
WHERE "FirstName" = 'Charlie';

-- Select with OR condition
SELECT "FirstName", "LastName" 
FROM "Student"
WHERE "FirstName" = 'Charlie' OR "FirstName" = 'David';


-- Select with UNION
SELECT "FirstName", "LastName" 
FROM "Student"
WHERE "FirstName" = 'Charlie'
UNION
SELECT "FirstName", "LastName" 
FROM "Student"
WHERE "FirstName" = 'David';

-- Select with AND condition
SELECT "Title", "Description"
FROM "Course"
WHERE "Title" = 'History' AND "Description" = 'World History';

-- Select with NOT
SELECT "Title", "Description"
FROM "Course"
WHERE NOT ("Title" = 'History' AND "Description" = 'World History');

-- Select using LIKE
SELECT "Title", "Description"
FROM "Course"
WHERE "Description" LIKE 'Basic%';

-- Select using BETWEEN
SELECT "Score", "StudentID"
FROM "Result"
WHERE "Score" BETWEEN 70 AND 80;

-- Select values in specific range
SELECT "Score", "StudentID"
FROM "Result"
WHERE "Score" IN (80, 85);

-- Select values for specific row
SELECT "Score", "StudentID"
FROM "Result"
WHERE "StudentID" IN (SELECT "StudentID" FROM "Student" WHERE "FirstName" = 'Charlie');

-- Select ordered values
SELECT "FirstName", "LastName", "StudentID"
FROM "Student"
ORDER BY "FirstName";

-- Select ordered values descending
SELECT "FirstName", "LastName", "StudentID"
FROM "Student"
ORDER BY "FirstName" DESC;

-- Select count
SELECT COUNT ("CourseID")
FROM "Course"
WHERE "Description" LIKE 'Basic%'

-- Select total basic courses
SELECT COUNT ("CourseID") AS "Total basic courses"
FROM "Course"
WHERE "Description" LIKE 'Basic%'

-- Group BY
SELECT "InstructorID", COUNT("CourseID") as "Number of courses"
FROM "Course"
GROUP BY "InstructorID";

-- Having 
SELECT "InstructorID", COUNT("CourseID") as "Number of courses"
FROM "Course"
GROUP BY "InstructorID"
HAVING COUNT("CourseID") > 1;