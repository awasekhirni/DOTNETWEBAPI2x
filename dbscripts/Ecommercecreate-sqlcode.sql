/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2005                              */
/* Project file:          online-shop.dez                                 */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2018-02-14 17:06                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "Category"                                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Category] (
    [CategoryID] INTEGER IDENTITY(0,1) NOT NULL,
    [CategoryName] VARCHAR(40),
    [CategoryImage] VARCHAR(64),
    [CategorySortOrder] INTEGER,
    [ParentCategoryID] INTEGER,
    PRIMARY KEY ([CategoryID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Customer"                                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Customer] (
    [CustomerID] INTEGER IDENTITY(0,1) NOT NULL,
    [Gender] CHAR(1),
    [FirstName] VARCHAR(255) NOT NULL,
    [MiddleName] VARCHAR(255) NOT NULL,
    [LastName] VARCHAR(255) NOT NULL,
    [BirthDate] DATETIME NOT NULL,
    [EmailAddress] VARCHAR(255) NOT NULL,
    [PhoneNumber] VARCHAR(255) NOT NULL,
    [FaxNumber] VARCHAR(255),
    [PassWord] VARCHAR(60) NOT NULL,
    PRIMARY KEY ([CustomerID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Manufacturer"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Manufacturer] (
    [ManufacturerID] INTEGER IDENTITY(0,1) NOT NULL,
    [ManufacturerName] VARCHAR(32) NOT NULL,
    [ManufacturerLogo] VARCHAR(64),
    PRIMARY KEY ([ManufacturerID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "TaxClass"                                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [TaxClass] (
    [TaxClassId] INTEGER IDENTITY(0,1) NOT NULL,
    [TaxClassTitle] VARCHAR(32) NOT NULL,
    [TaxClassDescription] VARCHAR(255) NOT NULL,
    PRIMARY KEY ([TaxClassId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "TaxRate"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [TaxRate] (
    [TaxRateCode] VARCHAR(5) NOT NULL,
    [TaxClassId] INTEGER NOT NULL,
    [TaxPriority] INTEGER,
    [TaxRate] DECIMAL(7,4) NOT NULL,
    PRIMARY KEY ([TaxRateCode])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "BasketStatus"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [BasketStatus] (
    [BasketStatusCode] VARCHAR(10) NOT NULL,
    [BasketStatusDescription] VARCHAR(40),
    CONSTRAINT [PK_BasketStatus] PRIMARY KEY ([BasketStatusCode])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "OrderStatus"                                                */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [OrderStatus] (
    [OrderStatusCode] VARCHAR(5) DEFAULT '0' NOT NULL,
    [OrderStatusDescription] VARCHAR(40) NOT NULL,
    PRIMARY KEY ([OrderStatusCode])
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
/* Add table "Basket"                                                     */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Basket] (
    [BasketID] INTEGER IDENTITY(0,1) NOT NULL,
    [CustomerID] INTEGER NOT NULL,
    [BasketDateAdded] DATETIME,
    [BasketStatusCode] VARCHAR(10),
    PRIMARY KEY ([BasketID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Product"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Product] (
    [ProductID] INTEGER IDENTITY(0,1) NOT NULL,
    [ProductName] VARCHAR(64) NOT NULL,
    [ProductyDescription] TEXT,
    [ProductPrice] MONEY NOT NULL,
    [ProductURL] VARCHAR(255),
    [ProductDateAvailable] DATETIME,
    [ProductChangeDate] DATETIME,
    [TaxClassID] INTEGER NOT NULL,
    [ManufacturerID] INTEGER,
    PRIMARY KEY ([ProductID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "ProductImage"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [ProductImage] (
    [ProductImageID] INTEGER IDENTITY(0,1) NOT NULL,
    [ProductID] INTEGER NOT NULL,
    [Image] VARCHAR(64),
    [HTMLContent] TEXT,
    [ImageSortOrder] INTEGER NOT NULL,
    PRIMARY KEY ([ProductImageID])
)
GO


CREATE  INDEX [products_images_prodid] ON [ProductImage] ([ProductID])
GO


/* ---------------------------------------------------------------------- */
/* Add table "CategoryProduct"                                            */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [CategoryProduct] (
    [ProductID] INTEGER NOT NULL,
    [CategoryID] INTEGER NOT NULL,
    PRIMARY KEY ([ProductID], [CategoryID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Review"                                                     */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Review] (
    [ReviewID] INTEGER IDENTITY(0,1) NOT NULL,
    [ReviewRating] INTEGER NOT NULL,
    [ReviewReads] INTEGER NOT NULL,
    [ReviewText] TEXT,
    [Reviewer] INTEGER,
    [ProductID] INTEGER,
    PRIMARY KEY ([ReviewID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "ProductSpecial"                                             */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [ProductSpecial] (
    [PromotionCode] VARCHAR(10) NOT NULL,
    [ProductID] INTEGER NOT NULL,
    [NewProductPrice] MONEY NOT NULL,
    [StartDate] DATETIME,
    [ExpiryDate] DATETIME,
    PRIMARY KEY ([PromotionCode])
)
GO


CREATE  INDEX [idx_specials_products_id] ON [ProductSpecial] ([ProductID])
GO


/* ---------------------------------------------------------------------- */
/* Add table "BasketProducts"                                             */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [BasketProducts] (
    [BasketID] INTEGER NOT NULL,
    [ProductID] INTEGER NOT NULL,
    [Quantity] MONEY,
    CONSTRAINT [PK_BasketProducts] PRIMARY KEY ([BasketID], [ProductID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "ZipCode"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [ZipCode] (
    [ZipCode] VARCHAR(10) NOT NULL,
    [CityID] INTEGER,
    [CountryCode] VARCHAR(2),
    [StateOrProvinceID] INTEGER,
    CONSTRAINT [PK_ZipCode] PRIMARY KEY ([ZipCode])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Address"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Address] (
    [AddressID] INTEGER NOT NULL,
    [AddressFromDate] DATETIME,
    [AddressToDate] DATETIME,
    [AddressStreet] VARCHAR(80),
    [ZipCode] VARCHAR(10),
    [CustomerID] INTEGER,
    [AddressType] VARCHAR(40),
    CONSTRAINT [PK_Address] PRIMARY KEY ([AddressID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Order"                                                      */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Order] (
    [OrderID] INTEGER IDENTITY(0,1) NOT NULL,
    [CustomerID] INTEGER NOT NULL,
    [Reference] VARCHAR(255) NOT NULL,
    [BillingName] VARCHAR(255) NOT NULL,
    [DeliveryName] VARCHAR(255) NOT NULL,
    [EmailAddress] VARCHAR(255) NOT NULL,
    [PurchaseDate] DATETIME,
    [OrderStatusCode] VARCHAR(5),
    [BillingAddressID] INTEGER,
    [DeliveryAddressID] INTEGER,
    PRIMARY KEY ([OrderID])
)
GO


CREATE  INDEX [idx_orders_customers_id] ON [Order] ([CustomerID])
GO


/* ---------------------------------------------------------------------- */
/* Add table "OrderedProduct"                                             */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [OrderedProduct] (
    [OrderedProductID] INTEGER IDENTITY(0,1) NOT NULL,
    [ProductID] INTEGER NOT NULL,
    [ProductName] VARCHAR(12),
    [ProductDescription] VARCHAR(64) NOT NULL,
    [ProductPrice] MONEY NOT NULL,
    [ProductTax] MONEY NOT NULL,
    [Quantity] INTEGER NOT NULL,
    [OrderID] INTEGER NOT NULL,
    PRIMARY KEY ([OrderedProductID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [Category] ADD CONSTRAINT [Category_Category] 
    FOREIGN KEY ([ParentCategoryID]) REFERENCES [Category] ([CategoryID])
GO


ALTER TABLE [Basket] ADD CONSTRAINT [Customer_Basket] 
    FOREIGN KEY ([CustomerID]) REFERENCES [Customer] ([CustomerID])
GO


ALTER TABLE [Basket] ADD CONSTRAINT [BasketStatus_Basket] 
    FOREIGN KEY ([BasketStatusCode]) REFERENCES [BasketStatus] ([BasketStatusCode])
GO


ALTER TABLE [Order] ADD CONSTRAINT [Customer_Order] 
    FOREIGN KEY ([CustomerID]) REFERENCES [Customer] ([CustomerID])
GO


ALTER TABLE [Order] ADD CONSTRAINT [OrderStatus_Order] 
    FOREIGN KEY ([OrderStatusCode]) REFERENCES [OrderStatus] ([OrderStatusCode])
GO


ALTER TABLE [Order] ADD CONSTRAINT [Address_Order_Billing] 
    FOREIGN KEY ([BillingAddressID]) REFERENCES [Address] ([AddressID])
GO


ALTER TABLE [Order] ADD CONSTRAINT [Address_Order_Delivery] 
    FOREIGN KEY ([DeliveryAddressID]) REFERENCES [Address] ([AddressID])
GO


ALTER TABLE [OrderedProduct] ADD CONSTRAINT [Product_OrderedProduct] 
    FOREIGN KEY ([ProductID]) REFERENCES [Product] ([ProductID])
GO


ALTER TABLE [OrderedProduct] ADD CONSTRAINT [Order_OrderedProduct] 
    FOREIGN KEY ([OrderID]) REFERENCES [Order] ([OrderID])
GO


ALTER TABLE [Product] ADD CONSTRAINT [Manufacturer_Product] 
    FOREIGN KEY ([ManufacturerID]) REFERENCES [Manufacturer] ([ManufacturerID])
GO


ALTER TABLE [Product] ADD CONSTRAINT [TaxClass_Product] 
    FOREIGN KEY ([TaxClassID]) REFERENCES [TaxClass] ([TaxClassId])
GO


ALTER TABLE [ProductImage] ADD CONSTRAINT [Product_ProductImage] 
    FOREIGN KEY ([ProductID]) REFERENCES [Product] ([ProductID])
GO


ALTER TABLE [CategoryProduct] ADD CONSTRAINT [Category_CategoryProduct] 
    FOREIGN KEY ([CategoryID]) REFERENCES [Category] ([CategoryID])
GO


ALTER TABLE [CategoryProduct] ADD CONSTRAINT [Product_CategoryProduct] 
    FOREIGN KEY ([ProductID]) REFERENCES [Product] ([ProductID])
GO


ALTER TABLE [Review] ADD CONSTRAINT [Customer_Review] 
    FOREIGN KEY ([Reviewer]) REFERENCES [Customer] ([CustomerID])
GO


ALTER TABLE [Review] ADD CONSTRAINT [Product_Review] 
    FOREIGN KEY ([ProductID]) REFERENCES [Product] ([ProductID])
GO


ALTER TABLE [ProductSpecial] ADD CONSTRAINT [Product_ProductSpecial] 
    FOREIGN KEY ([ProductID]) REFERENCES [Product] ([ProductID])
GO


ALTER TABLE [TaxRate] ADD CONSTRAINT [TaxClass_TaxRate] 
    FOREIGN KEY ([TaxClassId]) REFERENCES [TaxClass] ([TaxClassId])
GO


ALTER TABLE [BasketProducts] ADD CONSTRAINT [Basket_BasketProducts] 
    FOREIGN KEY ([BasketID]) REFERENCES [Basket] ([BasketID])
GO


ALTER TABLE [BasketProducts] ADD CONSTRAINT [Product_BasketProducts] 
    FOREIGN KEY ([ProductID]) REFERENCES [Product] ([ProductID])
GO


ALTER TABLE [ZipCode] ADD CONSTRAINT [City_ZipCode] 
    FOREIGN KEY ([CityID]) REFERENCES [City] ([CityID])
GO


ALTER TABLE [ZipCode] ADD CONSTRAINT [Country_ZipCode] 
    FOREIGN KEY ([CountryCode]) REFERENCES [Country] ([CountryCode])
GO


ALTER TABLE [ZipCode] ADD CONSTRAINT [StateOrProvince_ZipCode] 
    FOREIGN KEY ([StateOrProvinceID]) REFERENCES [StateOrProvince] ([StateOrProvinceID])
GO


ALTER TABLE [Address] ADD CONSTRAINT [ZipCode_Address] 
    FOREIGN KEY ([ZipCode]) REFERENCES [ZipCode] ([ZipCode])
GO


ALTER TABLE [Address] ADD CONSTRAINT [Customer_Address] 
    FOREIGN KEY ([CustomerID]) REFERENCES [Customer] ([CustomerID])
GO

