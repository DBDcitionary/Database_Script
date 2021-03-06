USE [master]
GO
/****** Object:  Database [DB_Dictionary]    Script Date: 01/29/2016 11:49:38 ******/
CREATE DATABASE [DB_Dictionary]
GO

use DB_Dictionary
go

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_Dictionary].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_Dictionary] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DB_Dictionary] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DB_Dictionary] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DB_Dictionary] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DB_Dictionary] SET ARITHABORT OFF
GO
ALTER DATABASE [DB_Dictionary] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DB_Dictionary] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DB_Dictionary] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DB_Dictionary] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DB_Dictionary] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DB_Dictionary] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DB_Dictionary] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DB_Dictionary] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DB_Dictionary] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DB_Dictionary] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DB_Dictionary] SET  ENABLE_BROKER
GO
ALTER DATABASE [DB_Dictionary] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DB_Dictionary] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DB_Dictionary] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DB_Dictionary] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DB_Dictionary] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DB_Dictionary] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DB_Dictionary] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DB_Dictionary] SET  READ_WRITE
GO
ALTER DATABASE [DB_Dictionary] SET RECOVERY FULL
GO
ALTER DATABASE [DB_Dictionary] SET  MULTI_USER
GO
ALTER DATABASE [DB_Dictionary] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DB_Dictionary] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_Dictionary', N'ON'
GO
USE [DB_Dictionary]
GO
/****** Object:  Table [dbo].[User_Role_Tbl]    Script Date: 01/29/2016 11:49:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Role_Tbl](
	[User_Role_ID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](50) NULL,
	[Role_Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[User_Role_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[User_Role_Tbl] ON
INSERT [dbo].[User_Role_Tbl] ([User_Role_ID], [Role], [Role_Description]) VALUES (1, N'Admin', N'Database Dictionary Administrator responsible for making Changes in the system')
INSERT [dbo].[User_Role_Tbl] ([User_Role_ID], [Role], [Role_Description]) VALUES (2, N'DBA', N'Database Administrator reponsible for monitoring databases')
INSERT [dbo].[User_Role_Tbl] ([User_Role_ID], [Role], [Role_Description]) VALUES (3, N'Database Developer', N'Database Developer responsible for developing databases')
SET IDENTITY_INSERT [dbo].[User_Role_Tbl] OFF
/****** Object:  Table [dbo].[Database_Tbl]    Script Date: 01/29/2016 11:49:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Database_Tbl](
	[DB_ID] [int] IDENTITY(1,1) NOT NULL,
	[DB_Name] [varchar](225) NULL,
	[DB_Description] [varchar](225) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DB_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Database_Tbl] ON
INSERT [dbo].[Database_Tbl] ([DB_ID], [DB_Name], [DB_Description]) VALUES (1, N'ABMPOS', N'Database Consisting of Kiosk Information')
INSERT [dbo].[Database_Tbl] ([DB_ID], [DB_Name], [DB_Description]) VALUES (2, N'MABS', N'Database Consisting of Mama Africa Bicycle Shop Information')
SET IDENTITY_INSERT [dbo].[Database_Tbl] OFF
/****** Object:  Table [dbo].[User_Tbl]    Script Date: 01/29/2016 11:49:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Tbl](
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[User_Role_ID] [int] NULL,
	[Password] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[User_Tbl] ON
INSERT [dbo].[User_Tbl] ([User_ID], [UserName], [User_Role_ID], [Password]) VALUES (1, N'KPManganye', 1, 0x001B1EEE14C5ED4CA4848C0011A3D229010000009C41DFE97711B8A1A005B7AF6EE2CBE70D6B7D1F5497DED792B54B84D555A77B)
INSERT [dbo].[User_Tbl] ([User_ID], [UserName], [User_Role_ID], [Password]) VALUES (2, N'RSManganye', 2, 0x001B1EEE14C5ED4CA4848C0011A3D2290100000057159A9D24EC026C49275A6ECA2C17C71ACF47E31E910EAB00EDBA4D3469A424)
INSERT [dbo].[User_Tbl] ([User_ID], [UserName], [User_Role_ID], [Password]) VALUES (3, N'test1', 3, 0x001B1EEE14C5ED4CA4848C0011A3D229010000008016A1F54EEEC5035C322851921B0AD1D4B538E9F239B82322B5BBE5D23A7204)
INSERT [dbo].[User_Tbl] ([User_ID], [UserName], [User_Role_ID], [Password]) VALUES (4, N'test1', 3, 0x001B1EEE14C5ED4CA4848C0011A3D229010000000558137E111056DE11C85F8A5599987C5189E7748A7427400AABD0F8144152DE)
SET IDENTITY_INSERT [dbo].[User_Tbl] OFF
/****** Object:  Table [dbo].[Table_Tbl]    Script Date: 01/29/2016 11:49:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Tbl](
	[TBL_ID] [int] IDENTITY(1,1) NOT NULL,
	[TBL_Name] [varchar](225) NULL,
	[TBL_Description] [varchar](225) NOT NULL,
	[DB_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TBL_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Table_Tbl] ON
INSERT [dbo].[Table_Tbl] ([TBL_ID], [TBL_Name], [TBL_Description], [DB_ID]) VALUES (1, N'People_Tbl', N'Table for adding personal records', 2)
INSERT [dbo].[Table_Tbl] ([TBL_ID], [TBL_Name], [TBL_Description], [DB_ID]) VALUES (2, N'Employees_Tbl', N'Table for adding employment records', 2)
INSERT [dbo].[Table_Tbl] ([TBL_ID], [TBL_Name], [TBL_Description], [DB_ID]) VALUES (3, N'Transactions_Tbl', N'Table for adding transactions records', 1)
SET IDENTITY_INSERT [dbo].[Table_Tbl] OFF
/****** Object:  Table [dbo].[Field_Tbl]    Script Date: 01/29/2016 11:49:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Field_Tbl](
	[Field_ID] [int] IDENTITY(1,1) NOT NULL,
	[Field_Name] [varchar](225) NULL,
	[Field_Description] [varchar](225) NOT NULL,
	[TBL_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Field_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Field_Tbl] ON
INSERT [dbo].[Field_Tbl] ([Field_ID], [Field_Name], [Field_Description], [TBL_ID]) VALUES (1, N'F_Name', N'Column for storing people first Names', 1)
INSERT [dbo].[Field_Tbl] ([Field_ID], [Field_Name], [Field_Description], [TBL_ID]) VALUES (2, N'S_Name', N'Column for storing people Second Names', 1)
INSERT [dbo].[Field_Tbl] ([Field_ID], [Field_Name], [Field_Description], [TBL_ID]) VALUES (3, N'Age', N'Column for storing people ages', 1)
INSERT [dbo].[Field_Tbl] ([Field_ID], [Field_Name], [Field_Description], [TBL_ID]) VALUES (4, N'Pay_Day', N'Column for storing salary dates', 2)
INSERT [dbo].[Field_Tbl] ([Field_ID], [Field_Name], [Field_Description], [TBL_ID]) VALUES (5, N'Department', N'Column for storing departments records for employees', 2)
INSERT [dbo].[Field_Tbl] ([Field_ID], [Field_Name], [Field_Description], [TBL_ID]) VALUES (6, N'TransactID', N'Primary Key, Unique identify column for Transaction Table', 3)
SET IDENTITY_INSERT [dbo].[Field_Tbl] OFF
/****** Object:  ForeignKey [fk_UserRoleID]    Script Date: 01/29/2016 11:49:39 ******/
ALTER TABLE [dbo].[User_Tbl]  WITH CHECK ADD  CONSTRAINT [fk_UserRoleID] FOREIGN KEY([User_Role_ID])
REFERENCES [dbo].[User_Role_Tbl] ([User_Role_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Tbl] CHECK CONSTRAINT [fk_UserRoleID]
GO
/****** Object:  ForeignKey [fk_DB_TBL]    Script Date: 01/29/2016 11:49:39 ******/
ALTER TABLE [dbo].[Table_Tbl]  WITH CHECK ADD  CONSTRAINT [fk_DB_TBL] FOREIGN KEY([DB_ID])
REFERENCES [dbo].[Database_Tbl] ([DB_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Table_Tbl] CHECK CONSTRAINT [fk_DB_TBL]
GO
/****** Object:  ForeignKey [fk_TBL_Field]    Script Date: 01/29/2016 11:49:39 ******/
ALTER TABLE [dbo].[Field_Tbl]  WITH CHECK ADD  CONSTRAINT [fk_TBL_Field] FOREIGN KEY([TBL_ID])
REFERENCES [dbo].[Table_Tbl] ([TBL_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Field_Tbl] CHECK CONSTRAINT [fk_TBL_Field]
GO
