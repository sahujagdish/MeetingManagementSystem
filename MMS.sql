USE [master]
GO
/****** Object:  Database [MMS]    Script Date: 18-03-2020 19:36:09 ******/
CREATE DATABASE [MMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MMS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MMS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MMS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [MMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MMS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MMS] SET RECOVERY FULL 
GO
ALTER DATABASE [MMS] SET  MULTI_USER 
GO
ALTER DATABASE [MMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MMS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MMS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MMS', N'ON'
GO
ALTER DATABASE [MMS] SET QUERY_STORE = OFF
GO
USE [MMS]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 18-03-2020 19:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 18-03-2020 19:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meeting]    Script Date: 18-03-2020 19:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meeting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [varchar](50) NOT NULL,
	[Agenda] [varchar](500) NOT NULL,
	[Datetime] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeetingAttendees]    Script Date: 18-03-2020 19:36:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeetingAttendees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AttendeeId] [int] NULL,
	[MeetingId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Meeting] ADD  CONSTRAINT [DF_Meeting_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
USE [master]
GO
ALTER DATABASE [MMS] SET  READ_WRITE 
GO
