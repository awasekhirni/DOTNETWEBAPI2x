/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2008                              */
/* Project file:          AdvertisingOnline.dez                           */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2018-02-14 17:15                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [Adverts] DROP CONSTRAINT [AdvertPublisher_Adverts]
GO


ALTER TABLE [Tags_Adverts] DROP CONSTRAINT [Tags_Tags_Adverts]
GO


ALTER TABLE [Tags_Adverts] DROP CONSTRAINT [Adverts_Tags_Adverts]
GO


ALTER TABLE [Tags_Online_Users] DROP CONSTRAINT [Tags_Tags_Online_Users]
GO


ALTER TABLE [Tags_Online_Users] DROP CONSTRAINT [Online_Users_Tags_Online_Users]
GO


ALTER TABLE [Tags_Adverts_Tags_Online_Users] DROP CONSTRAINT [Tags_Adverts_Tags_Adverts_Tags_Online_Users]
GO


ALTER TABLE [Tags_Adverts_Tags_Online_Users] DROP CONSTRAINT [Tags_Online_Users_Tags_Adverts_Tags_Online_Users]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Tags_Adverts_Tags_Online_Users"                            */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Tags_Adverts_Tags_Online_Users] DROP CONSTRAINT [PK_Tags_Adverts_Tags_Online_Users]
GO


DROP TABLE [Tags_Adverts_Tags_Online_Users]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Tags_Online_Users"                                         */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Tags_Online_Users] DROP CONSTRAINT [PK_Tags_Online_Users]
GO


DROP TABLE [Tags_Online_Users]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Online_Users"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Online_Users] DROP CONSTRAINT [PK_Online_Users]
GO


DROP TABLE [Online_Users]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Tags_Adverts"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Tags_Adverts] DROP CONSTRAINT [PK_Tags_Adverts]
GO


DROP TABLE [Tags_Adverts]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Adverts"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Adverts] DROP CONSTRAINT [PK_Adverts]
GO


DROP TABLE [Adverts]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Tags"                                                      */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Tags] DROP CONSTRAINT [PK_Tags]
GO


DROP TABLE [Tags]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "AdvertPublisher"                                           */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [AdvertPublisher] DROP CONSTRAINT [PK_AdvertPublisher]
GO


DROP TABLE [AdvertPublisher]
GO

