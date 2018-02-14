/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2008                              */
/* Project file:          Car-Sales.dez                                   */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2018-02-14 17:34                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [M002CustomerAddress] DROP CONSTRAINT [M001Customers_M002CustomerAddress]
GO


ALTER TABLE [M005SaleCars] DROP CONSTRAINT [M003CarModels_M005SaleCars]
GO


ALTER TABLE [M005SaleCars] DROP CONSTRAINT [M004CarManufacturer_M005SaleCars]
GO


ALTER TABLE [M005SaleCars] DROP CONSTRAINT [M006VehicleCategory_M005SaleCars]
GO


ALTER TABLE [M008CustomerPref] DROP CONSTRAINT [M007CarFeature_M008CustomerPref]
GO


ALTER TABLE [M008CustomerPref] DROP CONSTRAINT [M001Customers_M008CustomerPref]
GO


ALTER TABLE [M007CarFeature_M005SaleCars] DROP CONSTRAINT [M007CarFeature_M007CarFeature_M005SaleCars]
GO


ALTER TABLE [M007CarFeature_M005SaleCars] DROP CONSTRAINT [M005SaleCars_M007CarFeature_M005SaleCars]
GO


ALTER TABLE [M009CarsSold] DROP CONSTRAINT [M001Customers_M009CarsSold]
GO


ALTER TABLE [M009CarsSold] DROP CONSTRAINT [M005SaleCars_M009CarsSold]
GO


ALTER TABLE [M010CustomerPayments] DROP CONSTRAINT [M001Customers_M010CustomerPayments]
GO


ALTER TABLE [M010CustomerPayments] DROP CONSTRAINT [M009CarsSold_M010CustomerPayments]
GO


ALTER TABLE [M011PaymentStatus] DROP CONSTRAINT [M010CustomerPayments_M011PaymentStatus]
GO


ALTER TABLE [M012CarLoans] DROP CONSTRAINT [M013FinanceCompanies_M012CarLoans]
GO


ALTER TABLE [M012CarLoans] DROP CONSTRAINT [M009CarsSold_M012CarLoans]
GO


ALTER TABLE [M015InsurancePolicies] DROP CONSTRAINT [M014InsuranceCompanies_M015InsurancePolicies]
GO


ALTER TABLE [M015InsurancePolicies] DROP CONSTRAINT [M009CarsSold_M015InsurancePolicies]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M015InsurancePolicies"                                     */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M015InsurancePolicies] DROP CONSTRAINT [PK_M015InsurancePolicies]
GO


DROP TABLE [M015InsurancePolicies]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M012CarLoans"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M012CarLoans] DROP CONSTRAINT [PK_M012CarLoans]
GO


DROP TABLE [M012CarLoans]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M011PaymentStatus"                                         */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M011PaymentStatus] DROP CONSTRAINT [PK_M011PaymentStatus]
GO


DROP TABLE [M011PaymentStatus]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M010CustomerPayments"                                      */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M010CustomerPayments] DROP CONSTRAINT [PK_M010CustomerPayments]
GO


DROP TABLE [M010CustomerPayments]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M009CarsSold"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M009CarsSold] DROP CONSTRAINT [PK_M009CarsSold]
GO


DROP TABLE [M009CarsSold]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M007CarFeature_M005SaleCars"                               */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M007CarFeature_M005SaleCars] DROP CONSTRAINT [PK_M007CarFeature_M005SaleCars]
GO


DROP TABLE [M007CarFeature_M005SaleCars]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M005SaleCars"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M005SaleCars] DROP CONSTRAINT [PK_M005SaleCars]
GO


DROP TABLE [M005SaleCars]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M014InsuranceCompanies"                                    */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M014InsuranceCompanies] DROP CONSTRAINT [PK_M014InsuranceCompanies]
GO


DROP TABLE [M014InsuranceCompanies]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M013FinanceCompanies"                                      */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M013FinanceCompanies] DROP CONSTRAINT [PK_M013FinanceCompanies]
GO


DROP TABLE [M013FinanceCompanies]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M008CustomerPref"                                          */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M008CustomerPref] DROP CONSTRAINT [PK_M008CustomerPref]
GO


DROP TABLE [M008CustomerPref]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M007CarFeature"                                            */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M007CarFeature] DROP CONSTRAINT [PK_M007CarFeature]
GO


DROP TABLE [M007CarFeature]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M006VehicleCategory"                                       */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M006VehicleCategory] DROP CONSTRAINT [PK_M006VehicleCategory]
GO


DROP TABLE [M006VehicleCategory]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M004CarManufacturer"                                       */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M004CarManufacturer] DROP CONSTRAINT [PK_M004CarManufacturer]
GO


DROP TABLE [M004CarManufacturer]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M003CarModels"                                             */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M003CarModels] DROP CONSTRAINT [PK_M003CarModels]
GO


DROP TABLE [M003CarModels]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M002CustomerAddress"                                       */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M002CustomerAddress] DROP CONSTRAINT [PK_M002CustomerAddress]
GO


DROP TABLE [M002CustomerAddress]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "M001Customers"                                             */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [M001Customers] DROP CONSTRAINT [PK_M001Customers]
GO


DROP TABLE [M001Customers]
GO

