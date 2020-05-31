---------------------------------------------------------------------
-- Script that creates the sample database RafChat
-- Supported versions of SQL Server: 2005, 2008, 2008 R2, 2012, 2014, 2016, Express, SQL Azure
---------------------------------------------------------------------

---------------------------------------------------------------------
-- Create empty database RafChat
---------------------------------------------------------------------

-- For on-premises SQL Server use the steps in section A and then proceed to section C
-- For SQL Azure use the steps in section B and then proceed to section C

---------------------------------------------------------------------
-- Section A - for on-premises SQL Server only
---------------------------------------------------------------------

-- 1. Connect to your on-premises SQL Server instance, master database

-- 2. Run the following code to create an empty database called RafChat
USE master;

--Drop database (sve komentarisano - ne izvrsava se)
IF DB_ID('RafChat') IS NOT NULL DROP DATABASE RafChat;

--If database could not be created due to open connections, abort
--IF @@ERROR = 3702 
--   RAISERROR('Database cannot be dropped because there are still open connections.', 127, --127) WITH NOWAIT, LOG;

-- Create database
CREATE DATABASE RafChat;
GO

USE RafChat;
GO
  
CREATE TABLE [dbo].[tbl_Users](  
  
[ID] [int] IDENTITY(1,1) NOT NULL,  
[UserName] [varchar](50) NULL,  
[Email] [varchar](50) NULL,  
[Password] [varchar](50) NULL,  
[Photo] [varchar](50) NULL,  
  
CONSTRAINT [PK_tbl_Users] PRIMARY KEY CLUSTERED   
(   
  [ID] ASC   
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]  
  
) ON [PRIMARY]  
  
insert into [dbo].[tbl_Users] (UserName,Email,Password)values('admin','admin@admin.com','12345'); 
insert into [dbo].[tbl_Users] (UserName,Email,Password)values('Dusan','dsavic2514s@raf.rs','12345'); 
insert into [dbo].[tbl_Users] (UserName,Email,Password)values('Aleksa','aradanovic16@raf.rs','12345'); 
insert into [dbo].[tbl_Users] (UserName,Email,Password)values('Ivana','ibulovic16@raf.rs','12345'); 