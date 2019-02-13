USE [master]
GO
/****** Object:  Database [BloodBank]    Script Date: 2/11/2019 10:30:09 PM ******/
CREATE DATABASE [BloodBank]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BloodBank', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLUWU\MSSQL\DATA\BloodBank.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BloodBank_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLUWU\MSSQL\DATA\BloodBank_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BloodBank] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BloodBank].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BloodBank] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BloodBank] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BloodBank] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BloodBank] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BloodBank] SET ARITHABORT OFF 
GO
ALTER DATABASE [BloodBank] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BloodBank] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BloodBank] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BloodBank] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BloodBank] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BloodBank] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BloodBank] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BloodBank] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BloodBank] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BloodBank] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BloodBank] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BloodBank] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BloodBank] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BloodBank] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BloodBank] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BloodBank] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BloodBank] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BloodBank] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BloodBank] SET  MULTI_USER 
GO
ALTER DATABASE [BloodBank] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BloodBank] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BloodBank] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BloodBank] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BloodBank] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BloodBank]
GO
/****** Object:  Table [dbo].[BloodRecords]    Script Date: 2/11/2019 10:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BloodRecords](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[Age] [varchar](5) NOT NULL,
	[Gender] [char](2) NOT NULL,
	[BloodGroup] [varchar](5) NOT NULL,
	[Weight] [varchar](5) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Hmb] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BloodRecords] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [BloodBank] SET  READ_WRITE 
GO
