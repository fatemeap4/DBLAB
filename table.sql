CREATE TABLE `Course` (
  `ID` INT,
  `name` NVARCHAR(MAX),
  `credit` INT,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `Quiz_Questions` (
  `Quiz_id` INT,
  `Questi_id` INT
);

CREATE TABLE `Section` (
  `Section_ID` INT,
  `Course_ID` INT,
  `semester` NVARCHAR(MAX),
  `Year` NVARCHAR(MAX),
  PRIMARY KEY (`Section_ID`, `semester`, `Year`)
);

CREATE TABLE `Teachs` (
  `T_id` INT,
  `Section_ID` INT,
  `year` NVARCHAR(MAX),
  `semester` NVARCHAR(MAX),
  PRIMARY KEY (`T_id`),
  KEY `FK_PK` (`Section_ID`, `year`, `semester`)
);

CREATE TABLE `Peformance` (
  `ID` INT,
  `Answers_quiz_id` NVARCHAR(MAX),
  `Stu_ID` INT,
  `Quiz_ID` INT,
  `Start_time` DECIMAL(14),
  `End_time` DECIMAL(14),
  `Total` NVARCHAR(MAX),
  `True` NVARCHAR(MAX),
  PRIMARY KEY (`ID`)
);

CREATE TABLE `Person` (
  `phone` NVARCHAR(MAX),
  `name` NVARCHAR(MAX),
  `family` NVARCHAR(MAX),
  `email` NVARCHAR(MAX),
  `password` NVARCHAR(MAX),
  `gender` NVARCHAR(MAX),
  KEY `key` (`phone`),
  KEY `Key` (`name`, `family`, `email`, `password`, `gender`)
);

CREATE TABLE `Answer_Question` (
  `ID` INT,
  `S_ID` INT,
  `Question_ID` INT,
  `text` NVARCHAR(MAX),
  PRIMARY KEY (`ID`)
);

CREATE TABLE `Student` (
  `ID` INT,
  `state` NVARCHAR(MAX),
  `field` NVARCHAR(MAX),
  `Tot_credit` INT,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `Answer_Quiz` (
  `ID` INT,
  `QUIZ_ID` INT,
  `Ans_Quiz_ID` INT,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `Takes` (
  `Student_ID` INT,
  `Section_ID` INT,
  `semester` NVARCHAR(MAX),
  `Year` NVARCHAR(MAX),
  KEY `FK_PK` (`Student_ID`, `Section_ID`),
  KEY `PK_FK` (`semester`, `Year`)
);

CREATE TABLE `sec-course` (
  `Course_ID` INT,
  `Section_ID` INT,
  `semester` NVARCHAR(MAX),
  `Year` NVARCHAR(MAX),
  KEY `FK,PK` (`Course_ID`, `Section_ID`, `semester`, `Year`)
);

CREATE TABLE `Choice` (
  `ID` INT,
  `text` NVARCHAR(MAX),
  `Q_ID` INT,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `Quiz` (
  `ID` INT,
  `Teacher_id` INT,
  `time` DECIMAL(14),
  `Neq_point` NVARCHAR(MAX),
  `Start_time` DECIMAL(14),
  `End_time` DECIMAL(14),
  `Exam_time` DECIMAL(14),
  `Section_ID` INT,
  `Semester` NVARCHAR(MAX),
  `Year` NVARCHAR(MAX),
  PRIMARY KEY (`ID`),
  KEY `Fk` (`Semester`)
);

CREATE TABLE `Teacher` (
  `ID` INT,
  `degree` NVARCHAR(MAX),
  `Field` Type,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `Question` (
  `ID` INT,
  `Course_ID` NVARCHAR(MAX),
  `Question_text` NVARCHAR(MAX),
  `choice_ID` INT,
  `type` NVARCHAR(MAX),
  `True_c_Id` INT,
  PRIMARY KEY (`ID`)
);

