/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2005                              */
/* Project file:          online-shop.dez                                 */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2018-02-14 17:06                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [Category] DROP CONSTRAINT [Category_Category]
GO


ALTER TABLE [Basket] DROP CONSTRAINT [Customer_Basket]
GO


ALTER TABLE [Basket] DROP CONSTRAINT [BasketStatus_Basket]
GO


ALTER TABLE [Order] DROP CONSTRAINT [Customer_Order]
GO


ALTER TABLE [Order] DROP CONSTRAINT [OrderStatus_Order]
GO


ALTER TABLE [Order] DROP CONSTRAINT [Address_Order_Billing]
GO


ALTER TABLE [Order] DROP CONSTRAINT [Address_Order_Delivery]
GO


ALTER TABLE [OrderedProduct] DROP CONSTRAINT [Product_OrderedProduct]
GO


ALTER TABLE [OrderedProduct] DROP CONSTRAINT [Order_OrderedProduct]
GO


ALTER TABLE [Product] DROP CONSTRAINT [Manufacturer_Product]
GO


ALTER TABLE [Product] DROP CONSTRAINT [TaxClass_Product]
GO


ALTER TABLE [ProductImage] DROP CONSTRAINT [Product_ProductImage]
GO


ALTER TABLE [CategoryProduct] DROP CONSTRAINT [Category_CategoryProduct]
GO


ALTER TABLE [CategoryProduct] DROP CONSTRAINT [Product_CategoryProduct]
GO


ALTER TABLE [Review] DROP CONSTRAINT [Customer_Review]
GO


ALTER TABLE [Review] DROP CONSTRAINT [Product_Review]
GO


ALTER TABLE [ProductSpecial] DROP CONSTRAINT [Product_ProductSpecial]
GO


ALTER TABLE [TaxRate] DROP CONSTRAINT [TaxClass_TaxRate]
GO


ALTER TABLE [BasketProducts] DROP CONSTRAINT [Basket_BasketProducts]
GO


ALTER TABLE [BasketProducts] DROP CONSTRAINT [Product_BasketProducts]
GO


ALTER TABLE [ZipCode] DROP CONSTRAINT [City_ZipCode]
GO


ALTER TABLE [ZipCode] DROP CONSTRAINT [Country_ZipCode]
GO


ALTER TABLE [ZipCode] DROP CONSTRAINT [StateOrProvince_ZipCode]
GO


ALTER TABLE [Address] DROP CONSTRAINT [ZipCode_Address]
GO


ALTER TABLE [Address] DROP CONSTRAINT [Customer_Address]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "OrderedProduct"                                            */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [OrderedProduct] DROP CONSTRAINT 
GO


DROP TABLE [OrderedProduct]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Order"                                                     */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Order] DROP CONSTRAINT 
GO


DROP TABLE [Order]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Address"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Address] DROP CONSTRAINT [PK_Address]
GO


DROP TABLE [Address]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "ZipCode"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [ZipCode] DROP CONSTRAINT [PK_ZipCode]
GO


DROP TABLE [ZipCode]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "BasketProducts"                                            */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [BasketProducts] DROP CONSTRAINT [PK_BasketProducts]
GO


DROP TABLE [BasketProducts]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "ProductSpecial"                                            */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [ProductSpecial] DROP CONSTRAINT 
GO


DROP TABLE [ProductSpecial]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Review"                                                    */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Review] DROP CONSTRAINT 
GO


DROP TABLE [Review]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "CategoryProduct"                                           */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [CategoryProduct] DROP CONSTRAINT 
GO


DROP TABLE [CategoryProduct]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "ProductImage"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [ProductImage] DROP CONSTRAINT 
GO


DROP TABLE [ProductImage]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Product"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Product] DROP CONSTRAINT 
GO


DROP TABLE [Product]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Basket"                                                    */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Basket] DROP CONSTRAINT 
GO


DROP TABLE [Basket]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "StateOrProvince"                                           */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [StateOrProvince] DROP CONSTRAINT [PK_StateOrProvince]
GO


DROP TABLE [StateOrProvince]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "City"                                                      */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [City] DROP CONSTRAINT [PK_City]
GO


DROP TABLE [City]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Country"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Country] DROP CONSTRAINT [PK_Country]
GO


DROP TABLE [Country]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "OrderStatus"                                               */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [OrderStatus] DROP CONSTRAINT 
GO


ALTER TABLE [OrderStatus] DROP CONSTRAINT 
GO


DROP TABLE [OrderStatus]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "BasketStatus"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [BasketStatus] DROP CONSTRAINT [PK_BasketStatus]
GO


DROP TABLE [BasketStatus]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "TaxRate"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [TaxRate] DROP CONSTRAINT 
GO


DROP TABLE [TaxRate]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "TaxClass"                                                  */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [TaxClass] DROP CONSTRAINT 
GO


DROP TABLE [TaxClass]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Manufacturer"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Manufacturer] DROP CONSTRAINT 
GO


DROP TABLE [Manufacturer]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Customer"                                                  */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Customer] DROP CONSTRAINT 
GO


DROP TABLE [Customer]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Category"                                                  */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Category] DROP CONSTRAINT 
GO


DROP TABLE [Category]
GO

