-- create import.CourseEnrollment table
DROP TABLE IF EXISTS import.CourseEnrollment
CREATE TABLE import.CourseEnrollment (
EnrollId int IDENTITY(1,1),
BNumber varchar(15), 
CourseId varchar(15), 
SemCode varchar(10), 
EnrollCode varchar(48), 

CONSTRAINT [PK_EnrollId] PRIMARY KEY CLUSTERED
	([EnrollId])
)


-- create tlel.Enrollment table
DROP TABLE IF EXISTS tlel.Enrollment
CREATE TABLE tlel.Enrollment (
EnrollmentId int IDENTITY(1,1),
BNumber varchar(15) NOT NULL, 
CourseId varchar(15) NOT NULL, 
SemCode varchar(10), 

CONSTRAINT [PK_EnrollmentId] PRIMARY KEY CLUSTERED
	([EnrollmentId])
)


-- create tlel.Semester table
DROP TABLE IF EXISTS tlel.AcademicCalendar
DROP TABLE IF EXISTS tlel.Semester
CREATE TABLE tlel.Semester (

Sem varchar(20) NOT NULL,
Semester varchar(10) NOT NULL,

CONSTRAINT [PK_Sem] PRIMARY KEY CLUSTERED 
	([Sem])
)


-- create tlel.AcademicCalendar table
DROP TABLE IF EXISTS tlel.AcademicCalendar
CREATE TABLE tlel.AcademicCalendar (
SemID int IDENTITY(1,1), 
SemCode varchar(20) NULL,
Semester varchar(10), 
SemesterYear varchar(4), 
StartDate date,
EndDate date,

CONSTRAINT [PK_SemID] PRIMARY KEY CLUSTERED 
	([SemID])

)


-- create tlel.Student table
DROP TABLE IF EXISTS tlel.StudentDetail
DROP TABLE IF EXISTS tlel.Student
CREATE TABLE tlel.Student ( 
BNumber varchar(15) NOT NULL,
AdmitDate varchar(10) NOT NULL, 
ProgramStatus varchar(10) NOT NULL, 
MajorCode varchar(10),
AdvisorId int, 
CourseComplete varchar(10),
ABDProjected varchar(10),
ABDActual varchar(10),
DisProjected varchar(10), 
DisActual varchar(10),

CONSTRAINT [PK_BNumber] PRIMARY KEY CLUSTERED 
	([BNumber])
)


-- create tlel.StudentDetail table 
DROP TABLE IF EXISTS tlel.StudentDetail
CREATE TABLE tlel.StudentDetail (
BEmail varchar(32) NOT NULL,
BNumber varchar(15) NOT NULL,
FirstName nvarchar(64) NOT NULL, 
LastName nvarchar(64) NOT NULL, 
MI varchar(2), 
DOB date, 
Gender varchar(15), 
PrefPronouns varchar(24), 
Ethnicity varchar(32), 
Residency varchar(32),
OtherEmail varchar(62),

CONSTRAINT [PK_BEmail] PRIMARY KEY CLUSTERED
	([BEmail]),

CONSTRAINT FK_BNumber_StudentDetail FOREIGN KEY (BNumber)
        REFERENCES tlel.Student (BNumber)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)


-- create tlel.Course table
DROP TABLE IF EXISTS tlel.Course
CREATE TABLE tlel.Course (
CourseID varchar(32) NOT NULL, 
CreditHours varchar(10) NOT NULL, 
FallOffer varchar(10), 
SpringOffer varchar(10), 
SummerOffer varchar(10), 
StartDate date, 
EndDate date, 
Substitute varchar(24),

CONSTRAINT [PK_CourseID] PRIMARY KEY CLUSTERED
	([CourseID])
)




