/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2008                              */
/* Project file:          DigitalMediaStore.dez                           */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2018-02-14 17:30                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "Artist"                                                     */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Artist] (
    [ArtistId] VARCHAR(40) NOT NULL,
    [ArtistName] VARCHAR(200),
    CONSTRAINT [PK_Artist] PRIMARY KEY ([ArtistId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Album"                                                      */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Album] (
    [AlbumId] VARCHAR(40) NOT NULL,
    [AlbumTitle] VARCHAR(300),
    [ArtistId] VARCHAR(40),
    CONSTRAINT [PK_Album] PRIMARY KEY ([AlbumId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "MediaType"                                                  */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [MediaType] (
    [MediaTypeId] VARCHAR(40) NOT NULL,
    [MediaTypeName] VARCHAR(200),
    [MediaTypeDesc] VARCHAR(300),
    [MediaTypeIsActive] BINARY(0),
    CONSTRAINT [PK_MediaType] PRIMARY KEY ([MediaTypeId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Genre"                                                      */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Genre] (
    [GenreId] VARCHAR(40) NOT NULL,
    [GenreName] VARCHAR(500),
    CONSTRAINT [PK_Genre] PRIMARY KEY ([GenreId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Employee"                                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Employee] (
    [EmployeeId] VARCHAR(40) NOT NULL,
    [LastName] VARCHAR(250),
    [FirstName] VARCHAR(250),
    [Title] VARCHAR(100),
    [ReportsTo] VARCHAR(200),
    [DateofBirth] DATETIME,
    [HireDate] DATETIME,
    [Address] VARCHAR(500),
    [City] VARCHAR(200),
    [State] VARCHAR(250),
    [Country] VARCHAR(250),
    [ZipCode] VARCHAR(40),
    [Phone] VARCHAR(25),
    [Fax] VARCHAR(100),
    [Email] VARCHAR(500),
    [Remarks] VARCHAR(500),
    CONSTRAINT [PK_Employee] PRIMARY KEY ([EmployeeId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Customer"                                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Customer] (
    [CustomerId] VARCHAR(40) NOT NULL,
    [CustomerFName] VARCHAR(200),
    [CustomerLName] VARCHAR(200),
    [CustomerCompany] VARCHAR(500),
    [CustomerAddress] VARCHAR(500),
    [CustomerCity] VARCHAR(200),
    [CustomerState] VARCHAR(200),
    [CustomerCountry] VARCHAR(200),
    [CustomerZip] VARCHAR(40),
    [CustomerPhone] VARCHAR(40),
    [CustomerFax] VARCHAR(40),
    [CustomerEmail] VARCHAR(500),
    [Remarks] VARCHAR(500),
    [EmployeeId] VARCHAR(40),
    CONSTRAINT [PK_Customer] PRIMARY KEY ([CustomerId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Track"                                                      */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Track] (
    [TrackId] VARCHAR(40) NOT NULL,
    [TrackName] VARCHAR(200),
    [Composer] VARCHAR(200),
    [Milliseconds] DOUBLE PRECISION,
    [UnitPrice] DOUBLE PRECISION,
    [AlbumId] VARCHAR(40),
    [MediaTypeId] VARCHAR(40),
    [Bytes] VARCHAR(40),
    [GenreId] VARCHAR(40),
    CONSTRAINT [PK_Track] PRIMARY KEY ([TrackId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Invoice"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Invoice] (
    [InvoiceId] VARCHAR(40) NOT NULL,
    [InvoiceDate] DATETIME,
    [BillingAddress] VARCHAR(500),
    [BillingCity] VARCHAR(100),
    [BillingState] VARCHAR(200),
    [BillingCountry] VARCHAR(200),
    [BillingZipCode] VARCHAR(40),
    [Total] DOUBLE PRECISION,
    [PaymentMode] VARCHAR(100),
    [Remarks] VARCHAR(500),
    [CustomerId] VARCHAR(40),
    CONSTRAINT [PK_Invoice] PRIMARY KEY ([InvoiceId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "InvoiceLine"                                                */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [InvoiceLine] (
    [InvoiceLineId] VARCHAR(40) NOT NULL,
    [UnitPrice] DOUBLE PRECISION,
    [Quantity] VARCHAR(40),
    [TrackId] VARCHAR(40),
    [InvoiceId] VARCHAR(40),
    CONSTRAINT [PK_InvoiceLine] PRIMARY KEY ([InvoiceLineId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [Album] ADD CONSTRAINT [Artist_Album] 
    FOREIGN KEY ([ArtistId]) REFERENCES [Artist] ([ArtistId])
GO


ALTER TABLE [Track] ADD CONSTRAINT [Album_Track] 
    FOREIGN KEY ([AlbumId]) REFERENCES [Album] ([AlbumId])
GO


ALTER TABLE [Track] ADD CONSTRAINT [MediaType_Track] 
    FOREIGN KEY ([MediaTypeId]) REFERENCES [MediaType] ([MediaTypeId])
GO


ALTER TABLE [Track] ADD CONSTRAINT [Genre_Track] 
    FOREIGN KEY ([GenreId]) REFERENCES [Genre] ([GenreId])
GO


ALTER TABLE [Invoice] ADD CONSTRAINT [Customer_Invoice] 
    FOREIGN KEY ([CustomerId]) REFERENCES [Customer] ([CustomerId])
GO


ALTER TABLE [Customer] ADD CONSTRAINT [Employee_Customer] 
    FOREIGN KEY ([EmployeeId]) REFERENCES [Employee] ([EmployeeId])
GO


ALTER TABLE [InvoiceLine] ADD CONSTRAINT [Track_InvoiceLine] 
    FOREIGN KEY ([TrackId]) REFERENCES [Track] ([TrackId])
GO


ALTER TABLE [InvoiceLine] ADD CONSTRAINT [Invoice_InvoiceLine] 
    FOREIGN KEY ([InvoiceId]) REFERENCES [Invoice] ([InvoiceId])
GO

