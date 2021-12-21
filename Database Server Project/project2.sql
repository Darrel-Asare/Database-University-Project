/* 
By Darrel Asare

Script file which could have been used to create the project database.

CREATE TABLE `academic_staff` (
  `FacultyID` int DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `MobilePhone` varchar(255) DEFAULT NULL,
  `DateOfBirth` datetime DEFAULT NULL,
  `First_Course_Offered` varchar(255) DEFAULT NULL,
  `Term` varchar(255) DEFAULT NULL,
  `Second_Course_Offered` varchar(255) DEFAULT NULL
) 

CREATE TABLE `co-op_info` (
  `Co-op_ID` int DEFAULT NULL,
  `StudentID` int DEFAULT NULL,
  `StudentName` varchar(255) DEFAULT NULL,
  `Full_Time` bit(1) DEFAULT NULL,
  `Part_Time` bit(1) DEFAULT NULL,
  `Co-op_Program` bit(1) DEFAULT NULL,
  `Term` varchar(255) DEFAULT NULL
) 

CREATE TABLE `courses` (
  `CourseID` int DEFAULT NULL,
  `Course_Names` varchar(255) DEFAULT NULL,
  `Term` varchar(255) DEFAULT NULL,
  `sections` int DEFAULT NULL,
  `Faculty_Teaching_Course` varchar(255) DEFAULT NULL,
  `FacultyID` int DEFAULT NULL,
  `Team_Teaching` bit(1) DEFAULT NULL
) 

CREATE TABLE `degree_program` (
  `ProgramID` int DEFAULT NULL,
  `StudentID` int DEFAULT NULL,
  `StudentName` varchar(255) DEFAULT NULL,
  `BSC4` bit(1) DEFAULT NULL,
  `COSC` bit(1) DEFAULT NULL,
  `MobileNumber` varchar(255) DEFAULT NULL
) 

CREATE TABLE `grades` (
  `GradeID` int DEFAULT NULL,
  `Final_Grades` int DEFAULT NULL,
  `Course_Name` varchar(255) DEFAULT NULL,
  `Faculty_Name` varchar(255) DEFAULT NULL,
  `StudentID` varchar(255) DEFAULT NULL,
  `GPA` int DEFAULT NULL,
  `Year` int DEFAULT NULL,
  `Term` varchar(255) DEFAULT NULL
) 

CREATE TABLE `student_course_deletion` (
  `DeletionID` int DEFAULT NULL,
  `StudentID` int DEFAULT NULL,
  `CourseID` int DEFAULT NULL,
  `Course_Name` varchar(255) DEFAULT NULL
) 

CREATE TABLE `students` (
  `StudentID` int DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `DateOfBirth` datetime DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `MobilePhone` varchar(255) DEFAULT NULL,
  `Course_Enroll_ID` int DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL
)

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `academic_summary` AS
    SELECT 
        `grades`.`StudentID` AS `StudentID`,
        `grades`.`Year` AS `Year`,
        `grades`.`Final_Grades` AS `Final_Grades`,
        `grades`.`GPA` AS `GPA`,
        `courses`.`CourseID` AS `CourseID`,
        `courses`.`Course_Names` AS `Course_Names`,
        `courses`.`Term` AS `Term`
    FROM
        (`courses`
        JOIN `grades`)
        
        CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `course_list` AS
    SELECT 
        `courses`.`CourseID` AS `CourseID`,
        `courses`.`Course_Names` AS `Course_Names`,
        `courses`.`Term` AS `Term`,
        `courses`.`sections` AS `sections`,
        `courses`.`Faculty_Teaching_Course` AS `Faculty_Teaching_Course`,
        `courses`.`FacultyID` AS `FacultyID`,
        `courses`.`Team_Teaching` AS `Team_Teaching`
    FROM
        `courses`
*/


