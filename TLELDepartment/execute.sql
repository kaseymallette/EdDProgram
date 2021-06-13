-- insert values into tlel.Semester
INSERT INTO tlel.Semester (Sem, Semester)
VALUES ('10', 'Winter'),
('20', 'Spring'), 
('60', 'Summer'), 
('90', 'Fall')


-- update tlel.AcademicCalendar
EXEC tlel.uspUpdateAcademicCalendar @year = '2021'
GO

-- insert data into tlel.Student table 
INSERT INTO tlel.Student (
BNumber, 
AdmitDate, 
ProgramStatus,
MajorCode
)

SELECT 
[B-Number], 
[Admit Date], 
[Program Status], 
[Major]

FROM import.AcademicHistory


-- update student status
EXEC tlel.uspUpdateStudent
GO


-- update import.CourseEnrollment
EXEC tlel.uspUpdateEnrollment 
GO

-- insert data into tlel.Enrollment
INSERT INTO tlel.Enrollment (
BNumber, 
CourseId,
SemCode
)

SELECT 
BNumber,
CourseId,
SemCode

FROM import.CourseEnrollment



-- update student status
EXEC tlel.uspUpdateStudent
GO


SELECT * FROM tlel.Enrollment
