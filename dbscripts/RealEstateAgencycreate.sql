/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2005                              */
/* Project file:          real-estate-agency.dez                          */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2018-02-14 17:10                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "Feature"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Feature] (
    [FeatureCode] VARCHAR(10) NOT NULL,
    [FeatureDescription] VARCHAR(40),
    CONSTRAINT [Features_FID_pk] PRIMARY KEY ([FeatureCode])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Country"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Country] (
    [CountryCode] VARCHAR(2) NOT NULL,
    [CountryName] VARCHAR(80),
    CONSTRAINT [PK_Country] PRIMARY KEY ([CountryCode])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "City"                                                       */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [City] (
    [CityID] INTEGER NOT NULL,
    [CityName] VARCHAR(80),
    CONSTRAINT [PK_City] PRIMARY KEY ([CityID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "StateOrProvince"                                            */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [StateOrProvince] (
    [StateOrProvinceID] INTEGER NOT NULL,
    [StateOrProvinceCode] VARCHAR(10),
    [StateOrProvinceName] VARCHAR(80),
    CONSTRAINT [PK_StateOrProvince] PRIMARY KEY ([StateOrProvinceID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Person"                                                     */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Person] (
    [PersonID] INTEGER NOT NULL,
    [LastName] VARCHAR(50),
    [MiddleName] VARCHAR(15),
    [FirstName] VARCHAR(40),
    [Initials] VARCHAR(40),
    [Title] VARCHAR(40),
    [Gender] VARCHAR(40),
    [BirthDate] VARCHAR(40),
    CONSTRAINT [PK_Person] PRIMARY KEY ([PersonID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "RentalAgreement"                                            */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [RentalAgreement] (
    [RentalAgreementID] INTEGER NOT NULL,
    [RentelAgreementContent] TEXT,
    CONSTRAINT [PK_RentalAgreement] PRIMARY KEY ([RentalAgreementID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Owner"                                                      */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Owner] (
    [PersonID] INTEGER NOT NULL,
    CONSTRAINT [Owner_PEID_pk] PRIMARY KEY ([PersonID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Client"                                                     */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Client] (
    [PersonID] INTEGER NOT NULL,
    [MaxPrice] MONEY,
    CONSTRAINT [Buyer_PEID_pk] PRIMARY KEY ([PersonID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Agent"                                                      */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Agent] (
    [PersonID] INTEGER NOT NULL,
    [Office] VARCHAR(40),
    CONSTRAINT [Staff_PEID_pk] PRIMARY KEY ([PersonID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "ZipCode"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [ZipCode] (
    [ZipCode] VARCHAR(10) NOT NULL,
    [CountryCode] VARCHAR(2),
    [StateOrProvinceID] INTEGER,
    [CityID] INTEGER,
    CONSTRAINT [PK_ZipCode] PRIMARY KEY ([ZipCode])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Address"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Address] (
    [AddressID] INTEGER NOT NULL,
    [AddressStreet] VARCHAR(80),
    [AddressType] VARCHAR(40),
    [ZipCode] VARCHAR(10),
    CONSTRAINT [PK_Address] PRIMARY KEY ([AddressID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "ClientWish"                                                 */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [ClientWish] (
    [FeatureCode] VARCHAR(10) NOT NULL,
    [PersonID] INTEGER NOT NULL,
    CONSTRAINT [PK_ClientWish] PRIMARY KEY ([FeatureCode], [PersonID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Property"                                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Property] (
    [PropertyID] INTEGER NOT NULL,
    [PropertyDateAdded] DATETIME,
    [AddressID] INTEGER,
    [PersonID] INTEGER,
    [PropertyNumberOfRooms] INTEGER,
    [PropertyNumberOfBedRooms] INTEGER,
    [PropertyNumberOfBathRooms] INTEGER,
    [PropertySquareMeters] INTEGER,
    [PropertyNumberOfGarages] INTEGER,
    [PropertyLongDescription] TEXT,
    [PropertyShortDescription] TEXT,
    CONSTRAINT [Property_PNo_pk] PRIMARY KEY ([PropertyID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "PropertyForSale"                                            */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [PropertyForSale] (
    [PropertyID] INTEGER NOT NULL,
    [PropertySuggestedPrice] MONEY,
    CONSTRAINT [PK_PropertyForSale] PRIMARY KEY ([PropertyID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "PropertyForRent"                                            */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [PropertyForRent] (
    [PropertyID] INTEGER NOT NULL,
    [PropertySuggestedRentPrice] MONEY,
    [PropertyAvailableForRentFromDate] DATETIME,
    [PropertyAvailableForRentToDate] DATETIME,
    CONSTRAINT [PK_PropertyForRent] PRIMARY KEY ([PropertyID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Visit"                                                      */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Visit] (
    [ClientPersonID] INTEGER NOT NULL,
    [AgentPersonID] INTEGER NOT NULL,
    [PropertyID] INTEGER NOT NULL,
    [VisitDate] DATETIME NOT NULL,
    [Duration] INTEGER,
    CONSTRAINT [PK_Visit] PRIMARY KEY ([ClientPersonID], [AgentPersonID], [PropertyID], [VisitDate])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Sale"                                                       */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Sale] (
    [AgentPersonID] INTEGER NOT NULL,
    [ClientPersonID] INTEGER NOT NULL,
    [SaleDate] DATETIME NOT NULL,
    [PropertyID] INTEGER NOT NULL,
    [Price] MONEY,
    CONSTRAINT [PK_Sale] PRIMARY KEY ([AgentPersonID], [ClientPersonID], [SaleDate], [PropertyID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Rent"                                                       */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Rent] (
    [RentStartDate] DATETIME NOT NULL,
    [AgentPersonID] INTEGER NOT NULL,
    [ClientPersonID] INTEGER NOT NULL,
    [PropertyID] INTEGER NOT NULL,
    [RentPrice] MONEY,
    [RentEndDate] DATETIME,
    [RentalAgreementID] INTEGER,
    CONSTRAINT [PK_Rent] PRIMARY KEY ([RentStartDate], [AgentPersonID], [ClientPersonID], [PropertyID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "PropertyFeature"                                            */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [PropertyFeature] (
    [FeatureCode] VARCHAR(10) NOT NULL,
    [PropertyID] INTEGER NOT NULL,
    CONSTRAINT [PK_PropertyFeature] PRIMARY KEY ([FeatureCode], [PropertyID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [Property] ADD CONSTRAINT [Property_PNo_fk] 
    FOREIGN KEY ([PersonID]) REFERENCES [Owner] ([PersonID])
GO


ALTER TABLE [Property] ADD CONSTRAINT [Address_Property] 
    FOREIGN KEY ([AddressID]) REFERENCES [Address] ([AddressID])
GO


ALTER TABLE [Owner] ADD CONSTRAINT [Person_Owner] 
    FOREIGN KEY ([PersonID]) REFERENCES [Person] ([PersonID])
GO


ALTER TABLE [Client] ADD CONSTRAINT [Person_Client] 
    FOREIGN KEY ([PersonID]) REFERENCES [Person] ([PersonID])
GO


ALTER TABLE [Agent] ADD CONSTRAINT [Person_Agent] 
    FOREIGN KEY ([PersonID]) REFERENCES [Person] ([PersonID])
GO


ALTER TABLE [PropertyForSale] ADD CONSTRAINT [Property_PropertyForSale] 
    FOREIGN KEY ([PropertyID]) REFERENCES [Property] ([PropertyID])
GO


ALTER TABLE [PropertyForRent] ADD CONSTRAINT [Property_PropertyForRent] 
    FOREIGN KEY ([PropertyID]) REFERENCES [Property] ([PropertyID])
GO


ALTER TABLE [ZipCode] ADD CONSTRAINT [Country_ZipCode] 
    FOREIGN KEY ([CountryCode]) REFERENCES [Country] ([CountryCode])
GO


ALTER TABLE [ZipCode] ADD CONSTRAINT [StateOrProvince_ZipCode] 
    FOREIGN KEY ([StateOrProvinceID]) REFERENCES [StateOrProvince] ([StateOrProvinceID])
GO


ALTER TABLE [ZipCode] ADD CONSTRAINT [City_ZipCode] 
    FOREIGN KEY ([CityID]) REFERENCES [City] ([CityID])
GO


ALTER TABLE [Address] ADD CONSTRAINT [ZipCode_Address] 
    FOREIGN KEY ([ZipCode]) REFERENCES [ZipCode] ([ZipCode])
GO


ALTER TABLE [Visit] ADD CONSTRAINT [Client_Visit] 
    FOREIGN KEY ([ClientPersonID]) REFERENCES [Client] ([PersonID])
GO


ALTER TABLE [Visit] ADD CONSTRAINT [Agent_Visit] 
    FOREIGN KEY ([AgentPersonID]) REFERENCES [Agent] ([PersonID])
GO


ALTER TABLE [Visit] ADD CONSTRAINT [Property_Visit] 
    FOREIGN KEY ([PropertyID]) REFERENCES [Property] ([PropertyID])
GO


ALTER TABLE [Sale] ADD CONSTRAINT [Agent_Sale] 
    FOREIGN KEY ([AgentPersonID]) REFERENCES [Agent] ([PersonID])
GO


ALTER TABLE [Sale] ADD CONSTRAINT [Client_Sale] 
    FOREIGN KEY ([ClientPersonID]) REFERENCES [Client] ([PersonID])
GO


ALTER TABLE [Sale] ADD CONSTRAINT [PropertyForSale_Sale] 
    FOREIGN KEY ([PropertyID]) REFERENCES [PropertyForSale] ([PropertyID])
GO


ALTER TABLE [Rent] ADD CONSTRAINT [Agent_Rent] 
    FOREIGN KEY ([AgentPersonID]) REFERENCES [Agent] ([PersonID])
GO


ALTER TABLE [Rent] ADD CONSTRAINT [Client_Rent] 
    FOREIGN KEY ([ClientPersonID]) REFERENCES [Client] ([PersonID])
GO


ALTER TABLE [Rent] ADD CONSTRAINT [PropertyForRent_Rent] 
    FOREIGN KEY ([PropertyID]) REFERENCES [PropertyForRent] ([PropertyID])
GO


ALTER TABLE [Rent] ADD CONSTRAINT [RentalAgreement_Rent] 
    FOREIGN KEY ([RentalAgreementID]) REFERENCES [RentalAgreement] ([RentalAgreementID])
GO


ALTER TABLE [PropertyFeature] ADD CONSTRAINT [Feature_PropertyFeature] 
    FOREIGN KEY ([FeatureCode]) REFERENCES [Feature] ([FeatureCode])
GO


ALTER TABLE [PropertyFeature] ADD CONSTRAINT [Property_PropertyFeature] 
    FOREIGN KEY ([PropertyID]) REFERENCES [Property] ([PropertyID])
GO


ALTER TABLE [ClientWish] ADD CONSTRAINT [Feature_ClientWish] 
    FOREIGN KEY ([FeatureCode]) REFERENCES [Feature] ([FeatureCode])
GO


ALTER TABLE [ClientWish] ADD CONSTRAINT [Client_ClientWish] 
    FOREIGN KEY ([PersonID]) REFERENCES [Client] ([PersonID])
GO

