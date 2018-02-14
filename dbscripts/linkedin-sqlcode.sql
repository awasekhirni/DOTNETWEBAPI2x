/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases v6.2.1                     */
/* Target DBMS:           MS SQL Server 2008                              */
/* Project file:          LinkedInDBM.dez                                 */
/* Project name:                                                          */
/* Author:                Syed Awase Khirni                               */
/* Script type:           Database creation script                        */
/* Created on:            2016-12-16 16:28                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Tables                                                                 */
/* ---------------------------------------------------------------------- */

/* ---------------------------------------------------------------------- */
/* Add table "Members"                                                    */
/* ---------------------------------------------------------------------- */

use linkedindb;
CREATE TABLE [Members] (
    [Member_ID] VARCHAR(100) NOT NULL,
    [Date_Joined] DATETIME,
    [Date_of_Birth] DATE,
    [Email_Address] VARCHAR(100),
    [Mobile] VARCHAR(40),
    [Email_Password] VARCHAR(40),
    [FirstName] VARCHAR(200),
    [LastName] VARCHAR(200),
    [Gender] VARCHAR(40),
    [JoiningIPAddress] VARCHAR(200),
    [isActive] BINARY(1),
    [OrgID] VARCHAR(100),
    [Marital_Status_Code] VARCHAR(40),
    [AddressID] VARCHAR(100),
    CONSTRAINT [PK_Members] PRIMARY KEY ([Member_ID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Organizations"                                              */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Organizations] (
    [OrgID] VARCHAR(100) NOT NULL,
    [OrgName] VARCHAR(250),
    [OrgDescription] VARCHAR(1000),
    [OrgUrl] VARCHAR(250),
    [OrgAddress] VARCHAR(1000),
    [OrgEmail] VARCHAR(250),
    [OrgPhoneNo] VARCHAR(100),
    [OrgisActive] BINARY(1),
    CONSTRAINT [PK_Organizations] PRIMARY KEY ([OrgID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Ref_Marital_Status"                                         */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Ref_Marital_Status] (
    [Marital_Status_Code] VARCHAR(40) NOT NULL,
    [Marital_Status_Desc] VARCHAR(500),
    [Marital_Status_Remark] VARCHAR(500),
    CONSTRAINT [PK_Ref_Marital_Status] PRIMARY KEY ([Marital_Status_Code])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Addresses"                                                  */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Addresses] (
    [AddressID] VARCHAR(100) NOT NULL,
    [AddressL1] VARCHAR(250),
    [AddressL2] VARCHAR(250),
    [AddressL3] VARCHAR(250),
    [AddressCity] VARCHAR(250),
    [AddressStateCountyProvince] VARCHAR(250),
    [ZipCode] VARCHAR(100),
    [Country] VARCHAR(500),
    [CountryCode] VARCHAR(100),
    [isCurrent] BINARY(1),
    [startDate] DATE,
    [endDate] DATE,
    CONSTRAINT [PK_Addresses] PRIMARY KEY ([AddressID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Connections"                                                */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Connections] (
    [ConnectionID] VARCHAR(250) NOT NULL,
    [ConnectionMemberID] VARCHAR(100) NOT NULL,
    [DateConnectionMade] DATETIME,
    [RelationDesc] VARCHAR(1000),
    [Member_ID] VARCHAR(100),
    CONSTRAINT [PK_Connections] PRIMARY KEY ([ConnectionID], [ConnectionMemberID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Followers"                                                  */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Followers] (
    [DateStartedFollow] DATETIME NOT NULL,
    [DateStoppedFollow] DATETIME,
    [OtherDetails] VARCHAR(100),
    [Member_ID] VARCHAR(100),
    [FollowerID] VARCHAR(100) NOT NULL,
    CONSTRAINT [PK_Followers] PRIMARY KEY ([DateStartedFollow], [FollowerID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Groups"                                                     */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Groups] (
    [GroupID] VARCHAR(100) NOT NULL,
    [GroupName] VARCHAR(500),
    [GroupDescription] VARCHAR(1000),
    [GroupStartDate] DATETIME,
    [GroupEndDate] DATETIME,
    [GroupDateLastActivity] DATETIME,
    [Member_ID] VARCHAR(100),
    [GroupTypeID] VARCHAR(40),
    CONSTRAINT [PK_Groups] PRIMARY KEY ([GroupID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "GroupType"                                                  */
/* ---------------------------------------------------------------------- */

CREATE TABLE [GroupType] (
    [GroupTypeID] VARCHAR(40) NOT NULL,
    [GroupTypeName] VARCHAR(250),
    [GroupTypeDesc] VARCHAR(500),
    [GroupTypeIsActive] BINARY(1),
    CONSTRAINT [PK_GroupType] PRIMARY KEY ([GroupTypeID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Groups_Members"                                             */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Groups_Members] (
    [GroupID] VARCHAR(100) NOT NULL,
    [Member_ID] VARCHAR(100) NOT NULL,
    [DateJoined] DATETIME,
    [DateLeft] DATETIME,
    CONSTRAINT [PK_Groups_Members] PRIMARY KEY ([GroupID], [Member_ID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Recommendations"                                            */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Recommendations] (
    [RecommenderID] VARCHAR(100) NOT NULL,
    [Date_of_Recommendation] DATETIME,
    [Recommendation] VARCHAR(5000),
    [RelationShipReco] VARCHAR(250),
    [Member_ID] VARCHAR(100) NOT NULL,
    CONSTRAINT [PK_Recommendations] PRIMARY KEY ([RecommenderID], [Member_ID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Profiles"                                                   */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Profiles] (
    [ProfileID] VARCHAR(40) NOT NULL,
    [ProfileTile] VARCHAR(250),
    [ProfileSummary] VARCHAR(500),
    [ProfileCreationDate] DATETIME,
    [ProfileLastUpdatedOn] DATETIME,
    [ProfileisActive] BINARY(1),
    [Member_ID] VARCHAR(100),
    CONSTRAINT [PK_Profiles] PRIMARY KEY ([ProfileID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "RESUMES"                                                    */
/* ---------------------------------------------------------------------- */

CREATE TABLE [RESUMES] (
    [ResumeID] VARCHAR(40) NOT NULL,
    [ResumeTitle] VARCHAR(250),
    [ResumeSummary] VARCHAR(500),
    [ResumeCreationDate] DATETIME,
    [ResumeLastUpdatedOn] DATETIME,
    [Member_ID] VARCHAR(100),
    CONSTRAINT [PK_RESUMES] PRIMARY KEY ([ResumeID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Resume_Sections"                                            */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Resume_Sections] (
    [R_SectionID] VARCHAR(40) NOT NULL,
    [R_CreationDate] DATETIME,
    [R_LastUpdatedOn] DATETIME,
    [ResumeID] VARCHAR(40),
    [R_Section_Text] VARCHAR(1000),
    [CV_Section_Code] VARCHAR(40),
    CONSTRAINT [PK_Resume_Sections] PRIMARY KEY ([R_SectionID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Ref_CV_Sections"                                            */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Ref_CV_Sections] (
    [CV_Section_Code] VARCHAR(40) NOT NULL,
    [CV_Section_Desc] VARCHAR(1000),
    CONSTRAINT [PK_Ref_CV_Sections] PRIMARY KEY ([CV_Section_Code])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Ref_ProfileSections"                                        */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Ref_ProfileSections] (
    [ProfileSectionCode] VARCHAR(40) NOT NULL,
    [ProfileSectionDesc] VARCHAR(1000),
    [AwardDate] DATETIME,
    [DurationStartDate] DATETIME,
    [DurationEndDate] DATETIME,
    CONSTRAINT [PK_Ref_ProfileSections] PRIMARY KEY ([ProfileSectionCode])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Profile_Sections"                                           */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Profile_Sections] (
    [PS_CreationDate] DATETIME,
    [PS_LastUpdatedOn] DATETIME,
    [ProfileSectionText] VARCHAR(1000),
    [ProfileSectionCode] VARCHAR(40) NOT NULL,
    CONSTRAINT [PK_Profile_Sections] PRIMARY KEY ([ProfileSectionCode])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Qualification"                                              */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Qualification] (
    [QualID] VARCHAR(250) NOT NULL,
    [QualTitle] VARCHAR(250),
    [EarnedFrom] VARCHAR(500),
    [EarnedFromUrl] VARCHAR(500),
    [QualStartDate] DATE,
    [QualEndDate] DATE,
    [QualCreationDate] DATETIME,
    [QualLastUpdatedOn] DATETIME,
    [QualGradePercent] VARCHAR(40),
    [ResumeID] VARCHAR(40) NOT NULL,
    CONSTRAINT [PK_Qualification] PRIMARY KEY ([QualID], [ResumeID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Experience"                                                 */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Experience] (
    [ExpId] VARCHAR(250) NOT NULL,
    [ExpDesignation] VARCHAR(250),
    [ExpOrganization] VARCHAR(250),
    [ExpStartDate] DATE,
    [ExpEndDate] DATE,
    [ExpCreationDate] DATETIME,
    [ExpLastUpdateOn] DATETIME,
    [ExpRoleResp] VARCHAR(2000),
    [ExpLastSalaryDrawn] VARCHAR(40),
    [ExpReference1Email] VARCHAR(250),
    [ExpReference2Email] VARCHAR(250),
    [ExpReference3Email] VARCHAR(250),
    [ExpReference4Email] VARCHAR(250),
    [ResumeID] VARCHAR(40) NOT NULL,
    CONSTRAINT [PK_Experience] PRIMARY KEY ([ExpId], [ResumeID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Skill"                                                      */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Skill] (
    [Skill_ID] VARCHAR(40) NOT NULL,
    [Skill_Title] VARCHAR(40),
    [Skill_Desc] VARCHAR(40),
    [Skill_Rating] VARCHAR(40),
    [Skill_Votes] INTEGER,
    [Skill_TypeId] VARCHAR(40),
    [ResumeID] VARCHAR(40) NOT NULL,
    CONSTRAINT [PK_Skill] PRIMARY KEY ([Skill_ID], [ResumeID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Skill_Type"                                                 */
/* ---------------------------------------------------------------------- */

CREATE TABLE [Skill_Type] (
    [Skill_TypeId] VARCHAR(40) NOT NULL,
    [Skill_TypeName] VARCHAR(40),
    [Skill_TypeDesc] VARCHAR(40),
    [Skill_TypeIsActive] BINARY(1),
    CONSTRAINT [PK_Skill_Type] PRIMARY KEY ([Skill_TypeId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "EmailMessage"                                               */
/* ---------------------------------------------------------------------- */

CREATE TABLE [EmailMessage] (
    [EmailMsgID] VARCHAR(100) NOT NULL,
    [FromMemberID] VARCHAR(100),
    [ToMemberID] VARCHAR(100),
    [Subject] VARCHAR(40),
    [Priority] VARCHAR(40),
    [SendImmediately] BINARY(1),
    [ScheduleSendTime] DATETIME,
    [Attachments] VARCHAR(1000),
    [MessageArea] VARCHAR(1000),
    [MessageArchive] BINARY(1),
    CONSTRAINT [PK_EmailMessage] PRIMARY KEY ([EmailMsgID])
)
GO


/* ---------------------------------------------------------------------- */
/* Foreign key constraints                                                */
/* ---------------------------------------------------------------------- */

ALTER TABLE [Members] ADD CONSTRAINT [Organizations_Members] 
    FOREIGN KEY ([OrgID]) REFERENCES [Organizations] ([OrgID])
GO


ALTER TABLE [Members] ADD CONSTRAINT [Ref_Marital_Status_Members] 
    FOREIGN KEY ([Marital_Status_Code]) REFERENCES [Ref_Marital_Status] ([Marital_Status_Code])
GO


ALTER TABLE [Members] ADD CONSTRAINT [Addresses_Members] 
    FOREIGN KEY ([AddressID]) REFERENCES [Addresses] ([AddressID])
GO


ALTER TABLE [Connections] ADD CONSTRAINT [Members_Connections] 
    FOREIGN KEY ([Member_ID]) REFERENCES [Members] ([Member_ID])
GO


ALTER TABLE [Followers] ADD CONSTRAINT [Members_Followers] 
    FOREIGN KEY ([Member_ID]) REFERENCES [Members] ([Member_ID])
GO


ALTER TABLE [Groups] ADD CONSTRAINT [Members_Groups] 
    FOREIGN KEY ([Member_ID]) REFERENCES [Members] ([Member_ID])
GO


ALTER TABLE [Groups] ADD CONSTRAINT [GroupType_Groups] 
    FOREIGN KEY ([GroupTypeID]) REFERENCES [GroupType] ([GroupTypeID])
GO


ALTER TABLE [Groups_Members] ADD CONSTRAINT [Groups_Groups_Members] 
    FOREIGN KEY ([GroupID]) REFERENCES [Groups] ([GroupID])
GO


ALTER TABLE [Groups_Members] ADD CONSTRAINT [Members_Groups_Members] 
    FOREIGN KEY ([Member_ID]) REFERENCES [Members] ([Member_ID])
GO


ALTER TABLE [Recommendations] ADD CONSTRAINT [Members_Recommendations] 
    FOREIGN KEY ([Member_ID]) REFERENCES [Members] ([Member_ID])
GO


ALTER TABLE [Profiles] ADD CONSTRAINT [Members_Profiles] 
    FOREIGN KEY ([Member_ID]) REFERENCES [Members] ([Member_ID])
GO


ALTER TABLE [RESUMES] ADD CONSTRAINT [Members_RESUMES] 
    FOREIGN KEY ([Member_ID]) REFERENCES [Members] ([Member_ID])
GO


ALTER TABLE [Resume_Sections] ADD CONSTRAINT [RESUMES_Resume_Sections] 
    FOREIGN KEY ([ResumeID]) REFERENCES [RESUMES] ([ResumeID])
GO


ALTER TABLE [Resume_Sections] ADD CONSTRAINT [Ref_CV_Sections_Resume_Sections] 
    FOREIGN KEY ([CV_Section_Code]) REFERENCES [Ref_CV_Sections] ([CV_Section_Code])
GO


ALTER TABLE [Profile_Sections] ADD CONSTRAINT [Ref_ProfileSections_Profile_Sections] 
    FOREIGN KEY ([ProfileSectionCode]) REFERENCES [Ref_ProfileSections] ([ProfileSectionCode])
GO


ALTER TABLE [Qualification] ADD CONSTRAINT [RESUMES_Qualification] 
    FOREIGN KEY ([ResumeID]) REFERENCES [RESUMES] ([ResumeID])
GO


ALTER TABLE [Experience] ADD CONSTRAINT [RESUMES_Experience] 
    FOREIGN KEY ([ResumeID]) REFERENCES [RESUMES] ([ResumeID])
GO


ALTER TABLE [Skill] ADD CONSTRAINT [Skill_Type_Skill] 
    FOREIGN KEY ([Skill_TypeId]) REFERENCES [Skill_Type] ([Skill_TypeId])
GO


ALTER TABLE [Skill] ADD CONSTRAINT [RESUMES_Skill] 
    FOREIGN KEY ([ResumeID]) REFERENCES [RESUMES] ([ResumeID])
GO

