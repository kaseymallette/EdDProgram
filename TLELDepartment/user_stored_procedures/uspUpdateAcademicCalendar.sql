CREATE PROCEDURE tlel.uspUpdateAcademicCalendar @year varchar(4)
AS 

-- create temp table to add years
DROP TABLE IF EXISTS #Years
CREATE TABLE #Years (
SemYear varchar(10)
)

-- create temp table to calculate semester codes
DROP TABLE IF EXISTS #CalcSemCode
CREATE TABLE #CalcSemCode (
Sem varchar(2), 
SemYear varchar(4), 
SemCode varchar(6), 
)

-- insert current year and next five years
INSERT INTO #Years (SemYear)
VALUES (@year), 
(SUBSTRING(@year, 1, 3) + CAST((CAST(SUBSTRING(@year, 4, 1) AS int) + 1) AS VARCHAR)),
(SUBSTRING(@year, 1, 3) + CAST((CAST(SUBSTRING(@year, 4, 1) AS int) + 2) AS VARCHAR)), 
(SUBSTRING(@year, 1, 3) + CAST((CAST(SUBSTRING(@year, 4, 1) AS int) + 3) AS VARCHAR)), 
(SUBSTRING(@year, 1, 3) + CAST((CAST(SUBSTRING(@year, 4, 1) AS int) + 4) AS VARCHAR)), 
(SUBSTRING(@year, 1, 3) + CAST((CAST(SUBSTRING(@year, 4, 1) AS int) + 5) AS VARCHAR))


-- join years and semesters and add to temp table 
INSERT INTO #CalcSemCode (Sem, SemYear, SemCode)
SELECT 
S.Sem, 
Y.SemYear, 
(Y.SemYear + S.Sem) SemCode
FROM #Years Y
INNER JOIN tlel.Semester S
ON 1=1
ORDER BY SemCode

-- insert values into AcademicCalendar
INSERT INTO tlel.AcademicCalendar (SemCode, SemesterYear, Semester)
SELECT 
C.SemCode, 
C.SemYear, 
S.Semester
FROM #CalcSemCode C
INNER JOIN tlel.Semester S
ON C.Sem = S.Sem
ORDER BY C.SemYear, C.SemCode

-- drop temp tables
DROP TABLE IF EXISTS #Years
DROP TABLE IF EXISTS #CalcSemCode

GO
