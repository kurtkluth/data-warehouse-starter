CREATE TABLE [audit].[etl_activity_log] (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    TableName NVARCHAR(128),
    FileName NVARCHAR(255),
    [RowCount] INT,
    Status NVARCHAR(20),
    StartedAt DATETIME,
    CompletedAt DATETIME,
    ExecutedBy NVARCHAR(100)
);