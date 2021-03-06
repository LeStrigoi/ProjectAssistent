USE [master]
GO
/****** Object:  Database [ProjectAssistantDb]    Script Date: 5/28/2020 3:43:19 PM ******/
CREATE DATABASE [ProjectAssistantDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectAssistantDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjectAssistantDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectAssistantDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjectAssistantDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProjectAssistantDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectAssistantDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectAssistantDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectAssistantDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectAssistantDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectAssistantDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectAssistantDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectAssistantDb] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectAssistantDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectAssistantDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectAssistantDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectAssistantDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectAssistantDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectAssistantDb] SET QUERY_STORE = OFF
GO
USE [ProjectAssistantDb]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 5/28/2020 3:43:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 5/28/2020 3:43:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[ProjectId] [int] NOT NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/28/2020 3:43:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Role] [nvarchar](50) DEFAULT 'Developer',
	[ProjectId] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([Id])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Project]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Project]
GO
USE [master]
GO
ALTER DATABASE [ProjectAssistantDb] SET  READ_WRITE 
GO

insert into [ProjectAssistantDb].[dbo].[Project] Values ('1', 'AgriCult','Design agricultural machinary');
insert into [ProjectAssistantDb].[dbo].[Project] Values ('2', 'GeoLogica','Provide geolocation for earthquackes');
insert into [ProjectAssistantDb].[dbo].[Project] Values ('3', 'UnClear','Add blurred texture for public images of suspects');

insert into [ProjectAssistantDb].[dbo].[User] Values ('1', 'Laura Appleseed','Mathematician','2');
insert into [ProjectAssistantDb].[dbo].[User] Values ('3', 'Adrian Appleseed','Engineer',null);
insert into [ProjectAssistantDb].[dbo].[User] Values ('7', 'Nora Vanticel','Mechanic','1');

insert into [ProjectAssistantDb].[dbo].[Task] values ('12','Fuel','Choose fuel','1','7');
insert into [ProjectAssistantDb].[dbo].[Task] values ('24','Mapping','Map devices','2','1');
insert into [ProjectAssistantDb].[dbo].[Task] values ('28','Signalling','Choose frequency','2','3');
