CREATE DATABASE payXpert;
Use payXpert;


CREATE TABLE Employee
(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    Address VARCHAR(200) NOT NULL,
    Position VARCHAR(50) NOT NULL,
    JoiningDate DATE NOT NULL,
    TerminationDate DATE NULL
);

CREATE TABLE Payroll
(
    PayrollID INT PRIMARY KEY,
    EmployeeID INT FOREIGN KEY REFERENCES Employee(EmployeeID),
    PayPeriodStartDate DATE NOT NULL,
    PayPeriodEndDate DATE NOT NULL,
    BasicSalary DECIMAL(10, 2) NOT NULL,
    OvertimePay DECIMAL(10, 2) NOT NULL,
    Deductions DECIMAL(10, 2) NOT NULL,
    NetSalary DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Tax
(
    TaxID INT PRIMARY KEY,
    PayrollID INT FOREIGN KEY REFERENCES Payroll(PayrollID),
    TaxYear INT NOT NULL,
    TaxableIncome DECIMAL(10, 2) NOT NULL,
    TaxAmount DECIMAL(10, 2) NOT NULL
);

CREATE TABLE FinancialRecord
(
    RecordID INT PRIMARY KEY,
    EmployeeID INT FOREIGN KEY REFERENCES Employee(EmployeeID),
    RecordDate DATE NOT NULL,
    Description VARCHAR(200) NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    RecordType VARCHAR(50) NOT NULL
);