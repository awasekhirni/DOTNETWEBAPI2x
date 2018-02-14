/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2005                              */
/* Project file:          orders.dez                                      */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2018-02-14 17:14                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [Customer] DROP CONSTRAINT [Party_Customer]
GO


ALTER TABLE [Vendor] DROP CONSTRAINT [Party_Vendor]
GO


ALTER TABLE [SalesOrder] DROP CONSTRAINT [Order_SalesOrder]
GO


ALTER TABLE [SalesOrder] DROP CONSTRAINT [Customer_SalesOrder]
GO


ALTER TABLE [SalesOrder] DROP CONSTRAINT [BillingAddress_SalesOrder]
GO


ALTER TABLE [SalesOrder] DROP CONSTRAINT [DeliveryAddress_SalesOrder]
GO


ALTER TABLE [PurchaseOrder] DROP CONSTRAINT [Order_PurchaseOrder]
GO


ALTER TABLE [PurchaseOrder] DROP CONSTRAINT [Vendor_PurchaseOrder]
GO


ALTER TABLE [PurchaseOrderLine] DROP CONSTRAINT [PurchaseOrder_PurchaseOrderLine]
GO


ALTER TABLE [PurchaseOrderLine] DROP CONSTRAINT [VendorProduct_PurchaseOrderLine]
GO


ALTER TABLE [SalesOrderLine] DROP CONSTRAINT [SalesOrder_SalesOrderLine]
GO


ALTER TABLE [SalesOrderLine] DROP CONSTRAINT [Product_SalesOrderLine]
GO


ALTER TABLE [Address] DROP CONSTRAINT [ZipCode_Address]
GO


ALTER TABLE [VendorProduct] DROP CONSTRAINT [Product_VendorProduct]
GO


ALTER TABLE [VendorProduct] DROP CONSTRAINT [Vendor_VendorProduct]
GO


ALTER TABLE [PartyAddress] DROP CONSTRAINT [Party_PartyAddress]
GO


ALTER TABLE [PartyAddress] DROP CONSTRAINT [Address_PartyAddress]
GO


ALTER TABLE [ZipCode] DROP CONSTRAINT [StateOrProvince_ZipCode]
GO


ALTER TABLE [ZipCode] DROP CONSTRAINT [Country_ZipCode]
GO


ALTER TABLE [ZipCode] DROP CONSTRAINT [City_ZipCode]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "SalesOrderLine"                                            */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [SalesOrderLine] DROP CONSTRAINT [PK_SalesOrderLine]
GO


DROP TABLE [SalesOrderLine]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "SalesOrder"                                                */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [SalesOrder] DROP CONSTRAINT [PK_SalesOrder]
GO


DROP TABLE [SalesOrder]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "PartyAddress"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [PartyAddress] DROP CONSTRAINT [PK_PartyAddress]
GO


DROP TABLE [PartyAddress]
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
/* Drop table "PurchaseOrderLine"                                         */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [PurchaseOrderLine] DROP CONSTRAINT [PK_PurchaseOrderLine]
GO


DROP TABLE [PurchaseOrderLine]
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
/* Drop table "City"                                                      */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [City] DROP CONSTRAINT [PK_City]
GO


DROP TABLE [City]
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
/* Drop table "Country"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Country] DROP CONSTRAINT [PK_Country]
GO


DROP TABLE [Country]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "VendorProduct"                                             */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [VendorProduct] DROP CONSTRAINT [PK_VendorProduct]
GO


DROP TABLE [VendorProduct]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "PurchaseOrder"                                             */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [PurchaseOrder] DROP CONSTRAINT [PK_PurchaseOrder]
GO


DROP TABLE [PurchaseOrder]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Order"                                                     */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Order] DROP CONSTRAINT [PK_Order]
GO


DROP TABLE [Order]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Vendor"                                                    */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Vendor] DROP CONSTRAINT [PK_Vendor]
GO


DROP TABLE [Vendor]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Customer"                                                  */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Customer] DROP CONSTRAINT [PK_Customer]
GO


DROP TABLE [Customer]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Party"                                                     */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Party] DROP CONSTRAINT [PK_Party]
GO


DROP TABLE [Party]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Product"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Product] DROP CONSTRAINT [PK_Product_ProductID]
GO


DROP TABLE [Product]
GO

