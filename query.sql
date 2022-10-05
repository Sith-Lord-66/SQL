SELECT AVG(Amount) AS Average
FROM INTO_Budget
INNER JOIN INTO_Activity ON INTO_Budget.BuID = INTO_Activity.BuID
WHERE Title = "Coding Competition" OR Title = "Welcome Party";


SELECT StaffID,
Title,
FirstName,
LastName,
Joined,
LeftD,
ContractType,
GmName,
INTO_Campus.Address,
Country,
DeptName,
Faculty
FROM INTO_Staff
INNER JOIN INTO_Campus ON INTO_Staff.CaID = INTO_Campus.CaID
INNER JOIN INTO_Department ON INTO_Staff.DeptID = INTO_Department.DeptID
WHERE LeftD BETWEEN "2019-01-01" AND "2019-12-31";




INSERT INTO INTO_Campus(Address, GmName, Country, Status)
VALUES ("122, Pineapple Avenue, New York",
"Michael Carlos",
"USA",
"Open Soon");




SELECT Title,
FirstName,
LastName
FROM INTO_Staff
INNER JOIN INTO_Department ON INTO_Staff.DeptID = INTO_Department.DeptID
WHERE DeptName = "EEECS"




SELECT StaffID,
Title,
FirstName,
LastName
FROM INTO_Staff
WHERE StaffID <= 10
ORDER BY LastName
LIMIT 10




SELECT INTO_Staff.StaffID,
FirstName,
LastName,
COUNT(*) AS "Number Of Activities"
FROM INTO_Allocation
INNER JOIN INTO_Staff ON INTO_Staff.StaffID = INTO_Allocation.StaffID
GROUP BY INTO_Staff.StaffID




SELECT INTO_Student.StudentID,
StudentName,
ModuleName,
Score
FROM INTO_Student
INNER JOIN INTO_Enrolment ON INTO_Student.StudentID = INTO_Enrolment.StudentID
INNER JOIN INTO_Module ON INTO_Enrolment.ModuleID = INTO_Module.ModuleID
WHERE ModuleName = "Java Programming"
ORDER BY Score ASC



SELECT Approver,
SUM(Amount) AS "Lisa's Spend"
FROM INTO_Budget
WHERE Approver = "Lisa Amy"



SELECT StaffID,
Title,
FirstName,
LastName,
Address,
Country
FROM INTO_Staff
INNER JOIN INTO_Campus ON INTO_Campus.CaID = INTO_Staff.CaID
WHERE LastName LIKE "C%" AND Address LIKE "%London"



SELECT INTO_Student.StudentID,
StudentName,
ModuleName,
Semester,
Year,
Score
FROM INTO_Student
INNER JOIN INTO_Enrolment ON INTO_Student.StudentID = INTO_Enrolment.StudentID
INNER JOIN INTO_Module ON INTO_Module.ModuleID = INTO_Enrolment.ModuleID 
WHERE Year = "2020"
ORDER BY Score DESC
LIMIT 1,1
