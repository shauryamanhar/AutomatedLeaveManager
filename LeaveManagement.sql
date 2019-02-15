--  student start
CREATE TABLE `leave_management`.`student` (
  `enroll` INT NOT NULL,
  `name` VARCHAR(100) NULL,
  `course` VARCHAR(100) NULL,
  `branch` VARCHAR(100) NULL,
  `semester` INT NULL,
  `email` VARCHAR(145) NULL,
  `mobileno` VARCHAR(45) NULL,
  `address` VARCHAR(200) NULL,
  `isDeleted` VARCHAR(10) NULL DEFAULT 'NO',
  PRIMARY KEY (`enroll`),
  UNIQUE INDEX `enroll_UNIQUE` (`enroll` ASC));
-- student table end

--father detail start  
  CREATE TABLE `leave_management`.`father_detail` (
  `enroll` INT NOT NULL,
  `name` VARCHAR(145) NULL,
  `mobile` VARCHAR(100) NULL,
  `email` VARCHAR(145) NULL,
  `address` VARCHAR(245) NULL,
  PRIMARY KEY (`enroll`),
  CONSTRAINT `enroll`
    FOREIGN KEY (`enroll`)
    REFERENCES `leave_management`.`student` (`enroll`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

--father detail end    

--guardian detail start    
CREATE TABLE `leave_management`.`guardian_detail` (
  `enroll` INT NOT NULL,
  `name` VARCHAR(145) NULL,
  `email` VARCHAR(145) NULL,
  `mobile` VARCHAR(45) NULL,
  `address` VARCHAR(245) NULL,
  `guardian_detailcol` VARCHAR(45) NULL,
  PRIMARY KEY (`enroll`),
  CONSTRAINT `guardian_enroll`
    FOREIGN KEY (`enroll`)
    REFERENCES `leave_management`.`student` (`enroll`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);


--guardian detail end    
    
CREATE TABLE IF NOT EXISTS `leave_management`.`leave_request`(
  `leaveId` INT NOT NULL AUTO_INCREMENT,
  `enroll` INT NULL,
  `entryDate` DATE NULL,
  `fromDate` DATE NULL,
  `toDate` DATE NULL,
  `subject` VARCHAR(100) NULL,
  `reason` VARCHAR(100) NULL,


  `seenByStudent` VARCHAR(3) DEFAULT "NO",
  `seenByAdmin` VARCHAR(3) DEFAULT "NO",
  `seenByParent` VARCHAR(3) DEFAULT "NO",

  `approvedByAdmin` VARCHAR(3) DEFAULT "NO",
  `approvedByParent` VARCHAR(3) DEFAULT "NO",

  `deletedByParent` VARCHAR(3) DEFAULT "NO",
  `deletedByStudent` VARCHAR(3) DEFAULT "NO",
  `deletedByAdmin` VARCHAR(3) DEFAULT "NO",

  `sendToStudentEmail` VARCHAR(3) DEFAULT "NO",
  `sendToStudentEmailTime` DATE NULL,

  PRIMARY KEY (`leaveId`))
ENGINE = InnoDB;    