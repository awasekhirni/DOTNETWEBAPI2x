/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2005                              */
/* Project file:          bug-tracking.dez                                */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2018-02-14 17:12                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [GroupMember] DROP CONSTRAINT 
GO


ALTER TABLE [GroupMember] DROP CONSTRAINT 
GO


ALTER TABLE [ProjectVersion] DROP CONSTRAINT 
GO


ALTER TABLE [ProjectGroup] DROP CONSTRAINT 
GO


ALTER TABLE [ProjectGroup] DROP CONSTRAINT 
GO


ALTER TABLE [Bug] DROP CONSTRAINT 
GO


ALTER TABLE [Bug] DROP CONSTRAINT 
GO


ALTER TABLE [BugNote] DROP CONSTRAINT 
GO


ALTER TABLE [BugNote] DROP CONSTRAINT [Note_BugNote]
GO


ALTER TABLE [RelatedBug] DROP CONSTRAINT 
GO


ALTER TABLE [RelatedBug] DROP CONSTRAINT 
GO


ALTER TABLE [Task] DROP CONSTRAINT 
GO


ALTER TABLE [Task] DROP CONSTRAINT 
GO


ALTER TABLE [TaskNote] DROP CONSTRAINT 
GO


ALTER TABLE [TaskNote] DROP CONSTRAINT [Note_TaskNote]
GO


ALTER TABLE [RelatedTask] DROP CONSTRAINT 
GO


ALTER TABLE [RelatedTask] DROP CONSTRAINT 
GO


ALTER TABLE [Note] DROP CONSTRAINT [User_Note]
GO


ALTER TABLE [TaskAssignee] DROP CONSTRAINT [Task_TaskAssignee]
GO


ALTER TABLE [TaskAssignee] DROP CONSTRAINT [User_TaskAssignee]
GO


ALTER TABLE [BugTaskRelation] DROP CONSTRAINT [Task_BugTaskRelation]
GO


ALTER TABLE [BugTaskRelation] DROP CONSTRAINT [Bug_BugTaskRelation]
GO


ALTER TABLE [BugAssignee] DROP CONSTRAINT [User_BugAssignee]
GO


ALTER TABLE [BugAssignee] DROP CONSTRAINT [Bug_BugAssignee]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "TaskNote"                                                  */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [TaskNote] DROP CONSTRAINT 
GO


DROP TABLE [TaskNote]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "BugNote"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [BugNote] DROP CONSTRAINT 
GO


DROP TABLE [BugNote]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "BugAssignee"                                               */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [BugAssignee] DROP CONSTRAINT [PK_BugAssignee]
GO


DROP TABLE [BugAssignee]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "BugTaskRelation"                                           */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [BugTaskRelation] DROP CONSTRAINT [PK_BugTaskRelation]
GO


DROP TABLE [BugTaskRelation]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "TaskAssignee"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [TaskAssignee] DROP CONSTRAINT [PK_TaskAssignee]
GO


DROP TABLE [TaskAssignee]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Note"                                                      */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Note] DROP CONSTRAINT [PK_Note]
GO


DROP TABLE [Note]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "RelatedTask"                                               */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [RelatedTask] DROP CONSTRAINT 
GO


DROP TABLE [RelatedTask]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Task"                                                      */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Task] DROP CONSTRAINT 
GO


DROP TABLE [Task]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "RelatedBug"                                                */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [RelatedBug] DROP CONSTRAINT 
GO


DROP TABLE [RelatedBug]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Bug"                                                       */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Bug] DROP CONSTRAINT 
GO


DROP TABLE [Bug]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "ProjectGroup"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [ProjectGroup] DROP CONSTRAINT 
GO


DROP TABLE [ProjectGroup]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "ProjectVersion"                                            */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [ProjectVersion] DROP CONSTRAINT 
GO


DROP TABLE [ProjectVersion]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Project"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Project] DROP CONSTRAINT 
GO


DROP TABLE [Project]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "GroupMember"                                               */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [GroupMember] DROP CONSTRAINT 
GO


DROP TABLE [GroupMember]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "UserGroup"                                                 */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [UserGroup] DROP CONSTRAINT 
GO


DROP TABLE [UserGroup]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "User"                                                      */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [User] DROP CONSTRAINT 
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'User', 'COLUMN', N'UserName'
GO


DROP TABLE [User]
GO

