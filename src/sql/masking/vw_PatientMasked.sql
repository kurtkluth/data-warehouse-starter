CREATE VIEW [masking].[vw_PatientMasked] AS
SELECT
    DimPatientID,
    PatientID,
    FullName,
    BirthDate,
    Gender,
    masking.ufn_MaskSSN(SSN) AS MaskedSSN,
    EffectiveStartDate,
    EffectiveEndDate
FROM warehouse.dim_Patient;