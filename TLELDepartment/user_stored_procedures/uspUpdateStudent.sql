USE TLELDepartment
GO

CREATE PROCEDURE tlel.uspUpdateStudentStatus
AS 

WITH ABDActualDate AS
(
SELECT [B-Number] BNumber,
'20' + Substring([Program Status Date], 7, 2) ABDYear,
CASE
	WHEN Substring([Program Status Date], 1, 2) IN ('01', '02', '03', '04', '05') THEN '20'
	WHEN Substring([Program Status Date], 1, 2) IN ('06', '07', '08') THEN '60'
	WHEN Substring([Program Status Date], 1, 2) IN ('09', '10', '11', '12') THEN '90'
ELSE NULL
END ABDMonth
FROM import.AcademicHistory

), 

ABDActualCode AS 
(
SELECT BNumber, (ABDYear + ABDMonth) ABDCode
FROM ABDActualDate
)


-- update ABDActual
UPDATE S
SET S.ABDActual = C.ABDCode
FROM tlel.Student S
INNER JOIN ABDActualCode C
ON C.BNumber = S.BNumber


-- update CourseComplete
UPDATE tlel.Student
SET CourseComplete = 
	CASE 
		WHEN ProgramStatus in ('GRAD', 'ABD', 'CW') THEN 'yes'
		ELSE 'no'
	END 
From tlel.Student 


-- update ABDPorjected
UPDATE tlel.Student
SET ABDProjected =
	CAST(
		(CAST(Substring(AdmitDate, 1, 4) AS int) + 5) AS VARCHAR)
		+ Substring(AdmitDate, 5, 2)
FROM tlel.Student


-- update DisProjected
UPDATE tlel.Student
SET DisProjected =
	CASE	
		WHEN ABDActual IS NOT NULL THEN CAST ((CAST(Substring(ABDActual, 1, 4) AS int) + 5) AS VARCHAR) + Substring(ABDActual, 5, 2)
		ELSE NULL
	END
FROM tlel.Student


GO

