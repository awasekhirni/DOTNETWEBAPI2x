/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2005                              */
/* Project file:          orders.dez                                      */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2018-02-14 17:14                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "Product"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Product] (
    [ProductID] INTEGER NOT NULL,
    [ProductName] VARCHAR(80) NOT NULL,
    [ProductNumber] VARCHAR(40) NOT NULL,
    [SizeValue] INTEGER,
    [WeightValue] DECIMAL(10,2),
    [EAN] VARCHAR(80),
    [ProductPrice] MONEY,
    CONSTRAINT [PK_Product_ProductID] PRIMARY KEY CLUSTERED ([ProductID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Party"                                                      */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Party] (
    [PartyID] INTEGER NOT NULL,
    [PartyName] VARCHAR(80),
    [PartyVATNumber] VARCHAR(20),
    CONSTRAINT [PK_Party] PRIMARY KEY ([PartyID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Customer"                                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Customer] (
    [PartyID] INTEGER NOT NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY ([PartyID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Vendor"                                                     */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Vendor] (
    [PartyID] INTEGER NOT NULL,
    CONSTRAINT [PK_Vendor] PRIMARY KEY ([PartyID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Order"                                                      */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Order] (
    [OrderID] INTEGER NOT NULL,
    [OrderDate] DATETIME,
    CONSTRAINT [PK_Order] PRIMARY KEY ([OrderID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "PurchaseOrder"                                              */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [PurchaseOrder] (
    [OrderID] INTEGER NOT NULL,
    [PartyID] INTEGER NOT NULL,
    [PurchaseOrderNumber] VARCHAR(20),
    CONSTRAINT [PK_PurchaseOrder] PRIMARY KEY ([OrderID], [PartyID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "VendorProduct"                                              */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [VendorProduct] (
    [ProductID] INTEGER NOT NULL,
    [PartyID] INTEGER NOT NULL,
    CONSTRAINT [PK_VendorProduct] PRIMARY KEY ([ProductID], [PartyID])
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
/* Add table "ZipCode"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [ZipCode] (
    [ZipCode] VARCHAR(10) NOT NULL,
    [StateOrProvinceID] INTEGER,
    [CountryCode] VARCHAR(2),
    [CityID] INTEGER,
    CONSTRAINT [PK_ZipCode] PRIMARY KEY ([ZipCode])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "PurchaseOrderLine"                                          */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [PurchaseOrderLine] (
    [OrderID] INTEGER NOT NULL,
    [PartyID] INTEGER NOT NULL,
    [ProductID] INTEGER NOT NULL,
    [PurchaseOrderLineQuantity] VARCHAR(40),
    CONSTRAINT [PK_PurchaseOrderLine] PRIMARY KEY ([OrderID], [PartyID], [ProductID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Address"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Address] (
    [AddressID] INTEGER NOT NULL,
    [AddressStreet] VARCHAR(80),
    [ZipCode] VARCHAR(10),
    CONSTRAINT [PK_Address] PRIMARY KEY ([AddressID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "PartyAddress"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [PartyAddress] (
    [PartyID] INTEGER NOT NULL,
    [AddressID] INTEGER NOT NULL,
    [PartyAddressFromDate] DATETIME NOT NULL,
    [PartyAddressToDate] DATETIME,
    CONSTRAINT [PK_PartyAddress] PRIMARY KEY ([PartyID], [AddressID], [PartyAddressFromDate])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "SalesOrder"                                                 */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [SalesOrder] (
    [OrderID] INTEGER NOT NULL,
    [PartyID] INTEGER NOT NULL,
    [SalesOrderNumber] VARCHAR(20),
    [BillingAddressID] INTEGER,
    [DeliveryAddressID] INTEGER,
    [SalesOrderShipDate] DATETIME,
    [SalesOrderDueDate] DATETIME,
    CONSTRAINT [PK_SalesOrder] PRIMARY KEY ([OrderID], [PartyID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "SalesOrderLine"                                             */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [SalesOrderLine] (
    [OrderID] INTEGER NOT NULL,
    [PartyID] INTEGER NOT NULL,
    [ProductID] INTEGER NOT NULL,
    [SalesOrderLineQuantity] INTEGER,
    CONSTRAINT [PK_SalesOrderLine] PRIMARY KEY ([OrderID], [PartyID], [ProductID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [Customer] ADD CONSTRAINT [Party_Customer] 
    FOREIGN KEY ([PartyID]) REFERENCES [Party] ([PartyID])
GO


ALTER TABLE [Vendor] ADD CONSTRAINT [Party_Vendor] 
    FOREIGN KEY ([PartyID]) REFERENCES [Party] ([PartyID])
GO


ALTER TABLE [SalesOrder] ADD CONSTRAINT [Order_SalesOrder] 
    FOREIGN KEY ([OrderID]) REFERENCES [Order] ([OrderID])
GO


ALTER TABLE [SalesOrder] ADD CONSTRAINT [Customer_SalesOrder] 
    FOREIGN KEY ([PartyID]) REFERENCES [Customer] ([PartyID])
GO


ALTER TABLE [SalesOrder] ADD CONSTRAINT [BillingAddress_SalesOrder] 
    FOREIGN KEY ([BillingAddressID]) REFERENCES [Address] ([AddressID])
GO


ALTER TABLE [SalesOrder] ADD CONSTRAINT [DeliveryAddress_SalesOrder] 
    FOREIGN KEY ([DeliveryAddressID]) REFERENCES [Address] ([AddressID])
GO


ALTER TABLE [PurchaseOrder] ADD CONSTRAINT [Order_PurchaseOrder] 
    FOREIGN KEY ([OrderID]) REFERENCES [Order] ([OrderID])
GO


ALTER TABLE [PurchaseOrder] ADD CONSTRAINT [Vendor_PurchaseOrder] 
    FOREIGN KEY ([PartyID]) REFERENCES [Vendor] ([PartyID])
GO


ALTER TABLE [PurchaseOrderLine] ADD CONSTRAINT [PurchaseOrder_PurchaseOrderLine] 
    FOREIGN KEY ([OrderID], [PartyID]) REFERENCES [PurchaseOrder] ([OrderID],[PartyID])
GO


ALTER TABLE [PurchaseOrderLine] ADD CONSTRAINT [VendorProduct_PurchaseOrderLine] 
    FOREIGN KEY ([ProductID], [PartyID]) REFERENCES [VendorProduct] ([ProductID],[PartyID])
GO


ALTER TABLE [SalesOrderLine] ADD CONSTRAINT [SalesOrder_SalesOrderLine] 
    FOREIGN KEY ([OrderID], [PartyID]) REFERENCES [SalesOrder] ([OrderID],[PartyID])
GO


ALTER TABLE [SalesOrderLine] ADD CONSTRAINT [Product_SalesOrderLine] 
    FOREIGN KEY ([ProductID]) REFERENCES [Product] ([ProductID])
GO


ALTER TABLE [Address] ADD CONSTRAINT [ZipCode_Address] 
    FOREIGN KEY ([ZipCode]) REFERENCES [ZipCode] ([ZipCode])
GO


ALTER TABLE [VendorProduct] ADD CONSTRAINT [Product_VendorProduct] 
    FOREIGN KEY ([ProductID]) REFERENCES [Product] ([ProductID])
GO


ALTER TABLE [VendorProduct] ADD CONSTRAINT [Vendor_VendorProduct] 
    FOREIGN KEY ([PartyID]) REFERENCES [Vendor] ([PartyID])
GO


ALTER TABLE [PartyAddress] ADD CONSTRAINT [Party_PartyAddress] 
    FOREIGN KEY ([PartyID]) REFERENCES [Party] ([PartyID])
GO


ALTER TABLE [PartyAddress] ADD CONSTRAINT [Address_PartyAddress] 
    FOREIGN KEY ([AddressID]) REFERENCES [Address] ([AddressID])
GO


ALTER TABLE [ZipCode] ADD CONSTRAINT [StateOrProvince_ZipCode] 
    FOREIGN KEY ([StateOrProvinceID]) REFERENCES [StateOrProvince] ([StateOrProvinceID])
GO


ALTER TABLE [ZipCode] ADD CONSTRAINT [Country_ZipCode] 
    FOREIGN KEY ([CountryCode]) REFERENCES [Country] ([CountryCode])
GO


ALTER TABLE [ZipCode] ADD CONSTRAINT [City_ZipCode] 
    FOREIGN KEY ([CityID]) REFERENCES [City] ([CityID])
GO

