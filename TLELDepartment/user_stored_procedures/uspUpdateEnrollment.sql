CREATE PROCEDURE import.uspUpdateEnrollmentId @enrollid int, @semcode varchar(10)
AS 

UPDATE import.CourseEnrollment
SET SemCode = @semcode
FROM import.CourseEnrollment
WHERE EnrollId = @enrollid

GO

CREATE PROCEDURE import.uspUpdateEnrollmentSem @oldsemcode varchar(10), @newsemcode varchar(10)
AS 

UPDATE import.CourseEnrollment
SET SemCode = @newsemcode
FROM import.CourseEnrollment
WHERE SemCode LIKE @oldsemcode

GO

CREATE PROCEDURE tlel.uspUpdateEnrollment
AS 

-- EDUC 600
INSERT INTO import.CourseEnrollment 
(BNumber, CourseId, SemCode, EnrollCode)
SELECT 
[B-Number],
CASE 
	WHEN [EDUC 600] LIKE '_%' THEN 'EDUC 600'
	ELSE NULL
END CourseId,
CASE 
	WHEN [EDUC 600] LIKE 'EDUC%' THEN SUBSTRING([EDUC 600], 11, 6)
	WHEN [EDUC 600] LIKE 'CCPA%' THEN SUBSTRING([EDUC 600], 11, 6)
	ELSE NULL
END SemCode, 
[EDUC 600]
FROM import.AcademicHistory
WHERE [EDUC 600] LIKE '_%'


-- EDUC 601
INSERT INTO import.CourseEnrollment 
(BNumber, CourseId, SemCode, EnrollCode)
SELECT 
[B-Number],
CASE 
	WHEN [EDUC 601] LIKE '_%' THEN 'EDUC 601'
	ELSE NULL
END CourseId,
CASE 
	WHEN [EDUC 601] LIKE 'EDUC%' THEN SUBSTRING([EDUC 601], 11, 6)
	WHEN [EDUC 601] LIKE 'CCPA%' THEN SUBSTRING([EDUC 601], 11, 6)
	ELSE NULL
END SemCode, 
[EDUC 601]
FROM import.AcademicHistory
WHERE [EDUC 601] LIKE '_%'


-- EDUC 602
INSERT INTO import.CourseEnrollment 
(BNumber, CourseId, SemCode, EnrollCode)
SELECT 
[B-Number],
CASE 
	WHEN [EDUC 602] LIKE '_%' THEN 'EDUC 602'
	ELSE NULL
END CourseId,
CASE 
	WHEN [EDUC 602] LIKE 'EDUC%' THEN SUBSTRING([EDUC 602], 11, 6)
	WHEN [EDUC 602] LIKE 'CCPA%' THEN SUBSTRING([EDUC 602], 11, 6)
	ELSE NULL
END SemCode, 
[EDUC 602]
FROM import.AcademicHistory
WHERE [EDUC 602] LIKE '_%'


-- EDUC 603
INSERT INTO import.CourseEnrollment 
(BNumber, CourseId, SemCode, EnrollCode)
SELECT 
[B-Number],
CASE 
	WHEN [EDUC 603] LIKE '_%' THEN 'EDUC 603'
	ELSE NULL
END CourseId,
CASE 
	WHEN [EDUC 603] LIKE 'EDUC%' THEN SUBSTRING([EDUC 603], 11, 6)
	WHEN [EDUC 603] LIKE 'CCPA%' THEN SUBSTRING([EDUC 603], 11, 6)
	ELSE NULL
END SemCode, 
[EDUC 603]
FROM import.AcademicHistory
WHERE [EDUC 603] LIKE '_%'


-- EDUC 604
INSERT INTO import.CourseEnrollment 
(BNumber, CourseId, SemCode, EnrollCode)
SELECT 
[B-Number],
CASE 
	WHEN [EDUC 604] LIKE '_%' THEN 'EDUC 604'
	ELSE NULL
END CourseId,
CASE 
	WHEN [EDUC 604] LIKE 'EDUC%' THEN SUBSTRING([EDUC 604], 11, 6)
	WHEN [EDUC 604] LIKE 'CCPA%' THEN SUBSTRING([EDUC 604], 11, 6)
	ELSE NULL
END SemCode, 
[EDUC 604]
FROM import.AcademicHistory
WHERE [EDUC 604] LIKE '_%'


-- EDUC 605
INSERT INTO import.CourseEnrollment 
(BNumber, CourseId, SemCode, EnrollCode)
SELECT 
[B-Number],
CASE 
	WHEN [EDUC 605] LIKE '_%' THEN 'EDUC 605'
	ELSE NULL
END CourseId,
CASE 
	WHEN [EDUC 605] LIKE 'EDUC%' THEN SUBSTRING([EDUC 605], 11, 6)
	WHEN [EDUC 605] LIKE 'CCPA%' THEN SUBSTRING([EDUC 605], 11, 6)
	ELSE NULL
END SemCode, 
[EDUC 605]
FROM import.AcademicHistory
WHERE [EDUC 605] LIKE '_%'


-- EDUC 620
INSERT INTO import.CourseEnrollment 
(BNumber, CourseId, SemCode, EnrollCode)
SELECT 
[B-Number],
CASE 
	WHEN [EDUC 620] LIKE '_%' THEN 'EDUC 620'
	ELSE NULL
END CourseId,
CASE 
	WHEN [EDUC 620] LIKE 'EDUC%' THEN SUBSTRING([EDUC 620], 11, 6)
	WHEN [EDUC 620] LIKE 'CCPA%' THEN SUBSTRING([EDUC 620], 11, 6)
	ELSE NULL
END SemCode, 
[EDUC 620]
FROM import.AcademicHistory
WHERE [EDUC 620] LIKE '_%'


-- EDUC 621
INSERT INTO import.CourseEnrollment 
(BNumber, CourseId, SemCode, EnrollCode)
SELECT 
[B-Number],
CASE 
	WHEN [EDUC 621] LIKE '_%' THEN 'EDUC 621'
	ELSE NULL
END CourseId,
CASE 
	WHEN [EDUC 621] LIKE 'EDUC%' THEN SUBSTRING([EDUC 621], 11, 6)
	WHEN [EDUC 621] LIKE 'CCPA%' THEN SUBSTRING([EDUC 621], 11, 6)
	ELSE NULL
END SemCode, 
[EDUC 621]
FROM import.AcademicHistory
WHERE [EDUC 621] LIKE '_%'


-- EDUC 622
INSERT INTO import.CourseEnrollment 
(BNumber, CourseId, SemCode, EnrollCode)
SELECT 
[B-Number],
CASE 
	WHEN [EDUC 622] LIKE '_%' THEN 'EDUC 622'
	ELSE NULL
END CourseId,
CASE 
	WHEN [EDUC 622] LIKE 'EDUC%' THEN SUBSTRING([EDUC 622], 11, 6)
	WHEN [EDUC 622] LIKE 'CCPA%' THEN SUBSTRING([EDUC 622], 11, 6)
	ELSE NULL
END SemCode, 
[EDUC 622]
FROM import.AcademicHistory
WHERE [EDUC 622] LIKE '_%'


-- Elective 1
INSERT INTO import.CourseEnrollment 
(BNumber, CourseId, SemCode, EnrollCode)
SELECT 
[B-Number],
CASE 
	WHEN [Elective 1] LIKE '_%' THEN 'Elective 1'
	ELSE NULL
END CourseId,
CASE 
	WHEN [Elective 1] LIKE 'EDUC%' THEN SUBSTRING([Elective 1], 11, 7)
	WHEN [Elective 1] LIKE 'CCPA%' THEN SUBSTRING([Elective 1], 11, 7)
	WHEN [Elective 1] LIKE 'ENG%' THEN SUBSTRING([Elective 1], 11, 6)
	WHEN [Elective 1] LIKE 'PSYC%' THEN SUBSTRING([Elective 1], 11, 6)
	WHEN [Elective 1] LIKE 'LTRC%' THEN SUBSTRING([Elective 1], 11, 6)
	WHEN [Elective 1] LIKE 'GRD%' THEN SUBSTRING([Elective 1], 10, 6)
	WHEN [Elective 1] LIKE 'NURS%' THEN SUBSTRING([Elective 1], 11, 7)
	WHEN [Elective 1] LIKE 'SAA%' THEN SUBSTRING([Elective 1], 10, 6)
	ELSE NULL
END SemCode, 
[Elective 1]
FROM import.AcademicHistory
WHERE [Elective 1] LIKE '_%'


-- Elective 2
INSERT INTO import.CourseEnrollment 
(BNumber, CourseId, SemCode, EnrollCode)
SELECT 
[B-Number],
CASE 
	WHEN [Elective 2] LIKE '_%' THEN 'Elective 2'
	ELSE NULL
END CourseId,
CASE 
	WHEN [Elective 2] LIKE 'EDUC%' THEN SUBSTRING([Elective 2], 11, 7)
	WHEN [Elective 2] LIKE 'CCPA%' THEN SUBSTRING([Elective 2], 11, 7)
	WHEN [Elective 2] LIKE 'ENG%' THEN SUBSTRING([Elective 2], 11, 6)
	WHEN [Elective 2] LIKE 'PSYC%' THEN SUBSTRING([Elective 2], 11, 6)
	WHEN [Elective 2] LIKE 'LTRC%' THEN SUBSTRING([Elective 2], 11, 6)
	WHEN [Elective 2] LIKE 'GRD%' THEN SUBSTRING([Elective 2], 10, 6)
	WHEN [Elective 2] LIKE 'NURS%' THEN SUBSTRING([Elective 2], 11, 7)
	WHEN [Elective 2] LIKE 'SAA%' THEN SUBSTRING([Elective 2], 10, 6)
	ELSE NULL
END SemCode, 
[Elective 2]
FROM import.AcademicHistory
WHERE [Elective 2] LIKE '_%'


-- Elective 3
INSERT INTO import.CourseEnrollment 
(BNumber, CourseId, SemCode, EnrollCode)
SELECT 
[B-Number],
CASE 
	WHEN [Elective 3] LIKE '_%' THEN 'Elective 3'
	ELSE NULL
END CourseId,
CASE 
	WHEN [Elective 3] LIKE 'EDUC%' THEN SUBSTRING([Elective 3], 11, 7)
	WHEN [Elective 3] LIKE 'CCPA%' THEN SUBSTRING([Elective 3], 11, 7)
	WHEN [Elective 3] LIKE 'ENG%' THEN SUBSTRING([Elective 3], 11, 6)
	WHEN [Elective 3] LIKE 'PSYC%' THEN SUBSTRING([Elective 3], 11, 6)
	WHEN [Elective 3] LIKE 'LTRC%' THEN SUBSTRING([Elective 3], 11, 6)
	WHEN [Elective 3] LIKE 'GRD%' THEN SUBSTRING([Elective 3], 10, 6)
	WHEN [Elective 3] LIKE 'NURS%' THEN SUBSTRING([Elective 3], 11, 7)
	WHEN [Elective 3] LIKE 'SAA%' THEN SUBSTRING([Elective 3], 10, 6)
	ELSE NULL
END SemCode, 
[Elective 3]
FROM import.AcademicHistory
WHERE [Elective 3] LIKE '_%'



-- Elective 4
INSERT INTO import.CourseEnrollment 
(BNumber, CourseId, SemCode, EnrollCode)
SELECT 
[B-Number],
CASE 
	WHEN [Elective 4] LIKE '_%' THEN 'Elective 4'
	ELSE NULL
END CourseId,
CASE 
	WHEN [Elective 4] LIKE 'EDUC%' THEN SUBSTRING([Elective 4], 11, 7)
	WHEN [Elective 4] LIKE 'CCPA%' THEN SUBSTRING([Elective 4], 11, 7)
	WHEN [Elective 4] LIKE 'ENG%' THEN SUBSTRING([Elective 4], 11, 6)
	WHEN [Elective 4] LIKE 'PSYC%' THEN SUBSTRING([Elective 4], 11, 6)
	WHEN [Elective 4] LIKE 'LTRC%' THEN SUBSTRING([Elective 4], 11, 6)
	WHEN [Elective 4] LIKE 'GRD%' THEN SUBSTRING([Elective 4], 10, 6)
	WHEN [Elective 4] LIKE 'NURS%' THEN SUBSTRING([Elective 4], 11, 7)
	WHEN [Elective 4] LIKE 'SAA%' THEN SUBSTRING([Elective 4], 10, 6)
	ELSE NULL
END SemCode, 
[Elective 4]
FROM import.AcademicHistory
WHERE [Elective 4] LIKE '_%'



-- Elective 5
INSERT INTO import.CourseEnrollment 
(BNumber, CourseId, SemCode, EnrollCode)
SELECT 
[B-Number],
CASE 
	WHEN [Elective 5] LIKE '_%' THEN 'Elective 5'
	ELSE NULL
END CourseId,
CASE 
	WHEN [Elective 5] LIKE 'EDUC%' THEN SUBSTRING([Elective 5], 11, 7)
	WHEN [Elective 5] LIKE 'CCPA%' THEN SUBSTRING([Elective 5], 11, 7)
	WHEN [Elective 5] LIKE 'ENG%' THEN SUBSTRING([Elective 5], 11, 6)
	WHEN [Elective 5] LIKE 'PSYC%' THEN SUBSTRING([Elective 5], 11, 6)
	WHEN [Elective 5] LIKE 'LTRC%' THEN SUBSTRING([Elective 5], 11, 6)
	WHEN [Elective 5] LIKE 'GRD%' THEN SUBSTRING([Elective 5], 10, 6)
	WHEN [Elective 5] LIKE 'NURS%' THEN SUBSTRING([Elective 5], 11, 7)
	WHEN [Elective 5] LIKE 'SAA%' THEN SUBSTRING([Elective 1], 10, 6)
	ELSE NULL
END SemCode, 
[Elective 5]
FROM import.AcademicHistory
WHERE [Elective 5] LIKE '_%'


-- Elective 6
INSERT INTO import.CourseEnrollment 
(BNumber, CourseId, SemCode, EnrollCode)
SELECT 
[B-Number],
CASE 
	WHEN [Elective 6] LIKE '_%' THEN 'Elective 6'
	ELSE NULL
END CourseId,
CASE 
	WHEN [Elective 6] LIKE 'EDUC%' THEN SUBSTRING([Elective 6], 11, 7)
	WHEN [Elective 6] LIKE 'CCPA%' THEN SUBSTRING([Elective 6], 11, 7)
	WHEN [Elective 6] LIKE 'ENG%' THEN SUBSTRING([Elective 6], 11, 6)
	WHEN [Elective 6] LIKE 'PSYC%' THEN SUBSTRING([Elective 6], 11, 6)
	WHEN [Elective 6] LIKE 'LTRC%' THEN SUBSTRING([Elective 6], 11, 6)
	WHEN [Elective 6] LIKE 'GRD%' THEN SUBSTRING([Elective 6], 10, 6)
	WHEN [Elective 6] LIKE 'NURS%' THEN SUBSTRING([Elective 6], 11, 7)
	WHEN [Elective 6] LIKE 'SAA%' THEN SUBSTRING([Elective 6], 10, 6)
	ELSE NULL
END SemCode, 
[Elective 6]
FROM import.AcademicHistory
WHERE [Elective 6] LIKE '_%'


-- remove whitespace from SemCode
UPDATE import.CourseEnrollment
SET SemCode = LEFT(SemCode, 6)
FROM import.CourseEnrollment


-- change semester codes for enrollid 
EXEC import.uspUpdateEnrollmentId @enrollid = 81, @semcode = '201790'
EXEC import.uspUpdateEnrollmentId @enrollid = 198, @semcode = '202120'
EXEC import.uspUpdateEnrollmentId @enrollid = 288, @semcode = '201920'
EXEC import.uspUpdateEnrollmentId @enrollid = 435, @semcode = '202120'
EXEC import.uspUpdateEnrollmentId @enrollid = 458, @semcode = '202120'
EXEC import.uspUpdateEnrollmentId @enrollid = 464, @semcode = '201720'
EXEC import.uspUpdateEnrollmentId @enrollid = 481, @semcode = '201990'
EXEC import.uspUpdateEnrollmentId @enrollid = 559, @semcode = '201190'
EXEC import.uspUpdateEnrollmentId @enrollid = 566, @semcode = '201120'
EXEC import.uspUpdateEnrollmentId @enrollid = 573, @semcode = '201390'
EXEC import.uspUpdateEnrollmentId @enrollid = 579, @semcode = '201960'
EXEC import.uspUpdateEnrollmentId @enrollid = 580, @semcode = '201820'
EXEC import.uspUpdateEnrollmentId @enrollid = 585, @semcode = '201820'
EXEC import.uspUpdateEnrollmentId @enrollid = 595, @semcode = '201190'
EXEC import.uspUpdateEnrollmentId @enrollid = 595, @semcode = '201190'
EXEC import.uspUpdateEnrollmentId @enrollid = 635, @semcode = '202190'
EXEC import.uspUpdateEnrollmentId @enrollid = 672, @semcode = '201990'
EXEC import.uspUpdateEnrollmentId @enrollid = 675, @semcode = '201790'
EXEC import.uspUpdateEnrollmentId @enrollid = 690, @semcode = '202160'
EXEC import.uspUpdateEnrollmentId @enrollid = 697, @semcode = '202020'
EXEC import.uspUpdateEnrollmentId @enrollid = 706, @semcode = '199690'
EXEC import.uspUpdateEnrollmentId @enrollid = 723, @semcode = '202120'
EXEC import.uspUpdateEnrollmentId @enrollid = 729, @semcode = '202110'

-- change semester codes for error in semcode 
EXEC import.uspUpdateEnrollmentSem @oldsemcode = '%19966', @newsemcode = '199660'
EXEC import.uspUpdateEnrollmentSem @oldsemcode = '%20099', @newsemcode = '200090'
EXEC import.uspUpdateEnrollmentSem @oldsemcode = '%20109', @newsemcode = '201090'
EXEC import.uspUpdateEnrollmentSem @oldsemcode = '%20139', @newsemcode = '201390'
EXEC import.uspUpdateEnrollmentSem @oldsemcode = '%20152', @newsemcode = '201520'
EXEC import.uspUpdateEnrollmentSem @oldsemcode = '%20159', @newsemcode = '201590'
EXEC import.uspUpdateEnrollmentSem @oldsemcode = '%20166', @newsemcode = '201660'
EXEC import.uspUpdateEnrollmentSem @oldsemcode = '%20169', @newsemcode = '201690'
EXEC import.uspUpdateEnrollmentSem @oldsemcode = '%20172', @newsemcode = '201720'
EXEC import.uspUpdateEnrollmentSem @oldsemcode = '%20182', @newsemcode = '201820'
EXEC import.uspUpdateEnrollmentSem @oldsemcode = '%20199', @newsemcode = '201990'
EXEC import.uspUpdateEnrollmentSem @oldsemcode = '%20209', @newsemcode = '202090'
EXEC import.uspUpdateEnrollmentSem @oldsemcode = '%20212', @newsemcode = '202120'
EXEC import.uspUpdateEnrollmentSem @oldsemcode = '2190', @newsemcode = '202190'
EXEC import.uspUpdateEnrollmentSem @oldsemcode = '%multi%', @newsemcode = NULL


GO