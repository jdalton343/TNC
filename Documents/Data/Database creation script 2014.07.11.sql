USE [master]
GO
/****** Object:  Database [TNC]    Script Date: 7/10/2014 4:26:38 PM ******/
CREATE DATABASE [TNC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TNC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS2012\MSSQL\DATA\TNC.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TNC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS2012\MSSQL\DATA\TNC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TNC] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TNC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TNC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TNC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TNC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TNC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TNC] SET ARITHABORT OFF 
GO
ALTER DATABASE [TNC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TNC] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TNC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TNC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TNC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TNC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TNC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TNC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TNC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TNC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TNC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TNC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TNC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TNC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TNC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TNC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TNC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TNC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TNC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TNC] SET  MULTI_USER 
GO
ALTER DATABASE [TNC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TNC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TNC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TNC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TNC]
GO
/****** Object:  Table [dbo].[NewsItems]    Script Date: 7/10/2014 4:26:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsItems](
	[NewsItemID] [int] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[UrlTitle] [nvarchar](255) NOT NULL,
	[PublicationDate] [datetime] NOT NULL,
	[Author] [nvarchar](255) NULL,
	[Summary] [text] NULL,
	[Body] [text] NULL,
	[LocatorPositionX] [float] NULL,
	[LocatorPositionY] [float] NULL,
	[LocationPopupTitle] [text] NULL,
	[LocationPopupDescription] [text] NULL,
 CONSTRAINT [PK_NewsItems] PRIMARY KEY CLUSTERED 
(
	[NewsItemID] ASC,
	[UrlTitle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[NewsItems] ([NewsItemID], [Title], [UrlTitle], [PublicationDate], [Author], [Summary], [Body], [LocatorPositionX], [LocatorPositionY], [LocationPopupTitle], [LocationPopupDescription]) VALUES (1, N'Aldo''s Test', N'Aldos_Test', CAST(0x0000A36500000000 AS DateTime), N'Aldo', N'This info comes from the db', N'test body from the db', NULL, NULL, NULL, NULL)
GO
USE [master]
GO
ALTER DATABASE [TNC] SET  READ_WRITE 
GO
