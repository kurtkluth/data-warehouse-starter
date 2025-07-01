CREATE TRIGGER trg_TrackInserts_Encounters
ON warehouse.fact_Encounter
AFTER INSERT
AS
BEGIN
    INSERT INTO [audit].[etl_activity_log] (TableName, RowCount, Status, StartedAt, ExecutedBy)
    SELECT
        'fact_Encounter',
        COUNT(*),
        'INSERT',
        GETDATE(),
        SUSER_SNAME()
    FROM inserted;
END;