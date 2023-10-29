-- Update all rows in Instructor
UPDATE "Instructor" 
SET "FirstName" = 'AllUpdatedFirstName', "LastName" = 'AllUpdatedLastName';

-- Update all rows in Course
UPDATE "Course" 
SET "Title" = 'AllUpdatedTitle', "Description" = 'AllUpdatedDescription';

-- Update all rows in Test
UPDATE "Test" 
SET "Topic" = 'AllUpdatedTopic';

-- Update all rows in TestPaper
UPDATE "TestPaper" 
SET "PaperNumber" = 999;

-- Update all rows in Question
UPDATE "Question" 
SET "QuestionText" = 'AllUpdatedQuestionText';

-- Update all rows in QuestionTestPaper
UPDATE "QuestionTestPaper" 
SET "QuestionID" = '13131313-1313-4113-1313-131313131313', "TestPaperID" = '10101010-1010-4101-1010-101010101010';

-- Update all rows in Group
UPDATE "Group" 
SET "Number" = 'AllUpdatedG1';

-- Update all rows in Student
UPDATE "Student" 
SET "FirstName" = 'AllUpdatedFirstName', "LastName" = 'AllUpdatedLastName', "Email" = 'allupdated@email.com', "PhoneNumber" = '999-999-9999';

-- Update all rows in Result
UPDATE "Result" 
SET "Score" = 100;