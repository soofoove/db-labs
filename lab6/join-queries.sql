-- INNER JOIN
SELECT 
    "Course"."Title", 
    "Instructor"."FirstName", 
    "Instructor"."LastName" 
FROM 
    "Course" 
INNER JOIN "Instructor" 
    ON "Course"."InstructorID" = "Instructor"."InstructorID";

-- LEFT JOIN
SELECT 
    "Student"."FirstName",
    "Student"."LastName",
    "Group"."Number" AS "GroupNumber"
FROM 
    "Student"
LEFT JOIN "Group"
    ON "Student"."GroupID" = "Group"."GroupID";

-- LEFT OUTER JOIN
SELECT 
    "Student"."FirstName",
    "Student"."LastName",
    "Group"."Number" AS "GroupNumber"
FROM 
    "Student"
LEFT JOIN "Group"
    ON "Student"."GroupID" = "Group"."GroupID"
WHERE "Group"."GroupID" is NULL

-- RIGHT JOIN
SELECT 
    "Student"."FirstName",
    "Student"."LastName",
    "Group"."Number" AS "GroupNumber"
FROM 
    "Student"
RIGHT JOIN "Group"
    ON "Student"."GroupID" = "Group"."GroupID";

-- RIGHT OUTER JOIN
SELECT 
    "Student"."FirstName",
    "Student"."LastName",
    "Group"."Number" AS "GroupNumber"
FROM 
    "Student"
RIGHT JOIN "Group"
    ON "Student"."GroupID" = "Group"."GroupID"
WHERE "Student"."GroupID" is NULL

-- FULL OUTER JOIN
SELECT 
    "Group"."Number" AS "GroupNumber",
    "Student"."FirstName",
    "Student"."LastName"
FROM 
    "Student"
FULL OUTER JOIN "Group"
    ON "Student"."GroupID" = "Group"."GroupID";

-- SELF JOIN
SELECT 
    A."FirstName" AS "Student1FirstName",
    A."LastName" AS "Student1LastName",
    B."FirstName" AS "Student2FirstName",
    B."LastName" AS "Student2LastName"
FROM 
    "Student" A, "Student" B
WHERE 
    A."LastName" = B."LastName" 
    AND A."StudentID" < B."StudentID";
