
CREATE TABLE Student (
    Student_ID varchar(10) primary key,
    Student_Name varchar(100) not null,
    Major varchar(100) not null
);

CREATE TABLE Course (
    Course_ID varchar(10) primary key,
    Course_Title varchar(100) not null,
    Credits int not null
);

CREATE TABLE Enrollment (
    Student_ID varchar(10)not null,
    Course_ID varchar(10) not null,
    primary key (Student_ID, Course_ID),
    foreign key (Student_ID)
        REFERENCES Student(Student_ID),
   foreign key (Course_ID)
        REFERENCES Course(Course_ID)
);


INSERT INTO Student (Student_ID, Student_Name, Major)
VALUES ('S101', 'Amina', 'Computer Science'),
    ('S102', 'Daniel', 'Business Administration');

SELECT * FROM Student;


INSERT INTO Course (Course_ID, Course_Title, Credits)
VALUES ('C101', 'Database Systems', 3),
    ('C102', 'Programming', 4)


SELECT * FROM Course;


INSERT INTO Enrollment (Student_ID, Course_ID)
VALUES ('S101', 'C101'), 
    ('S101', 'C102'),
    ('S102', 'C101');

SELECT * FROM Enrollment;
