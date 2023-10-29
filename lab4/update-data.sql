-- Update Instructor
UPDATE "Instructor" 
SET "FirstName" = 'UpdatedJohn', "LastName" = 'UpdatedDoe' 
WHERE "InstructorID" = 'a1234567-a123-4123-a123-1234567890ab';

-- Update Course
UPDATE "Course" 
SET "Title" = 'Updated Math', "Description" = 'Updated Basic Mathematics' 
WHERE "CourseID" = '11111111-1111-4111-1111-111111111111';

-- Update Test
UPDATE "Test" 
SET "Topic" = 'Updated Math Quiz 1' 
WHERE "TestID" = '01010101-0101-4010-0101-010101010101';

-- Update TestPaper
UPDATE "TestPaper" 
SET "PaperNumber" = 2 
WHERE "TestPaperID" = '10101010-1010-4101-1010-101010101010';

-- Update Question
UPDATE "Question" 
SET "QuestionText" = 'What is 2+3?' 
WHERE "QuestionID" = '12121212-1212-4112-1212-121212121212';

-- Update QuestionTestPaper
UPDATE "QuestionTestPaper" 
SET "QuestionID" = '13131313-1313-4113-1313-131313131313' 
WHERE "QuestionTestPaperID" = '21212121-2121-4212-2121-212121212121';

-- Update Group
UPDATE "Group" 
SET "Number" = 'UpdatedG1' 
WHERE "GroupID" = '31313131-3131-4313-3131-313131313131';

-- Update Student
UPDATE "Student" 
SET "FirstName" = 'UpdatedAlice', "LastName" = 'UpdatedWilliams', "Email" = 'updatedalice@email.com' 
WHERE "StudentID" = '41414141-4141-4414-4141-414141414141';

-- Update Result
UPDATE "Result" 
SET "Score" = 95 
WHERE "ResultID" = '51515151-5151-4515-5151-515151515151';