/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2008                              */
/* Project file:          AdvertisingOnline.dez                           */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2018-02-14 17:15                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "AdvertPublisher"                                            */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [AdvertPublisher] (
    [PublisherId] VARCHAR(40) NOT NULL,
    [PublisherName] VARCHAR(200),
    [PublisherAddress] VARCHAR(500),
    [PublisherEmail] VARCHAR(500),
    [PublisherPhone] VARCHAR(40),
    [PublisherState] VARCHAR(200),
    [PublisherCountry] VARCHAR(200),
    [PublisherZip] VARCHAR(40),
    CONSTRAINT [PK_AdvertPublisher] PRIMARY KEY ([PublisherId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Tags"                                                       */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Tags] (
    [Tag_word] VARCHAR(100) NOT NULL,
    [Tag_desc] VARCHAR(250),
    CONSTRAINT [PK_Tags] PRIMARY KEY ([Tag_word])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Adverts"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Adverts] (
    [AdvertId] VARCHAR(40) NOT NULL,
    [MediaType] VARCHAR(100),
    [PublicationDetails] VARCHAR(500),
    [PublisherId] VARCHAR(40),
    CONSTRAINT [PK_Adverts] PRIMARY KEY ([AdvertId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Tags_Adverts"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Tags_Adverts] (
    [Tag_word] VARCHAR(100) NOT NULL,
    [AdvertId] VARCHAR(40) NOT NULL,
    CONSTRAINT [PK_Tags_Adverts] PRIMARY KEY ([Tag_word], [AdvertId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Online_Users"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Online_Users] (
    [UserId] VARCHAR(100) NOT NULL,
    [UserIP] VARCHAR(100),
    [UserOS] VARCHAR(200),
    [UserCountry] VARCHAR(250),
    [UserState] VARCHAR(200),
    [UserCity] VARCHAR(200),
    [UserZip] VARCHAR(40),
    [UserOtherDetails] VARCHAR(500),
    [UserReqTime] TIMESTAMP,
    [UserSessionEndTime] TIMESTAMP,
    CONSTRAINT [PK_Online_Users] PRIMARY KEY ([UserId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Tags_Online_Users"                                          */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Tags_Online_Users] (
    [Tag_word] VARCHAR(100) NOT NULL,
    [UserId] VARCHAR(100) NOT NULL,
    CONSTRAINT [PK_Tags_Online_Users] PRIMARY KEY ([Tag_word], [UserId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Tags_Adverts_Tags_Online_Users"                             */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Tags_Adverts_Tags_Online_Users] (
    [Tag_word] VARCHAR(100) NOT NULL,
    [AdvertId] VARCHAR(40) NOT NULL,
    [Tag_word1] VARCHAR(100) NOT NULL,
    [UserId] VARCHAR(100) NOT NULL,
    [ReqDateandTime] DATETIME,
    [otherDetails] VARCHAR(500),
    CONSTRAINT [PK_Tags_Adverts_Tags_Online_Users] PRIMARY KEY ([Tag_word], [AdvertId], [Tag_word1], [UserId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [Adverts] ADD CONSTRAINT [AdvertPublisher_Adverts] 
    FOREIGN KEY ([PublisherId]) REFERENCES [AdvertPublisher] ([PublisherId])
GO


ALTER TABLE [Tags_Adverts] ADD CONSTRAINT [Tags_Tags_Adverts] 
    FOREIGN KEY ([Tag_word]) REFERENCES [Tags] ([Tag_word])
GO


ALTER TABLE [Tags_Adverts] ADD CONSTRAINT [Adverts_Tags_Adverts] 
    FOREIGN KEY ([AdvertId]) REFERENCES [Adverts] ([AdvertId])
GO


ALTER TABLE [Tags_Online_Users] ADD CONSTRAINT [Tags_Tags_Online_Users] 
    FOREIGN KEY ([Tag_word]) REFERENCES [Tags] ([Tag_word])
GO


ALTER TABLE [Tags_Online_Users] ADD CONSTRAINT [Online_Users_Tags_Online_Users] 
    FOREIGN KEY ([UserId]) REFERENCES [Online_Users] ([UserId])
GO


ALTER TABLE [Tags_Adverts_Tags_Online_Users] ADD CONSTRAINT [Tags_Adverts_Tags_Adverts_Tags_Online_Users] 
    FOREIGN KEY ([Tag_word], [AdvertId]) REFERENCES [Tags_Adverts] ([Tag_word],[AdvertId])
GO


ALTER TABLE [Tags_Adverts_Tags_Online_Users] ADD CONSTRAINT [Tags_Online_Users_Tags_Adverts_Tags_Online_Users] 
    FOREIGN KEY ([Tag_word1], [UserId]) REFERENCES [Tags_Online_Users] ([Tag_word],[UserId])
GO

