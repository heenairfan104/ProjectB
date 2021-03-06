USE [master]
GO
/****** Object:  Database [ProjectB]    Script Date: 5/3/2019 8:24:58 AM ******/
CREATE DATABASE [ProjectB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProjectB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProjectB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProjectB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProjectB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectB] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ProjectB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ProjectB]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 5/3/2019 8:24:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[TotalMarks] [int] NOT NULL,
	[TotalWeightage] [int] NOT NULL,
 CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AssessmentComponent]    Script Date: 5/3/2019 8:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssessmentComponent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[RubricId] [int] NOT NULL,
	[TotalMarks] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateUpdated] [datetime] NOT NULL,
	[AssessmentId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentRubric] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClassAttendance]    Script Date: 5/3/2019 8:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassAttendance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AttendanceDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ClassAttendance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clo]    Script Date: 5/3/2019 8:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_Clo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lookup]    Script Date: 5/3/2019 8:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lookup](
	[LookupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Lookup] PRIMARY KEY CLUSTERED 
(
	[LookupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rubric]    Script Date: 5/3/2019 8:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rubric](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Details] [nvarchar](max) NOT NULL,
	[CloId] [int] NOT NULL,
 CONSTRAINT [PK_Rubric] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RubricLevel]    Script Date: 5/3/2019 8:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RubricLevel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RubricId] [int] NOT NULL,
	[Details] [nvarchar](max) NOT NULL,
	[MeasurementLevel] [int] NOT NULL,
 CONSTRAINT [PK_RubricLevel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 5/3/2019 8:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[Contact] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[RegistrationNumber] [nvarchar](20) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentAttendance]    Script Date: 5/3/2019 8:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAttendance](
	[AttendanceId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[AttendanceStatus] [int] NOT NULL,
 CONSTRAINT [PK_StudentAttendance] PRIMARY KEY CLUSTERED 
(
	[AttendanceId] ASC,
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentResult]    Script Date: 5/3/2019 8:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentResult](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[AssessmentComponentId] [int] NOT NULL,
	[RubricMeasurementId] [int] NOT NULL,
	[EvaluationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_StudentResult] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[vwAllDataOfClo]    Script Date: 5/3/2019 8:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwAllDataOfClo] AS
select* from Clo
GO
/****** Object:  View [dbo].[vwAllDataOfvieww]    Script Date: 5/3/2019 8:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwAllDataOfvieww] AS 
select* from Rubric where CloId>7
GO
SET IDENTITY_INSERT [dbo].[Assessment] ON 

INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (3, N'lab1', CAST(N'2019-03-26 14:29:32.000' AS DateTime), 10, 5)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (4, N'lab2', CAST(N'2019-03-26 14:32:16.000' AS DateTime), 15, 5)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (5, N'lab3', CAST(N'2019-03-26 19:49:58.000' AS DateTime), 15, 10)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (7, N'lab4', CAST(N'2019-03-27 01:54:13.000' AS DateTime), 10, 5)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (8, N'lab5', CAST(N'2019-03-27 09:59:15.000' AS DateTime), 15, 10)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (9, N'lab6', CAST(N'2019-03-27 10:20:08.000' AS DateTime), 12, 10)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (10, N'lab7', CAST(N'2019-03-27 11:44:17.000' AS DateTime), 10, 10)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (11, N'lab5', CAST(N'2019-03-27 12:10:13.000' AS DateTime), 10, 10)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (12, N'lab8', CAST(N'2019-03-28 20:03:26.000' AS DateTime), 20, 10)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (13, N'lab9', CAST(N'2019-03-28 21:07:22.000' AS DateTime), 12, 5)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (1007, N'lab10', CAST(N'2019-03-29 14:33:51.000' AS DateTime), 8, 4)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (1008, N'lab12', CAST(N'2019-03-31 01:59:46.000' AS DateTime), 15, 10)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (1009, N'lab13', CAST(N'2019-03-31 02:42:53.000' AS DateTime), 10, 5)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (1010, N'lab14', CAST(N'2019-03-31 05:31:47.000' AS DateTime), 7, 2)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (1011, N'lab15', CAST(N'2019-03-31 05:47:22.000' AS DateTime), 30, 15)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (1012, N'LABdb', CAST(N'2019-04-25 13:41:24.000' AS DateTime), 10, 5)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (1013, N'quiz5', CAST(N'2019-04-25 14:07:14.000' AS DateTime), 10, 10)
SET IDENTITY_INSERT [dbo].[Assessment] OFF
SET IDENTITY_INSERT [dbo].[AssessmentComponent] ON 

INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (3, N'question1', 13, 5, CAST(N'2019-03-26 21:50:18.000' AS DateTime), CAST(N'2019-03-26 21:50:18.000' AS DateTime), 3)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (4, N'question2', 13, 3, CAST(N'2019-03-26 22:52:40.000' AS DateTime), CAST(N'2019-03-26 22:52:40.000' AS DateTime), 3)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1004, N'question3', 20, 10, CAST(N'2019-03-27 01:46:06.000' AS DateTime), CAST(N'2019-03-27 01:46:06.000' AS DateTime), 3)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1005, N'ques1', 14, 10, CAST(N'2019-03-27 01:48:08.000' AS DateTime), CAST(N'2019-03-27 01:48:08.000' AS DateTime), 3)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1006, N'Question1', 13, 10, CAST(N'2019-03-27 01:54:46.000' AS DateTime), CAST(N'2019-03-27 01:54:46.000' AS DateTime), 7)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1007, N'ques99', 14, 5, CAST(N'2019-03-27 10:00:14.000' AS DateTime), CAST(N'2019-03-27 10:00:14.000' AS DateTime), 8)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1008, N'ques34', 13, 3, CAST(N'2019-03-27 10:17:13.000' AS DateTime), CAST(N'2019-03-27 10:17:13.000' AS DateTime), 8)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1010, N'q2', 20, 2, CAST(N'2019-03-27 10:22:49.000' AS DateTime), CAST(N'2019-03-27 10:22:49.000' AS DateTime), 9)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1011, N'q2', 13, 3, CAST(N'2019-03-27 10:23:50.000' AS DateTime), CAST(N'2019-03-27 10:23:50.000' AS DateTime), 9)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1012, N'q3', 12, 2, CAST(N'2019-03-27 11:14:29.000' AS DateTime), CAST(N'2019-03-27 11:14:29.000' AS DateTime), 9)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1013, N'q1', 1037, 5, CAST(N'2019-03-27 11:45:02.000' AS DateTime), CAST(N'2019-03-27 11:45:02.000' AS DateTime), 10)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1014, N'q2', 13, 5, CAST(N'2019-03-27 11:47:35.000' AS DateTime), CAST(N'2019-03-27 11:47:35.000' AS DateTime), 10)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1015, N'a', 25, 5, CAST(N'2019-03-27 12:10:42.000' AS DateTime), CAST(N'2019-03-27 12:10:42.000' AS DateTime), 11)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1016, N'questionNo1', 20, 8, CAST(N'2019-03-28 20:04:17.000' AS DateTime), CAST(N'2019-03-28 20:04:17.000' AS DateTime), 12)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1017, N'questionNo2', 13, 2, CAST(N'2019-03-28 20:04:47.000' AS DateTime), CAST(N'2019-03-28 20:04:47.000' AS DateTime), 12)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1018, N' questionNo3', 14, 5, CAST(N'2019-03-28 20:05:16.000' AS DateTime), CAST(N'2019-03-28 20:05:16.000' AS DateTime), 12)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1019, N'q1', 12, 7, CAST(N'2019-03-28 21:07:45.000' AS DateTime), CAST(N'2019-03-28 21:07:45.000' AS DateTime), 13)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1020, N'q2', 1037, 5, CAST(N'2019-03-28 21:08:07.000' AS DateTime), CAST(N'2019-03-28 21:08:07.000' AS DateTime), 13)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2004, N'Q1', 2037, 2, CAST(N'2019-03-29 14:34:28.000' AS DateTime), CAST(N'2019-03-29 14:34:28.000' AS DateTime), 1007)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2005, N'Q2', 1037, 6, CAST(N'2019-03-29 14:34:55.000' AS DateTime), CAST(N'2019-03-29 14:34:55.000' AS DateTime), 1007)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2006, N'Que1', 14, 4, CAST(N'2019-03-31 02:12:57.000' AS DateTime), CAST(N'2019-03-31 02:12:57.000' AS DateTime), 1008)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2007, N'Que2', 1037, 6, CAST(N'2019-03-31 02:13:43.000' AS DateTime), CAST(N'2019-03-31 02:13:43.000' AS DateTime), 1008)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2008, N'Que3', 12, 9, CAST(N'2019-03-31 02:14:25.000' AS DateTime), CAST(N'2019-03-31 02:14:25.000' AS DateTime), 1008)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2009, N'Que4', 20, 1, CAST(N'2019-03-31 02:14:51.000' AS DateTime), CAST(N'2019-03-31 02:14:51.000' AS DateTime), 1008)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2010, N'question1', 3039, 3, CAST(N'2019-03-31 02:43:45.000' AS DateTime), CAST(N'2019-03-31 02:43:45.000' AS DateTime), 1009)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2011, N'question2', 2040, 7, CAST(N'2019-03-31 02:44:15.000' AS DateTime), CAST(N'2019-03-31 02:44:15.000' AS DateTime), 1009)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2012, N'qu1', 3042, 7, CAST(N'2019-03-31 05:32:20.000' AS DateTime), CAST(N'2019-03-31 05:32:20.000' AS DateTime), 1010)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2013, N'qs1', 2037, 10, CAST(N'2019-03-31 05:47:45.000' AS DateTime), CAST(N'2019-03-31 05:47:45.000' AS DateTime), 1011)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2014, N'qs2', 2038, 5, CAST(N'2019-03-31 05:48:08.000' AS DateTime), CAST(N'2019-03-31 05:48:08.000' AS DateTime), 1011)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2015, N'qs3', 3042, 15, CAST(N'2019-03-31 05:48:44.000' AS DateTime), CAST(N'2019-03-31 05:48:44.000' AS DateTime), 1011)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2016, N'q1', 3042, 5, CAST(N'2019-04-25 13:41:51.000' AS DateTime), CAST(N'2019-04-25 13:41:51.000' AS DateTime), 1012)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2017, N' q2', 1037, 5, CAST(N'2019-04-25 13:42:27.000' AS DateTime), CAST(N'2019-04-25 13:42:27.000' AS DateTime), 1012)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2018, N'q1', 3044, 4, CAST(N'2019-04-25 14:07:41.000' AS DateTime), CAST(N'2019-04-25 14:07:41.000' AS DateTime), 1013)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2019, N'q2', 2038, 6, CAST(N'2019-04-25 14:08:18.000' AS DateTime), CAST(N'2019-04-25 14:08:18.000' AS DateTime), 1013)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2020, N'q3', 14, 15, CAST(N'2019-04-25 14:10:04.000' AS DateTime), CAST(N'2019-04-25 14:10:04.000' AS DateTime), 1013)
SET IDENTITY_INSERT [dbo].[AssessmentComponent] OFF
SET IDENTITY_INSERT [dbo].[ClassAttendance] ON 

INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1, CAST(N'2019-03-29 01:14:40.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (2, CAST(N'2019-03-30 02:09:17.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1002, CAST(N'2019-03-30 13:51:12.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1003, CAST(N'2019-03-30 14:02:48.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1004, CAST(N'2019-03-30 14:03:12.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1005, CAST(N'2019-03-31 01:31:20.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1006, CAST(N'2019-03-31 01:31:53.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1007, CAST(N'2019-03-31 02:38:47.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1008, CAST(N'2019-03-31 04:28:42.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1009, CAST(N'2019-03-31 04:29:00.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1010, CAST(N'2019-03-31 05:30:24.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1011, CAST(N'2019-04-25 13:38:00.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1012, CAST(N'2019-04-25 13:50:11.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1013, CAST(N'2019-04-25 13:51:34.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1014, CAST(N'2019-04-25 15:04:25.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1015, CAST(N'2019-04-25 15:05:01.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ClassAttendance] OFF
SET IDENTITY_INSERT [dbo].[Clo] ON 

INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (14, N'clo16', CAST(N'2019-03-14 03:30:28.000' AS DateTime), CAST(N'2019-03-31 02:30:57.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (28, N'CLO71', CAST(N'2019-03-14 12:14:33.000' AS DateTime), CAST(N'2019-03-31 02:30:45.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (38, N' CLO5', CAST(N'2019-03-15 15:25:17.000' AS DateTime), CAST(N'2019-03-15 15:25:17.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (39, N' CLO63', CAST(N'2019-03-15 15:25:26.000' AS DateTime), CAST(N'2019-04-25 13:35:10.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (41, N' CLO81', CAST(N'2019-03-15 15:25:37.000' AS DateTime), CAST(N'2019-03-15 15:27:18.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (43, N'CLO9', CAST(N'2019-03-15 15:28:05.000' AS DateTime), CAST(N'2019-03-15 15:28:05.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (44, N' CLO10', CAST(N'2019-03-15 15:28:12.000' AS DateTime), CAST(N'2019-03-15 15:28:12.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (45, N'clo11', CAST(N'2019-03-15 15:35:01.000' AS DateTime), CAST(N'2019-03-15 15:35:01.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (46, N'CLO52', CAST(N'2019-03-15 16:30:32.000' AS DateTime), CAST(N'2019-03-15 16:30:32.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (47, N'CLO15', CAST(N'2019-03-30 02:11:05.000' AS DateTime), CAST(N'2019-03-30 02:11:05.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (1047, N'CLO16', CAST(N'2019-03-31 02:30:03.000' AS DateTime), CAST(N'2019-03-31 02:30:03.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (1048, N'CLO17', CAST(N'2019-03-31 02:30:17.000' AS DateTime), CAST(N'2019-03-31 02:30:17.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (1049, N'CLO18', CAST(N'2019-03-31 02:31:45.000' AS DateTime), CAST(N'2019-03-31 02:31:45.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (1050, N'CLO19', CAST(N'2019-03-31 02:33:39.000' AS DateTime), CAST(N'2019-03-31 02:33:39.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (1051, N'CLO21', CAST(N'2019-03-31 03:15:35.000' AS DateTime), CAST(N'2019-03-31 03:16:08.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (1052, N'CLO20', CAST(N'2019-03-31 05:29:12.000' AS DateTime), CAST(N'2019-03-31 05:29:12.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (1054, N'clo44', CAST(N'2019-04-25 13:35:18.000' AS DateTime), CAST(N'2019-04-25 13:35:18.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (1055, N' clo654', CAST(N'2019-04-25 13:35:27.000' AS DateTime), CAST(N'2019-04-25 13:35:27.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (1056, N' CLO4', CAST(N'2019-04-25 13:35:35.000' AS DateTime), CAST(N'2019-04-25 13:35:35.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (1057, N'CLO-10', CAST(N'2019-04-25 13:37:18.000' AS DateTime), CAST(N'2019-04-25 13:37:18.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (1058, N' CLO-9', CAST(N'2019-04-25 13:37:25.000' AS DateTime), CAST(N'2019-04-25 13:37:25.000' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (1059, N' CLO-09', CAST(N'2019-04-25 13:37:33.000' AS DateTime), CAST(N'2019-04-25 13:37:33.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Clo] OFF
SET IDENTITY_INSERT [dbo].[Lookup] ON 

INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (1, N'Present', N'ATTENDANCE_STATUS')
INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (2, N'Absent', N'ATTENDANCE_STATUS')
INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (3, N'Leave', N'ATTENDANCE_STATUS')
INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (4, N'Late', N'ATTENDANCE_STATUS')
INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (5, N'Active', N'STUDENT_STATUS')
INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (6, N'InActive', N'STUDENT_STATUS')
SET IDENTITY_INSERT [dbo].[Lookup] OFF
SET IDENTITY_INSERT [dbo].[Rubric] ON 

INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (12, N'gola', 38)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (13, N'design', 38)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (14, N'executiion', 38)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (20, N'exe', 44)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (25, N'implem', 14)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (29, N'implem', 14)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (37, N'implem', 14)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (38, N'implem', 14)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (1037, N'testing', 39)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (2037, N'designing', 39)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (2038, N'execution', 45)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (2040, N'test', 47)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (3039, N'documentation', 1049)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (3042, N'calculation', 1052)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (3044, N'DESIGN', 1049)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (3045, N'mhdxvhjmdv', 14)
SET IDENTITY_INSERT [dbo].[Rubric] OFF
SET IDENTITY_INSERT [dbo].[RubricLevel] ON 

INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (11, 12, N'fair', 2)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (16, 12, N' good', 3)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (18, 29, N' unsatisfactory', 1)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (19, 20, N'good', 3)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (1015, 14, N'bad', 2)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (1016, 1037, N'fair', 2)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (2015, 2037, N'excellent', 1)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (2016, 2038, N'fine', 4)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (3017, 3039, N'good', 3)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (3018, 3042, N'good', 4)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (3020, 12, N'cgcgc', 1)
SET IDENTITY_INSERT [dbo].[RubricLevel] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (50, N'amna', N'alim', N'09876543211', N'am@gmail.com', N'2018-cs-21', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (54, N'heena', N'irfan', N'03456788765', N'heena@gmail.com', N'cs242', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (57, N'aqsa', N'zahid', N'89754434657', N'aqsa@gmail.com', N'1998-GEO-219', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (59, N'hnmna', N'dat', N'23567890987', N'dfg@gmail.com', N'cd3', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (60, N'rahat', N'attique', N'0987432123', N'rahat@gmail.com', N'cs345', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (61, N'huma', N'butt', N'09876543213', N'huma@gmail.com', N'cs4541', 6)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (62, N'fara', N'irfan', N'098764321345', N'htg@hgh.com', N'cs89', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (63, N'mehak', N'abw', N'09876543245', N'mehak@gmail.com', N'med34', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (64, N'rafia', N'khan', N'09875432145', N'rafia@gmail.com', N'cs288', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (65, N'alam', N'ali', N'03456787654', N'alam@gmail.com', N'2015-cs-229', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (66, N'aiman', N'khan', N'02345676789', N'aiman@gmail.com', N'2016-AE-61', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (68, N'as', N'ww', N'12345678945', N'as@gmail.com', N'2018-AR-56', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (69, N'hamna', N'ahmad', N'03456789765', N'hamna@gmail.com', N'2015-CS-231', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (70, N'maryam', N'amna', N'03456789345', N'abc-d@mail.com', N'2011-ME-12', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (71, N'ayita', N'muneer', N'76523456789', N'ayita@hotmail.com', N'2016-CS-299', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (72, N'sibgha', N'taha', N'03215678987', N'sibgha@gmail.com', N'2016-CS-789', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (73, N'zainab', N'ali', N'03214567897', N'zainab@gmail.com', N'2010-GEO-01', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (74, N'Adam', N'ahmad', N'03456789098', N'adam@yahoo.com', N'2015-CS-297', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (75, N'kasib', N'malik', N'2345678998', N'kas@gmail.com', N'2017-ME-234', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (76, N'rabia', N'khan', N'09876543212', N'rabia@gmail.com', N'2011-SE-23', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (77, N'aiman', N'khan', N'09678234567', N'aim@gmail.com', N'2017-ER-62', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (78, N'hyui', N'qwer', N'08676567899', N'hy@gmail.com', N'2018-CE-267', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (79, N'quaid-e-azam', N'jinnah ali', N'02345678921', N'quaid@gmail.com', N'2016-CS-231', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (1076, N'fara', N'irfan', N'09876543213', N'farr123@gmail.com', N'2016ST-251', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (1077, N'hamad', N'ali', N'03456789087', N'ham@gmail.com', N'2018-CRP-23', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (1078, N'saleeha', N'adil', N'03456789345', N'slha34@gmail.com', N'2017-rt-56', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (1079, N'aresha', N'fatima', N'03215678909', N'aresha@gmail.com', N'2015-CS-9', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (1080, N'Eman', N'zainab', N'03456789097', N'eman@hotmail.com', N'2012-AED-298', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (1081, N'amam', N'asd', N'02567890987', N'am@gmail.com', N'2018-SE-32', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (1082, N'eaaman', N'khan', N'09745678943', N'eaaman123@gmail.com', N'2016-ce-21', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (1084, N'amber', N'khan', N'04567893211', N'amber@gmail.com', N'2103-EE-212', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (1085, N'sibgha', N'taha', N'02345677123', N'sibgha@gmail.com', N'de23', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (1086, N'ase', N'gh', N'2356788654', N'fdg@gmail.com', N'2s', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (1087, N'aloo', N'potato', N'435345', N'sfdf@gmai.com', N'ewe3w', 5)
SET IDENTITY_INSERT [dbo].[Student] OFF
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1, 50, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (2, 54, 2)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1002, 57, 4)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1004, 64, 3)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1006, 68, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1007, 1076, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1009, 50, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1010, 1079, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1011, 60, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1011, 1078, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1013, 78, 2)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1015, 1077, 1)
SET IDENTITY_INSERT [dbo].[StudentResult] ON 

INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (1, 54, 1016, 18, CAST(N'2019-03-30 15:27:47.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (2, 57, 1017, 19, CAST(N'2019-03-30 14:51:59.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (3, 59, 1006, 19, CAST(N'2019-03-30 22:31:51.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (4, 59, 1017, 19, CAST(N'2019-03-30 19:27:41.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (5, 61, 1008, 19, CAST(N'2019-03-30 19:39:13.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (6, 61, 1017, 18, CAST(N'2019-03-30 22:27:21.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (7, 61, 1018, 18, CAST(N'2019-03-30 23:18:03.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (8, 63, 2005, 18, CAST(N'2019-03-30 00:07:32.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (9, 64, 1017, 19, CAST(N'2019-03-30 19:33:19.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (10, 65, 1020, 16, CAST(N'2019-03-30 02:23:07.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (11, 66, 1017, 2015, CAST(N'2019-03-30 15:12:04.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (12, 68, 1008, 18, CAST(N'2019-03-30 22:56:35.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (13, 68, 1017, 19, CAST(N'2019-03-30 15:35:17.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (14, 69, 1011, 1016, CAST(N'2019-03-30 14:56:54.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (15, 69, 1017, 19, CAST(N'2019-03-30 19:43:04.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (16, 69, 1019, 2015, CAST(N'2019-03-30 15:26:33.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (17, 69, 2005, 1015, CAST(N'2019-03-30 15:20:07.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (18, 70, 1014, 19, CAST(N'2019-03-30 02:06:58.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (19, 70, 1019, 1016, CAST(N'2019-03-30 15:17:43.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (20, 70, 2005, 1015, CAST(N'2019-03-30 15:23:00.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (21, 71, 1008, 1015, CAST(N'2019-03-30 22:44:39.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (22, 71, 1018, 2015, CAST(N'2019-03-30 00:11:46.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (23, 71, 1019, 1016, CAST(N'2019-03-30 02:01:21.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (24, 71, 2005, 18, CAST(N'2019-03-30 14:50:56.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (25, 72, 1007, 16, CAST(N'2019-03-30 22:53:35.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (26, 72, 1017, 2016, CAST(N'2019-03-30 01:58:57.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (27, 72, 1018, 19, CAST(N'2019-03-30 02:38:34.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (28, 72, 1019, 16, CAST(N'2019-03-30 15:16:40.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (29, 72, 1020, 19, CAST(N'2019-03-30 23:23:45.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (30, 72, 2005, 2016, CAST(N'2019-03-30 15:04:52.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (31, 72, 2008, 1015, CAST(N'2019-03-31 04:38:09.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (32, 73, 1014, 18, CAST(N'2019-03-30 15:36:44.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (33, 73, 1019, 2015, CAST(N'2019-03-30 15:13:22.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (34, 73, 1020, 18, CAST(N'2019-03-30 15:37:58.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (35, 73, 2005, 2015, CAST(N'2019-03-30 00:14:00.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (36, 74, 1019, 19, CAST(N'2019-03-30 15:15:03.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (37, 74, 1020, 2016, CAST(N'2019-03-30 00:08:14.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (38, 74, 2004, 1015, CAST(N'2019-03-30 22:25:46.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (39, 74, 2005, 18, CAST(N'2019-03-30 23:22:42.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (40, 75, 1017, 19, CAST(N'2019-03-30 22:46:11.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (41, 75, 1018, 16, CAST(N'2019-03-30 13:55:22.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (42, 75, 1020, 18, CAST(N'2019-03-30 14:38:47.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (43, 76, 1013, 1016, CAST(N'2019-03-30 19:29:56.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (44, 76, 1014, 1015, CAST(N'2019-03-30 02:34:10.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (45, 76, 1019, 19, CAST(N'2019-03-30 02:40:10.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (46, 76, 1020, 19, CAST(N'2019-03-30 15:24:17.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (47, 76, 2004, 1015, CAST(N'2019-03-30 14:51:32.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (48, 76, 2011, 1016, CAST(N'2019-03-31 04:50:11.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (49, 77, 1013, 19, CAST(N'2019-03-30 23:00:40.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (50, 77, 1016, 2016, CAST(N'2019-03-30 14:47:02.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (51, 77, 2004, 16, CAST(N'2019-03-31 04:38:52.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (52, 77, 2010, 1015, CAST(N'2019-03-31 04:47:31.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (53, 77, 2011, 19, CAST(N'2019-03-31 05:35:36.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (54, 78, 2005, 2016, CAST(N'2019-03-30 02:35:39.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (55, 79, 1006, 1016, CAST(N'2019-03-31 04:43:48.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (56, 79, 1008, 1015, CAST(N'2019-03-31 04:52:14.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (57, 79, 1015, 18, CAST(N'2019-03-30 14:25:47.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (58, 79, 2005, 1015, CAST(N'2019-03-31 03:53:47.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (59, 79, 2008, 1016, CAST(N'2019-03-31 04:39:45.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (60, 79, 2011, 1015, CAST(N'2019-03-31 03:44:32.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (61, 1076, 1012, 18, CAST(N'2019-03-31 04:41:47.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (62, 1076, 1020, 1016, CAST(N'2019-03-31 03:59:12.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (63, 1076, 2006, 18, CAST(N'2019-03-31 02:47:43.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (64, 1076, 2008, 19, CAST(N'2019-03-31 02:45:33.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (65, 1076, 2011, 3017, CAST(N'2019-03-31 02:46:34.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (66, 1077, 2012, 3018, CAST(N'2019-03-31 05:32:55.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (67, 1079, 2012, 2016, CAST(N'2019-03-31 05:33:52.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (68, 78, 2005, 2016, CAST(N'2019-03-31 05:46:36.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (69, 78, 2005, 2016, CAST(N'2019-03-31 05:46:58.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (70, 63, 2015, 3017, CAST(N'2019-03-31 05:49:13.000' AS DateTime))
INSERT [dbo].[StudentResult] ([Id], [StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (71, 1081, 2017, 2016, CAST(N'2019-04-25 13:43:18.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[StudentResult] OFF
ALTER TABLE [dbo].[AssessmentComponent]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentComponent_Assessment] FOREIGN KEY([AssessmentId])
REFERENCES [dbo].[Assessment] ([Id])
GO
ALTER TABLE [dbo].[AssessmentComponent] CHECK CONSTRAINT [FK_AssessmentComponent_Assessment]
GO
ALTER TABLE [dbo].[AssessmentComponent]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentComponent_Rubric] FOREIGN KEY([RubricId])
REFERENCES [dbo].[Rubric] ([Id])
GO
ALTER TABLE [dbo].[AssessmentComponent] CHECK CONSTRAINT [FK_AssessmentComponent_Rubric]
GO
ALTER TABLE [dbo].[Rubric]  WITH CHECK ADD  CONSTRAINT [FK_Rubric_Clo] FOREIGN KEY([CloId])
REFERENCES [dbo].[Clo] ([Id])
GO
ALTER TABLE [dbo].[Rubric] CHECK CONSTRAINT [FK_Rubric_Clo]
GO
ALTER TABLE [dbo].[RubricLevel]  WITH CHECK ADD  CONSTRAINT [FK_RubricLevel_Rubric] FOREIGN KEY([RubricId])
REFERENCES [dbo].[Rubric] ([Id])
GO
ALTER TABLE [dbo].[RubricLevel] CHECK CONSTRAINT [FK_RubricLevel_Rubric]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Lookup] FOREIGN KEY([Status])
REFERENCES [dbo].[Lookup] ([LookupId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Lookup]
GO
ALTER TABLE [dbo].[StudentAttendance]  WITH CHECK ADD  CONSTRAINT [FK_StudentAttendance_ClassAttendance] FOREIGN KEY([AttendanceId])
REFERENCES [dbo].[ClassAttendance] ([Id])
GO
ALTER TABLE [dbo].[StudentAttendance] CHECK CONSTRAINT [FK_StudentAttendance_ClassAttendance]
GO
ALTER TABLE [dbo].[StudentAttendance]  WITH CHECK ADD  CONSTRAINT [FK_StudentAttendance_Lookup] FOREIGN KEY([AttendanceStatus])
REFERENCES [dbo].[Lookup] ([LookupId])
GO
ALTER TABLE [dbo].[StudentAttendance] CHECK CONSTRAINT [FK_StudentAttendance_Lookup]
GO
ALTER TABLE [dbo].[StudentAttendance]  WITH CHECK ADD  CONSTRAINT [FK_StudentAttendance_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[StudentAttendance] CHECK CONSTRAINT [FK_StudentAttendance_Student]
GO
ALTER TABLE [dbo].[StudentResult]  WITH CHECK ADD  CONSTRAINT [FK_StudentResult_AssessmentComponent] FOREIGN KEY([AssessmentComponentId])
REFERENCES [dbo].[AssessmentComponent] ([Id])
GO
ALTER TABLE [dbo].[StudentResult] CHECK CONSTRAINT [FK_StudentResult_AssessmentComponent]
GO
ALTER TABLE [dbo].[StudentResult]  WITH CHECK ADD  CONSTRAINT [FK_StudentResult_RubricLevel] FOREIGN KEY([RubricMeasurementId])
REFERENCES [dbo].[RubricLevel] ([Id])
GO
ALTER TABLE [dbo].[StudentResult] CHECK CONSTRAINT [FK_StudentResult_RubricLevel]
GO
ALTER TABLE [dbo].[StudentResult]  WITH CHECK ADD  CONSTRAINT [FK_StudentResult_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[StudentResult] CHECK CONSTRAINT [FK_StudentResult_Student]
GO
USE [master]
GO
ALTER DATABASE [ProjectB] SET  READ_WRITE 
GO
