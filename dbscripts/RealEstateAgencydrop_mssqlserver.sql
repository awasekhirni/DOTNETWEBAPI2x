/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2005                              */
/* Project file:          real-estate-agency.dez                          */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2018-02-14 17:10                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [Property] DROP CONSTRAINT [Property_PNo_fk]
GO


ALTER TABLE [Property] DROP CONSTRAINT [Address_Property]
GO


ALTER TABLE [Owner] DROP CONSTRAINT [Person_Owner]
GO


ALTER TABLE [Client] DROP CONSTRAINT [Person_Client]
GO


ALTER TABLE [Agent] DROP CONSTRAINT [Person_Agent]
GO


ALTER TABLE [PropertyForSale] DROP CONSTRAINT [Property_PropertyForSale]
GO


ALTER TABLE [PropertyForRent] DROP CONSTRAINT [Property_PropertyForRent]
GO


ALTER TABLE [ZipCode] DROP CONSTRAINT [Country_ZipCode]
GO


ALTER TABLE [ZipCode] DROP CONSTRAINT [StateOrProvince_ZipCode]
GO


ALTER TABLE [ZipCode] DROP CONSTRAINT [City_ZipCode]
GO


ALTER TABLE [Address] DROP CONSTRAINT [ZipCode_Address]
GO


ALTER TABLE [Visit] DROP CONSTRAINT [Client_Visit]
GO


ALTER TABLE [Visit] DROP CONSTRAINT [Agent_Visit]
GO


ALTER TABLE [Visit] DROP CONSTRAINT [Property_Visit]
GO


ALTER TABLE [Sale] DROP CONSTRAINT [Agent_Sale]
GO


ALTER TABLE [Sale] DROP CONSTRAINT [Client_Sale]
GO


ALTER TABLE [Sale] DROP CONSTRAINT [PropertyForSale_Sale]
GO


ALTER TABLE [Rent] DROP CONSTRAINT [Agent_Rent]
GO


ALTER TABLE [Rent] DROP CONSTRAINT [Client_Rent]
GO


ALTER TABLE [Rent] DROP CONSTRAINT [PropertyForRent_Rent]
GO


ALTER TABLE [Rent] DROP CONSTRAINT [RentalAgreement_Rent]
GO


ALTER TABLE [PropertyFeature] DROP CONSTRAINT [Feature_PropertyFeature]
GO


ALTER TABLE [PropertyFeature] DROP CONSTRAINT [Property_PropertyFeature]
GO


ALTER TABLE [ClientWish] DROP CONSTRAINT [Feature_ClientWish]
GO


ALTER TABLE [ClientWish] DROP CONSTRAINT [Client_ClientWish]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "PropertyFeature"                                           */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [PropertyFeature] DROP CONSTRAINT [PK_PropertyFeature]
GO


DROP TABLE [PropertyFeature]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Rent"                                                      */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Rent] DROP CONSTRAINT [PK_Rent]
GO


DROP TABLE [Rent]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Sale"                                                      */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Sale] DROP CONSTRAINT [PK_Sale]
GO


DROP TABLE [Sale]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Visit"                                                     */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Visit] DROP CONSTRAINT [PK_Visit]
GO


DROP TABLE [Visit]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "PropertyForRent"                                           */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [PropertyForRent] DROP CONSTRAINT [PK_PropertyForRent]
GO


DROP TABLE [PropertyForRent]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "PropertyForSale"                                           */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [PropertyForSale] DROP CONSTRAINT [PK_PropertyForSale]
GO


DROP TABLE [PropertyForSale]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Property"                                                  */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Property] DROP CONSTRAINT [Property_PNo_pk]
GO


DROP TABLE [Property]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "ClientWish"                                                */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [ClientWish] DROP CONSTRAINT [PK_ClientWish]
GO


DROP TABLE [ClientWish]
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
/* Drop table "Agent"                                                     */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Agent] DROP CONSTRAINT [Staff_PEID_pk]
GO


DROP TABLE [Agent]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Client"                                                    */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Client] DROP CONSTRAINT [Buyer_PEID_pk]
GO


DROP TABLE [Client]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Owner"                                                     */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Owner] DROP CONSTRAINT [Owner_PEID_pk]
GO


DROP TABLE [Owner]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "RentalAgreement"                                           */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [RentalAgreement] DROP CONSTRAINT [PK_RentalAgreement]
GO


DROP TABLE [RentalAgreement]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Person"                                                    */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Person] DROP CONSTRAINT [PK_Person]
GO


DROP TABLE [Person]
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
/* Drop table "Feature"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Feature] DROP CONSTRAINT [Features_FID_pk]
GO


DROP TABLE [Feature]
GO

