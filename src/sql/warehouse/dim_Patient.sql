CREATE TABLE [warehouse].[dim_Patient] (
    DimPatientID INT IDENTITY(1,1) PRIMARY KEY,
    PatientID INT NOT NULL,
    FullName NVARCHAR(101),
    BirthDate DATE,
    Gender CHAR(1),
    SSN CHAR(11), -- Encrypted or masked downstream
    EffectiveStartDate DATE,
    EffectiveEndDate DATE
);