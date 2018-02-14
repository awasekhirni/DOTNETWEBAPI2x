/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2005                              */
/* Project file:          bug-tracking.dez                                */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2018-02-14 17:12                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "User"                                                       */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [User] (
    [UserID] INTEGER NOT NULL,
    [UserFirstName] VARCHAR(40) NOT NULL,
    [UserName] VARCHAR(40) NOT NULL,
    [UserDateJoined] DATETIME,
    [UserEmailAddress] VARCHAR(40),
    [UserIsActive] BIT,
    [UserIsStaff] BIT,
    [UserIsSuperUser] BIT,
    [UserLastLogIn] DATETIME,
    [UserLastName] VARCHAR(40),
    [UserPassWord] VARCHAR(40),
    PRIMARY KEY ([UserID])
)
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'Alphanumeric characters only (letters, digits and underscores).', 'SCHEMA', N'dbo', 'TABLE', N'User', 'COLUMN', N'UserName'
GO


/* ---------------------------------------------------------------------- */
/* Add table "UserGroup"                                                  */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [UserGroup] (
    [UserGroupID] INTEGER NOT NULL,
    [UserGroupName] VARCHAR(255) NOT NULL,
    PRIMARY KEY ([UserGroupID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "GroupMember"                                                */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [GroupMember] (
    [UserGroupID] INTEGER NOT NULL,
    [UserID] INTEGER NOT NULL,
    PRIMARY KEY ([UserGroupID], [UserID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Project"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Project] (
    [ProjectID] INTEGER NOT NULL,
    [ProjectName] VARCHAR(255) NOT NULL,
    [ProjectDescription] TEXT,
    PRIMARY KEY ([ProjectID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "ProjectVersion"                                             */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [ProjectVersion] (
    [ProjectVersionID] INTEGER NOT NULL,
    [ProjectID] INTEGER NOT NULL,
    [ProjectVersionName] VARCHAR(80),
    [ProjectVersionNumber] VARCHAR(10),
    [ProjectVersionDeadLine] DATETIME,
    [ProjectVersionDate] DATETIME,
    PRIMARY KEY ([ProjectVersionID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "ProjectGroup"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [ProjectGroup] (
    [ProjectGroupID] INTEGER NOT NULL,
    [UserGroupID] INTEGER NOT NULL,
    [ProjectID] INTEGER NOT NULL,
    [ProjectGroupRole] VARCHAR(80),
    PRIMARY KEY ([ProjectGroupID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Bug"                                                        */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Bug] (
    [BugID] INTEGER NOT NULL,
    [BugAddedBy] INTEGER NOT NULL,
    [ProjectVersionID] INTEGER NOT NULL,
    [BugTitle] VARCHAR(255) NOT NULL,
    [BugPriority] INTEGER NOT NULL,
    [BugDescription] TEXT,
    [BugReproduce] TEXT,
    [BugEnvironment] TEXT,
    [BugSuggestionForFix] TEXT,
    PRIMARY KEY ([BugID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "RelatedBug"                                                 */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [RelatedBug] (
    [BugID1] INTEGER NOT NULL,
    [BugID2] INTEGER NOT NULL,
    [DescriptionOfRelation] VARCHAR(255),
    PRIMARY KEY ([BugID1], [BugID2])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Task"                                                       */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Task] (
    [TaskID] INTEGER NOT NULL,
    [TaskAddedBy] INTEGER NOT NULL,
    [ProjectVersionID] INTEGER NOT NULL,
    [TaskTitle] VARCHAR(255) NOT NULL,
    [TaskDescription] TEXT NOT NULL,
    [TaskAddedDate] DATETIME NOT NULL,
    [TaskModifiedDate] DATETIME NOT NULL,
    [TaskPriority] INTEGER NOT NULL,
    [TaskDueDate] DATETIME NOT NULL,
    PRIMARY KEY ([TaskID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "RelatedTask"                                                */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [RelatedTask] (
    [TaskID1] INTEGER NOT NULL,
    [TaskID2] INTEGER NOT NULL,
    [DescriptionOfRelation] VARCHAR(255),
    PRIMARY KEY ([TaskID1], [TaskID2])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Note"                                                       */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Note] (
    [NoteID] INTEGER NOT NULL,
    [NoteText] TEXT,
    [NoteCreateDate] DATETIME,
    [UserID] INTEGER,
    CONSTRAINT [PK_Note] PRIMARY KEY ([NoteID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "TaskAssignee"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [TaskAssignee] (
    [TaskID] INTEGER NOT NULL,
    [UserID] INTEGER NOT NULL,
    [HoursSpent] INTEGER,
    CONSTRAINT [PK_TaskAssignee] PRIMARY KEY ([TaskID], [UserID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "BugTaskRelation"                                            */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [BugTaskRelation] (
    [TaskID] INTEGER NOT NULL,
    [BugID] INTEGER NOT NULL,
    CONSTRAINT [PK_BugTaskRelation] PRIMARY KEY ([TaskID], [BugID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "BugAssignee"                                                */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [BugAssignee] (
    [UserID] INTEGER NOT NULL,
    [BugID] INTEGER NOT NULL,
    [HoursSpent] INTEGER,
    CONSTRAINT [PK_BugAssignee] PRIMARY KEY ([UserID], [BugID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "BugNote"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [BugNote] (
    [NoteID] INTEGER NOT NULL,
    [BugID] INTEGER NOT NULL,
    [BugNoteNewStatus] INTEGER NOT NULL,
    PRIMARY KEY ([NoteID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "TaskNote"                                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [TaskNote] (
    [NoteID] INTEGER NOT NULL,
    [TaskID] INTEGER NOT NULL,
    [TaskNoteNewStatus] INTEGER,
    PRIMARY KEY ([NoteID])
)
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [GroupMember] ADD
    FOREIGN KEY ([UserGroupID]) REFERENCES [UserGroup] ([UserGroupID])
GO


ALTER TABLE [GroupMember] ADD
    FOREIGN KEY ([UserID]) REFERENCES [User] ([UserID])
GO


ALTER TABLE [ProjectVersion] ADD
    FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ProjectID])
GO


ALTER TABLE [ProjectGroup] ADD
    FOREIGN KEY ([UserGroupID]) REFERENCES [UserGroup] ([UserGroupID])
GO


ALTER TABLE [ProjectGroup] ADD
    FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ProjectID])
GO


ALTER TABLE [Bug] ADD
    FOREIGN KEY ([BugAddedBy]) REFERENCES [User] ([UserID])
GO


ALTER TABLE [Bug] ADD
    FOREIGN KEY ([ProjectVersionID]) REFERENCES [ProjectVersion] ([ProjectVersionID])
GO


ALTER TABLE [BugNote] ADD
    FOREIGN KEY ([BugID]) REFERENCES [Bug] ([BugID])
GO


ALTER TABLE [BugNote] ADD CONSTRAINT [Note_BugNote] 
    FOREIGN KEY ([NoteID]) REFERENCES [Note] ([NoteID])
GO


ALTER TABLE [RelatedBug] ADD
    FOREIGN KEY ([BugID1]) REFERENCES [Bug] ([BugID])
GO


ALTER TABLE [RelatedBug] ADD
    FOREIGN KEY ([BugID2]) REFERENCES [Bug] ([BugID])
GO


ALTER TABLE [Task] ADD
    FOREIGN KEY ([TaskAddedBy]) REFERENCES [User] ([UserID])
GO


ALTER TABLE [Task] ADD
    FOREIGN KEY ([ProjectVersionID]) REFERENCES [ProjectVersion] ([ProjectVersionID])
GO


ALTER TABLE [TaskNote] ADD
    FOREIGN KEY ([TaskID]) REFERENCES [Task] ([TaskID])
GO


ALTER TABLE [TaskNote] ADD CONSTRAINT [Note_TaskNote] 
    FOREIGN KEY ([NoteID]) REFERENCES [Note] ([NoteID])
GO


ALTER TABLE [RelatedTask] ADD
    FOREIGN KEY ([TaskID1]) REFERENCES [Task] ([TaskID])
GO


ALTER TABLE [RelatedTask] ADD
    FOREIGN KEY ([TaskID2]) REFERENCES [Task] ([TaskID])
GO


ALTER TABLE [Note] ADD CONSTRAINT [User_Note] 
    FOREIGN KEY ([UserID]) REFERENCES [User] ([UserID])
GO


ALTER TABLE [TaskAssignee] ADD CONSTRAINT [Task_TaskAssignee] 
    FOREIGN KEY ([TaskID]) REFERENCES [Task] ([TaskID])
GO


ALTER TABLE [TaskAssignee] ADD CONSTRAINT [User_TaskAssignee] 
    FOREIGN KEY ([UserID]) REFERENCES [User] ([UserID])
GO


ALTER TABLE [BugTaskRelation] ADD CONSTRAINT [Task_BugTaskRelation] 
    FOREIGN KEY ([TaskID]) REFERENCES [Task] ([TaskID])
GO


ALTER TABLE [BugTaskRelation] ADD CONSTRAINT [Bug_BugTaskRelation] 
    FOREIGN KEY ([BugID]) REFERENCES [Bug] ([BugID])
GO


ALTER TABLE [BugAssignee] ADD CONSTRAINT [User_BugAssignee] 
    FOREIGN KEY ([UserID]) REFERENCES [User] ([UserID])
GO


ALTER TABLE [BugAssignee] ADD CONSTRAINT [Bug_BugAssignee] 
    FOREIGN KEY ([BugID]) REFERENCES [Bug] ([BugID])
GO

