/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2008                              */
/* Project file:          MedicalRecords.dez                              */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2018-02-14 17:35                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [M002PatientRecords] DROP CONSTRAINT [M001Patients_M002PatientRecords]
GO


ALTER TABLE [M003Diagnosis] DROP CONSTRAINT [M001Patients_M003Diagnosis]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M003Diagnosis"                                             */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M003Diagnosis] DROP CONSTRAINT [PK_M003Diagnosis]
GO


DROP TABLE [M003Diagnosis]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M002PatientRecords"                                        */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M002PatientRecords] DROP CONSTRAINT [PK_M002PatientRecords]
GO


DROP TABLE [M002PatientRecords]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M001Patients"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M001Patients] DROP CONSTRAINT [PK_M001Patients]
GO


DROP TABLE [M001Patients]
GO

