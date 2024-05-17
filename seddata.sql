INSERT INTO Employee
    (EmployeeID, FirstName, LastName, DateOfBirth, Gender, Email, PhoneNumber, Address, Position, JoiningDate, TerminationDate)
VALUES
    (1, 'John', 'Doe', '1985-05-15', 'Male', 'john.doe@email.com', '1234567890', '123 Main St, Cityville, State', 'Manager', '2010-01-01', NULL),
    (2, 'Jane', 'Smith', '1990-11-20', 'Female', 'jane.smith@email.com', '9876543210', '456 Elm St, Townsville, State', 'Developer', '2015-03-15', NULL),
    (3, 'Michael', 'Johnson', '1988-09-10', 'Male', 'michael.johnson@email.com', '5555555555', '789 Oak Rd, Villageville, State', 'Accountant', '2012-06-01', NULL),
    (4, 'Emily', 'Williams', '1992-02-28', 'Female', 'emily.williams@email.com', '1111111111', '321 Pine Ave, Cityville, State', 'HR Specialist', '2018-09-01', NULL),
    (5, 'David', 'Brown', '1980-07-05', 'Male', 'david.brown@email.com', '2222222222', '654 Maple Ln, Townsville, State', 'Sales Manager', '2008-02-15', NULL),
    (6, 'Sarah', 'Davis', '1985-12-25', 'Female', 'sarah.davis@email.com', '3333333333', '987 Cedar Rd, Villageville, State', 'Marketing Coordinator', '2014-10-01', NULL),
    (7, 'Robert', 'Wilson', '1978-03-18', 'Male', 'robert.wilson@email.com', '4444444444', '159 Spruce St, Cityville, State', 'IT Support', '2011-05-01', '2023-03-31'),
    (8, 'Jessica', 'Anderson', '1993-06-12', 'Female', 'jessica.anderson@email.com', '6666666666', '753 Oak Blvd, Townsville, State', 'Administrative Assistant', '2019-02-01', NULL),
    (9, 'Matthew', 'Thomas', '1987-11-30', 'Male', 'matthew.thomas@email.com', '7777777777', '246 Elm Ct, Villageville, State', 'Project Manager', '2013-08-15', NULL),
    (10, 'Amanda', 'Jackson', '1991-04-05', 'Female', 'amanda.jackson@email.com', '8888888888', '369 Pine Rd, Cityville, State', 'Quality Assurance', '2017-01-01', NULL);

INSERT INTO Payroll
    (PayrollID, EmployeeID, PayPeriodStartDate, PayPeriodEndDate, BasicSalary, OvertimePay, Deductions, NetSalary)
VALUES
    (1, 1, '2023-05-01', '2023-05-15', 5000.00, 500.00, 1000.00, 4500.00),
    (2, 2, '2023-05-01', '2023-05-15', 4500.00, 300.00, 800.00, 4000.00),
    (3, 3, '2023-05-01', '2023-05-15', 6000.00, 0.00, 1200.00, 4800.00),
    (4, 4, '2023-05-01', '2023-05-15', 3800.00, 200.00, 600.00, 3400.00),
    (5, 5, '2023-05-01', '2023-05-15', 7000.00, 1000.00, 1600.00, 6400.00),
    (6, 6, '2023-05-01', '2023-05-15', 4200.00, 400.00, 700.00, 3900.00),
    (7, 7, '2023-05-01', '2023-05-15', 3500.00, 0.00, 500.00, 3000.00),
    (8, 8, '2023-05-01', '2023-05-15', 3000.00, 100.00, 400.00, 2700.00),
    (9, 9, '2023-05-01', '2023-05-15', 6500.00, 800.00, 1400.00, 5900.00),
    (10, 10, '2023-05-01', '2023-05-15', 4000.00, 300.00, 700.00, 3600.00);

INSERT INTO Tax
    (TaxID, PayrollID, TaxYear, TaxableIncome, TaxAmount)
VALUES
    (1, 1, 2023, 60000.00, 12000.00),
    (2, 2, 2023, 54000.00, 10800.00),
    (3, 3, 2023, 72000.00, 14400.00),
    (4, 4, 2023, 45600.00, 9120.00),
    (5, 5, 2023, 84000.00, 16800.00),
    (6, 6, 2023, 50400.00, 10080.00),
    (7, 7, 2023, 42000.00, 8400.00),
    (8, 8, 2023, 36000.00, 7200.00),
    (9, 9, 2023, 78000.00, 15600.00),
    (10, 10, 2023, 48000.00, 9600.00);

INSERT INTO FinancialRecord
    (RecordID, EmployeeID, RecordDate, Description, Amount, RecordType)
VALUES
    (1, 1, '2023-05-10', 'Salary', 4500.00, 'Income'),
    (2, 2, '2023-05-12', 'Reimbursement', 150.00, 'Income'),
    (3, 3, '2023-05-15', 'Tax Payment', 1200.00, 'Expense'),
    (4, 4, '2023-05-08', 'Bonus', 500.00, 'Income'),
    (5, 5, '2023-05-20', 'Travel Expense', 300.00, 'Expense'),
    (6, 6, '2023-05-18', 'Salary', 3900.00, 'Income'),
    (7, 7, '2023-05-25', 'Medical Insurance', 200.00, 'Expense'),
    (8, 8, '2023-05-02', 'Salary', 2700.00, 'Income'),
    (9, 9, '2023-05-28', 'Retirement Contribution', 1000.00, 'Expense'),
    (10, 10, '2023-05-05', 'Salary', 3600.00, 'Income');