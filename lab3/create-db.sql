CREATE TABLE "Instructor" (
    "InstructorID" UUID PRIMARY KEY,
    "FirstName" VARCHAR(255) NOT NULL,
    "LastName" VARCHAR(255) NOT NULL
);


CREATE TABLE "Course" (
    "CourseID" UUID PRIMARY KEY,
    "Title" VARCHAR(255) NOT NULL,
    "Description" TEXT,
    "InstructorID" UUID REFERENCES "Instructor"(InstructorID)
);


CREATE TABLE "Test" (
    "TestID" UUID PRIMARY KEY,
    "Topic" VARCHAR(255) NOT NULL,
    "CourseID" UUID REFERENCES "Course"(CourseID)
);


CREATE TABLE "TestPaper" (
    "TestPaperID" UUID PRIMARY KEY,
    "PaperNumber" NUMERIC NOT NULL,
    "TestID" UUID REFERENCES "Test"(TestID)
);


CREATE TABLE "Question" (
    "QuestionID" UUID PRIMARY KEY,
    "QuestionText" TEXT NOT NULL
);


CREATE TABLE "QuestionTestPaper" (
    "QuestionTestPaperID" UUID PRIMARY KEY,
    "QuestionID" UUID REFERENCES "Question"(QuestionID),
    "TestPaperID" UUID REFERENCES "TestPaper"(TestPaperID)
);


CREATE TABLE "Group" (
    "GroupID" UUID PRIMARY KEY,
    "Number" VARCHAR(50) NOT NULL
);


CREATE TABLE "Student" (
    "StudentID" UUID PRIMARY KEY,
    "FirstName" VARCHAR(255) NOT NULL,
    "LastName" VARCHAR(255) NOT NULL,
    "DateOfBirth" DATE NOT NULL,
    "Email" VARCHAR(255) NOT NULL,
    "PhoneNumber" VARCHAR(15),
    "GroupID" UUID REFERENCES "Group"(GroupID)
);


CREATE TABLE "Result" (
    "ResultID" UUID PRIMARY KEY,
    "Score" NUMERIC NOT NULL,
    "StudentID" UUID REFERENCES "Student"(StudentID),
    "TestPaperID" UUID REFERENCES "TestPaper"(TestPaperID)
);