CREATE TABLE [staging].[stg_Patient_Load] (
    PatientID INT NOT NULL,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    SSN CHAR(11),
    DOB DATE,
    Gender CHAR(1),
    FileName NVARCHAR(255),
    LoadDate DATETIME DEFAULT GETDATE()
);