-- create import.AcademicHistory table
DROP TABLE IF EXISTS import.AcademicHistory
CREATE TABLE import.AcademicHistory (
[B-Number] varchar(15) NOT NULL, 
[Last Name] varchar(64) NOT NULL, 
[First Name] varchar(64) NOT NULL, 
[MI] varchar(2), 
[Admit Date] varchar(6) NOT NULL, 
[Program Status] varchar(10) NOT NULL,  
[Program Status Date] varchar(10),
[Major] varchar(5) NOT NULL, 
[Advisor] varchar(20) NOT NULL, 
[Status] varchar(5) NOT NULL, 
[EDUC 600] varchar(64),
[EDUC 601] varchar(64),
[EDUC 602] varchar(64),
[EDUC 603] varchar(64),
[EDUC 604] varchar(64),
[EDUC 605] varchar(64),
[EDUC 620] varchar(64),
[EDUC 621] varchar(64),
[EDUC 622] varchar(64),
[Elective 1] varchar(64),
[Elective 2] varchar(64),
[Elective 3] varchar(64),
[Elective 4] varchar(64),
[Elective 5] varchar(64),
[Elective 6] varchar(64),
[Current CC/ABD Registration] varchar(32),
[Upcoming CC/ABD Registration] varchar(32), 
[Gender Desc.] varchar(20),
[Primary Ethnicity Desc.] varchar(64), 
[Residency] varchar(64), 
[Date of Birth] varchar(15), 
[B-Mail Address] varchar(32), 

CONSTRAINT [PK_BNumber] PRIMARY KEY CLUSTERED 
	([B-Number])
)

