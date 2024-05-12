CREATE TABLE employees (
    EmployeeID int UNSIGNED NOT NULL AUTO_INCREMENT,
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    Email varchar(100) NOT NULL,
    JobTitle varchar(100) NOT NULL,
    Department varchar(100) NOT NULL,
    HireDate date NOT NULL,
    Salary decimal(10, 2) NOT NULL,
     PRIMARY KEY (EmployeeID)
);


CREATE TABLE departments (
    DepartmentID int UNSIGNED NOT NULL AUTO_INCREMENT,
    DepartmentName varchar(100) NOT NULL,
    PRIMARY KEY (DepartmentID)
);

CREATE TABLE jobs (
    JobID int UNSIGNED NOT NULL AUTO_INCREMENT,
    JobTitle varchar(100) NOT NULL,
    JobDescription text NOT NULL,
    PRIMARY KEY (JobID)
);

CREATE TABLE payrolls (
  PayrollID int UNSIGNED NOT NULL AUTO_INCREMENT,
  EmployeeID int UNSIGNED NOT NULL,
  PayDate date NOT NULL,
  Salary decimal(10, 2) NOT NULL,
  PRIMARY KEY (PayrollID),
  FOREIGN KEY (EmpLoyeeID) REFERENCES employees (EmployeeID)
);

CREATE TABLE leaves (
  LeaveID int UNSIGNED NOT NULL AUTO_INCREMENT,
  EmployeeID int UNSIGNED NOT NULL,
  LeaveDate date NOT NULL,
  LeaveType varchar(50) NOT NULL,
  PRIMARY KEY (LeaveID),
  FOREIGN KEY (EmployeeID) REFERENCES employees (EmployeeID)
);

CREATE TABLE trainings (
    TrainingID int UNSIGNED NOT NULL AUTO_INCREMENT,
    EmployeeID int UNSIGNED NOT NULL,
    TrainingDate date NOT NULL,
    TrainingTopic varchar(100) NOT NULL,
    PRIMARY KEY (TrainingID),
    FOREIGN KEY (EmployeeID) REFERENCES employees (EmployeeID)
);

CREATE TABLE performance_reviews (
    ReviewID int UNSIGNED NOT NULL AUTO_INCREMENT,
    EmployeeID int UNSIGNED NOT NULL,
    ReviewDate date NOT NULL,
    Rating tinyint UNSIGNED NOT NULL,
    Comments text NOT NULL,
    PRIMARY KEY (ReviewID),
    FOREIGN KEY (EmployeeID) REFERENCES employees (EmployeeID)
);

