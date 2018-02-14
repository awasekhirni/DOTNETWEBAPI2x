/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2008                              */
/* Project file:          DigitalMediaStore.dez                           */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2018-02-14 17:30                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [Album] DROP CONSTRAINT [Artist_Album]
GO


ALTER TABLE [Track] DROP CONSTRAINT [Album_Track]
GO


ALTER TABLE [Track] DROP CONSTRAINT [MediaType_Track]
GO


ALTER TABLE [Track] DROP CONSTRAINT [Genre_Track]
GO


ALTER TABLE [Invoice] DROP CONSTRAINT [Customer_Invoice]
GO


ALTER TABLE [Customer] DROP CONSTRAINT [Employee_Customer]
GO


ALTER TABLE [InvoiceLine] DROP CONSTRAINT [Track_InvoiceLine]
GO


ALTER TABLE [InvoiceLine] DROP CONSTRAINT [Invoice_InvoiceLine]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "InvoiceLine"                                               */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [InvoiceLine] DROP CONSTRAINT [PK_InvoiceLine]
GO


DROP TABLE [InvoiceLine]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Invoice"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Invoice] DROP CONSTRAINT [PK_Invoice]
GO


DROP TABLE [Invoice]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Track"                                                     */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Track] DROP CONSTRAINT [PK_Track]
GO


DROP TABLE [Track]
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
/* Drop table "Employee"                                                  */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Employee] DROP CONSTRAINT [PK_Employee]
GO


DROP TABLE [Employee]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Genre"                                                     */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Genre] DROP CONSTRAINT [PK_Genre]
GO


DROP TABLE [Genre]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "MediaType"                                                 */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [MediaType] DROP CONSTRAINT [PK_MediaType]
GO


DROP TABLE [MediaType]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Album"                                                     */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Album] DROP CONSTRAINT [PK_Album]
GO


DROP TABLE [Album]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Artist"                                                    */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Artist] DROP CONSTRAINT [PK_Artist]
GO


DROP TABLE [Artist]
GO

