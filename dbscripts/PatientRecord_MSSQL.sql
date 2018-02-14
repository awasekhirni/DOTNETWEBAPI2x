/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2008                              */
/* Project file:          MedicalRecords.dez                              */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2018-02-14 17:35                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "M001Patients"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M001Patients] (
    [MI001PatientId] VARCHAR(40) NOT NULL,
    [MI001SSN] VARCHAR(60),
    [MI001Gender] VARCHAR(40),
    [MI001DOB] DATETIME,
    [MI001PatientName] VARCHAR(200),
    [MI001PatientMother] VARCHAR(200),
    [MI001PatientFather] VARCHAR(200),
    [MI001PatientHeight] DOUBLE PRECISION,
    [MI001PatientWeight] DOUBLE PRECISION,
    [MI001Ethnicity] VARCHAR(80),
    [MI001BloodGroup] VARCHAR(10),
    [MI001isDiabetic] BIT,
    [MI001isHypertensive] BIT,
    CONSTRAINT [PK_M001Patients] PRIMARY KEY ([MI001PatientId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M002PatientRecords"                                         */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M002PatientRecords] (
    [MI002PatientRecordId] VARCHAR(40) NOT NULL,
    [MI002PatientRecordDesc] VARCHAR(500),
    [MI001PatientId] VARCHAR(40),
    CONSTRAINT [PK_M002PatientRecords] PRIMARY KEY ([MI002PatientRecordId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M003Diagnosis"                                              */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M003Diagnosis] (
    [MI003DiagnosisId] VARCHAR(40) NOT NULL,
    [MI003DiagnosisTitle] VARCHAR(200),
    [MI003DiagnosisSummary] VARCHAR(500),
    [MI003DiagnosisSeverity] VARCHAR(50),
    [MI003DiagnosisisActive] BIT,
    [MI001PatientId] VARCHAR(40) NOT NULL,
    CONSTRAINT [PK_M003Diagnosis] PRIMARY KEY ([MI003DiagnosisId], [MI001PatientId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [M002PatientRecords] ADD CONSTRAINT [M001Patients_M002PatientRecords] 
    FOREIGN KEY ([MI001PatientId]) REFERENCES [M001Patients] ([MI001PatientId])
GO


ALTER TABLE [M003Diagnosis] ADD CONSTRAINT [M001Patients_M003Diagnosis] 
    FOREIGN KEY ([MI001PatientId]) REFERENCES [M001Patients] ([MI001PatientId])
GO

