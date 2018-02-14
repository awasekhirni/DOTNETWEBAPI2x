/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2008                              */
/* Project file:          Car-Sales.dez                                   */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2018-02-14 17:34                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "M001Customers"                                              */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M001Customers] (
    [MI001CustomerId] VARCHAR(40) NOT NULL,
    [MI001CustomerName] VARCHAR(200),
    [MI001CustomerEmail] VARCHAR(200),
    [MI001CustomerDOB] DATE,
    CONSTRAINT [PK_M001Customers] PRIMARY KEY ([MI001CustomerId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M002CustomerAddress"                                        */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M002CustomerAddress] (
    [MI002AddressId] VARCHAR(40) NOT NULL,
    [MI002Line1] VARCHAR(100),
    [MI002Line2] VARCHAR(100),
    [MI002Line3] VARCHAR(100),
    [MI002Town_City] VARCHAR(100),
    [MI002State] VARCHAR(100),
    [MI002ZipCode] VARCHAR(40),
    [MI002Country] VARCHAR(40),
    [MI002NACCode] VARCHAR(40),
    [MI002Lat] VARCHAR(40),
    [MI002Long] VARCHAR(40),
    [MI001CustomerId] VARCHAR(40) NOT NULL,
    CONSTRAINT [PK_M002CustomerAddress] PRIMARY KEY ([MI002AddressId], [MI001CustomerId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M003CarModels"                                              */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M003CarModels] (
    [MI003CarModelCode] VARCHAR(40) NOT NULL,
    [MI003CarModelName] VARCHAR(100),
    [MI003CarModelDesc] VARCHAR(40),
    [MI003CarModelDesignDate] DATE,
    [MI003CarModelisActive] BIT,
    CONSTRAINT [PK_M003CarModels] PRIMARY KEY ([MI003CarModelCode])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M004CarManufacturer"                                        */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M004CarManufacturer] (
    [MI004CMCode] VARCHAR(40) NOT NULL,
    [MI004CMFullName] VARCHAR(100),
    [MI004CMShortName] VARCHAR(40),
    [MI004CMCapacityperday] BIGINT,
    [MI004CMisActive] BIT,
    CONSTRAINT [PK_M004CarManufacturer] PRIMARY KEY ([MI004CMCode])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M006VehicleCategory"                                        */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M006VehicleCategory] (
    [MI006VTypeId] VARCHAR(40) NOT NULL,
    [MI006VTypeDesc] VARCHAR(100),
    [MI006isActive] BIT,
    CONSTRAINT [PK_M006VehicleCategory] PRIMARY KEY ([MI006VTypeId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M007CarFeature"                                             */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M007CarFeature] (
    [MI007CFId] VARCHAR(40) NOT NULL,
    [MI007CFDesc] VARCHAR(150),
    [MI007CFKeyword] VARCHAR(40),
    [MI007CFIntroDate] DATE,
    [MI007CFQualityRating] INTEGER,
    [MI007CFisActive] BIT,
    CONSTRAINT [PK_M007CarFeature] PRIMARY KEY ([MI007CFId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M008CustomerPref"                                           */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M008CustomerPref] (
    [MI008CPId] VARCHAR(40) NOT NULL,
    [MI008CPDetails] VARCHAR(100),
    [MI008CPRating] INTEGER,
    [MI007CFId] VARCHAR(40) NOT NULL,
    [MI001CustomerId] VARCHAR(40) NOT NULL,
    CONSTRAINT [PK_M008CustomerPref] PRIMARY KEY ([MI008CPId], [MI007CFId], [MI001CustomerId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M013FinanceCompanies"                                       */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M013FinanceCompanies] (
    [MI013FCId] VARCHAR(40) NOT NULL,
    [MI013FCName] VARCHAR(200),
    [MI013FCAddress] VARCHAR(500),
    CONSTRAINT [PK_M013FinanceCompanies] PRIMARY KEY ([MI013FCId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M014InsuranceCompanies"                                     */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M014InsuranceCompanies] (
    [MI014ICId] VARCHAR(40) NOT NULL,
    [MI014ICName] VARCHAR(200),
    [MI014ICAddress] VARCHAR(500),
    CONSTRAINT [PK_M014InsuranceCompanies] PRIMARY KEY ([MI014ICId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M005SaleCars"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M005SaleCars] (
    [MI005CSId] VARCHAR(40) NOT NULL,
    [MI005CSPrice] DOUBLE PRECISION,
    [MI005CSManufactureDate] DATE,
    [MI003CarModelCode] VARCHAR(40) NOT NULL,
    [MI004CMCode] VARCHAR(40) NOT NULL,
    [MI006VTypeId] VARCHAR(40) NOT NULL,
    CONSTRAINT [PK_M005SaleCars] PRIMARY KEY ([MI005CSId], [MI003CarModelCode], [MI004CMCode], [MI006VTypeId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M007CarFeature_M005SaleCars"                                */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M007CarFeature_M005SaleCars] (
    [MI007CFId] VARCHAR(40) NOT NULL,
    [MI005CSId] VARCHAR(40) NOT NULL,
    CONSTRAINT [PK_M007CarFeature_M005SaleCars] PRIMARY KEY ([MI007CFId], [MI005CSId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M009CarsSold"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M009CarsSold] (
    [MI009CarSoldId] VARCHAR(40) NOT NULL,
    [MI009CSDuty] DOUBLE PRECISION,
    [MI009CSVAT] DOUBLE PRECISION,
    [MI009DateSold] DATE,
    [MI009EMI] DOUBLE PRECISION,
    [MI009EMIDate] DATE,
    [MI009DownPayment] DOUBLE PRECISION,
    [MI009TransactionDetails] VARCHAR(100),
    [MI001CustomerId] VARCHAR(40),
    [MI005CSId] VARCHAR(40),
    [MI003CarModelCode] VARCHAR(40),
    [MI004CMCode] VARCHAR(40),
    [MI006VTypeId] VARCHAR(40),
    CONSTRAINT [PK_M009CarsSold] PRIMARY KEY ([MI009CarSoldId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M010CustomerPayments"                                       */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M010CustomerPayments] (
    [MI010CustomerPaymentId] VARCHAR(40) NOT NULL,
    [MI010PaymentDueDate] DATE,
    [MI010PaymentMade] DATE,
    [MI010ActualAmount] DOUBLE PRECISION,
    [MI001CustomerId] VARCHAR(40),
    [MI009CarSoldId] VARCHAR(40),
    CONSTRAINT [PK_M010CustomerPayments] PRIMARY KEY ([MI010CustomerPaymentId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M011PaymentStatus"                                          */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M011PaymentStatus] (
    [MI011PaymentId] VARCHAR(40) NOT NULL,
    [MI011PaymentDesc] VARCHAR(200),
    [MI010CustomerPaymentId] VARCHAR(40),
    CONSTRAINT [PK_M011PaymentStatus] PRIMARY KEY ([MI011PaymentId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M012CarLoans"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M012CarLoans] (
    [MI012LoanId] VARCHAR(40) NOT NULL,
    [MI012RepaymentStartDate] DATE,
    [MI012RepaymentEndDate] DATE,
    [MI012EMIAmount] DOUBLE PRECISION,
    [MI012isActive] BIT,
    [MI013FCId] VARCHAR(40) NOT NULL,
    [MI009CarSoldId] VARCHAR(40),
    CONSTRAINT [PK_M012CarLoans] PRIMARY KEY ([MI012LoanId], [MI013FCId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "M015InsurancePolicies"                                      */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [M015InsurancePolicies] (
    [MI015PolicyStartDate] DATE,
    [MI015PolicyRenewal] DATE,
    [MI015InsuranceEMI] DOUBLE PRECISION,
    [MI015isActive] BIT,
    [MI015PolicyId] VARCHAR(40) NOT NULL,
    [MI014ICId] VARCHAR(40) NOT NULL,
    [MI009CarSoldId] VARCHAR(40),
    CONSTRAINT [PK_M015InsurancePolicies] PRIMARY KEY ([MI015PolicyId], [MI014ICId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [M002CustomerAddress] ADD CONSTRAINT [M001Customers_M002CustomerAddress] 
    FOREIGN KEY ([MI001CustomerId]) REFERENCES [M001Customers] ([MI001CustomerId])
GO


ALTER TABLE [M005SaleCars] ADD CONSTRAINT [M003CarModels_M005SaleCars] 
    FOREIGN KEY ([MI003CarModelCode]) REFERENCES [M003CarModels] ([MI003CarModelCode])
GO


ALTER TABLE [M005SaleCars] ADD CONSTRAINT [M004CarManufacturer_M005SaleCars] 
    FOREIGN KEY ([MI004CMCode]) REFERENCES [M004CarManufacturer] ([MI004CMCode])
GO


ALTER TABLE [M005SaleCars] ADD CONSTRAINT [M006VehicleCategory_M005SaleCars] 
    FOREIGN KEY ([MI006VTypeId]) REFERENCES [M006VehicleCategory] ([MI006VTypeId])
GO


ALTER TABLE [M008CustomerPref] ADD CONSTRAINT [M007CarFeature_M008CustomerPref] 
    FOREIGN KEY ([MI007CFId]) REFERENCES [M007CarFeature] ([MI007CFId])
GO


ALTER TABLE [M008CustomerPref] ADD CONSTRAINT [M001Customers_M008CustomerPref] 
    FOREIGN KEY ([MI001CustomerId]) REFERENCES [M001Customers] ([MI001CustomerId])
GO


ALTER TABLE [M007CarFeature_M005SaleCars] ADD CONSTRAINT [M007CarFeature_M007CarFeature_M005SaleCars] 
    FOREIGN KEY ([MI007CFId]) REFERENCES [M007CarFeature] ([MI007CFId])
GO


ALTER TABLE [M007CarFeature_M005SaleCars] ADD CONSTRAINT [M005SaleCars_M007CarFeature_M005SaleCars] 
    FOREIGN KEY ([MI005CSId]) REFERENCES [M005SaleCars] ([MI005CSId])
GO


ALTER TABLE [M009CarsSold] ADD CONSTRAINT [M001Customers_M009CarsSold] 
    FOREIGN KEY ([MI001CustomerId]) REFERENCES [M001Customers] ([MI001CustomerId])
GO


ALTER TABLE [M009CarsSold] ADD CONSTRAINT [M005SaleCars_M009CarsSold] 
    FOREIGN KEY ([MI005CSId], [MI003CarModelCode], [MI004CMCode], [MI006VTypeId]) REFERENCES [M005SaleCars] ([MI005CSId],[MI003CarModelCode],[MI004CMCode],[MI006VTypeId])
GO


ALTER TABLE [M010CustomerPayments] ADD CONSTRAINT [M001Customers_M010CustomerPayments] 
    FOREIGN KEY ([MI001CustomerId]) REFERENCES [M001Customers] ([MI001CustomerId])
GO


ALTER TABLE [M010CustomerPayments] ADD CONSTRAINT [M009CarsSold_M010CustomerPayments] 
    FOREIGN KEY ([MI009CarSoldId]) REFERENCES [M009CarsSold] ([MI009CarSoldId])
GO


ALTER TABLE [M011PaymentStatus] ADD CONSTRAINT [M010CustomerPayments_M011PaymentStatus] 
    FOREIGN KEY ([MI010CustomerPaymentId]) REFERENCES [M010CustomerPayments] ([MI010CustomerPaymentId])
GO


ALTER TABLE [M012CarLoans] ADD CONSTRAINT [M013FinanceCompanies_M012CarLoans] 
    FOREIGN KEY ([MI013FCId]) REFERENCES [M013FinanceCompanies] ([MI013FCId])
GO


ALTER TABLE [M012CarLoans] ADD CONSTRAINT [M009CarsSold_M012CarLoans] 
    FOREIGN KEY ([MI009CarSoldId]) REFERENCES [M009CarsSold] ([MI009CarSoldId])
GO


ALTER TABLE [M015InsurancePolicies] ADD CONSTRAINT [M014InsuranceCompanies_M015InsurancePolicies] 
    FOREIGN KEY ([MI014ICId]) REFERENCES [M014InsuranceCompanies] ([MI014ICId])
GO


ALTER TABLE [M015InsurancePolicies] ADD CONSTRAINT [M009CarsSold_M015InsurancePolicies] 
    FOREIGN KEY ([MI009CarSoldId]) REFERENCES [M009CarsSold] ([MI009CarSoldId])
GO

