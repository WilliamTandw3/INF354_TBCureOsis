USE [master]
GO
/****** Object:  Database [CureOasis]    Script Date: 2019/04/09 09:23:01 ******/
CREATE DATABASE [CureOasis]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CureOasis', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQL14\MSSQL\DATA\CureOasis.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CureOasis_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQL14\MSSQL\DATA\CureOasis_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CureOasis] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CureOasis].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CureOasis] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CureOasis] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CureOasis] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CureOasis] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CureOasis] SET ARITHABORT OFF 
GO
ALTER DATABASE [CureOasis] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CureOasis] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CureOasis] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CureOasis] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CureOasis] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CureOasis] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CureOasis] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CureOasis] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CureOasis] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CureOasis] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CureOasis] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CureOasis] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CureOasis] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CureOasis] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CureOasis] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CureOasis] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CureOasis] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CureOasis] SET RECOVERY FULL 
GO
ALTER DATABASE [CureOasis] SET  MULTI_USER 
GO
ALTER DATABASE [CureOasis] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CureOasis] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CureOasis] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CureOasis] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CureOasis] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CureOasis', N'ON'
GO
USE [CureOasis]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 2019/04/09 09:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[Address_ID] [int] NOT NULL,
	[Area_Code] [varchar](4) NOT NULL,
	[City] [varchar](50) NULL,
	[Suburb] [varchar](50) NULL,
	[StreetNo] [int] NULL,
	[PO_Box_Code] [varchar](50) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Address_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Health_Official]    Script Date: 2019/04/09 09:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Health_Official](
	[Health_Official_ID] [int] NOT NULL,
	[HFirstname] [varchar](50) NOT NULL,
	[HSurname] [varchar](50) NOT NULL,
	[License_ID] [int] NOT NULL,
	[CellNo] [varchar](50) NOT NULL,
	[Username] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Health_Official] PRIMARY KEY CLUSTERED 
(
	[Health_Official_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 2019/04/09 09:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[Username] [varchar](10) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[User_Access_ID] [int] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medicine]    Script Date: 2019/04/09 09:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medicine](
	[medicineID] [int] NOT NULL,
	[medicineName] [varchar](50) NOT NULL,
	[medicineDescription] [varchar](50) NOT NULL,
	[estimatePrice] [float] NOT NULL,
	[typeOfTbID] [int] NOT NULL,
 CONSTRAINT [PK_Medicine] PRIMARY KEY CLUSTERED 
(
	[medicineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Practitioner]    Script Date: 2019/04/09 09:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Practitioner](
	[LicenseID] [int] NOT NULL,
	[Title_ID] [int] NOT NULL,
	[Doctor_ID] [int] NOT NULL,
	[Doc_Name] [varchar](50) NULL,
	[DocSurname] [varchar](50) NULL,
	[Practice_ID] [varchar](50) NULL,
 CONSTRAINT [PK_Practitioner] PRIMARY KEY CLUSTERED 
(
	[LicenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_Documents]    Script Date: 2019/04/09 09:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_Documents](
	[Doc_ID] [int] NOT NULL,
	[Health_Official_ID] [int] NOT NULL,
	[TB_Type_ID] [int] NOT NULL,
	[Document_Title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TB_Documents] PRIMARY KEY CLUSTERED 
(
	[Doc_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_Type]    Script Date: 2019/04/09 09:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_Type](
	[TB_Type_ID] [int] NOT NULL,
	[TB_Type] [varchar](50) NULL,
 CONSTRAINT [PK_TB_Type] PRIMARY KEY CLUSTERED 
(
	[TB_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Title]    Script Date: 2019/04/09 09:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Title](
	[Title_ID] [int] NOT NULL,
	[Title] [nchar](10) NULL,
 CONSTRAINT [PK_Title] PRIMARY KEY CLUSTERED 
(
	[Title_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 2019/04/09 09:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[User_ID] [int] NOT NULL,
	[Firstname] [varchar](25) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Cellphone] [varchar](50) NOT NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[Username] [varchar](10) NOT NULL,
	[Address_ID] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_Access]    Script Date: 2019/04/09 09:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Access](
	[User_Access_ID] [int] NOT NULL,
	[User_Type_ID] [int] NOT NULL,
 CONSTRAINT [PK_User_Access] PRIMARY KEY CLUSTERED 
(
	[User_Access_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Type]    Script Date: 2019/04/09 09:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Type](
	[User_Type_ID] [int] NOT NULL,
	[User_Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User_Type] PRIMARY KEY CLUSTERED 
(
	[User_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Health_Official]  WITH CHECK ADD  CONSTRAINT [FK_Health_Official_Login] FOREIGN KEY([Username])
REFERENCES [dbo].[Login] ([Username])
GO
ALTER TABLE [dbo].[Health_Official] CHECK CONSTRAINT [FK_Health_Official_Login]
GO
ALTER TABLE [dbo].[Health_Official]  WITH CHECK ADD  CONSTRAINT [FK_Health_Official_Practitioner] FOREIGN KEY([License_ID])
REFERENCES [dbo].[Practitioner] ([LicenseID])
GO
ALTER TABLE [dbo].[Health_Official] CHECK CONSTRAINT [FK_Health_Official_Practitioner]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_User_Access] FOREIGN KEY([User_Access_ID])
REFERENCES [dbo].[User_Access] ([User_Access_ID])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_User_Access]
GO
ALTER TABLE [dbo].[Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Medicine_TB_Type] FOREIGN KEY([typeOfTbID])
REFERENCES [dbo].[TB_Type] ([TB_Type_ID])
GO
ALTER TABLE [dbo].[Medicine] CHECK CONSTRAINT [FK_Medicine_TB_Type]
GO
ALTER TABLE [dbo].[Practitioner]  WITH CHECK ADD  CONSTRAINT [FK_Practitioner_Title] FOREIGN KEY([Title_ID])
REFERENCES [dbo].[Title] ([Title_ID])
GO
ALTER TABLE [dbo].[Practitioner] CHECK CONSTRAINT [FK_Practitioner_Title]
GO
ALTER TABLE [dbo].[TB_Documents]  WITH CHECK ADD  CONSTRAINT [FK_TB_Documents_Health_Official] FOREIGN KEY([Health_Official_ID])
REFERENCES [dbo].[Health_Official] ([Health_Official_ID])
GO
ALTER TABLE [dbo].[TB_Documents] CHECK CONSTRAINT [FK_TB_Documents_Health_Official]
GO
ALTER TABLE [dbo].[TB_Documents]  WITH CHECK ADD  CONSTRAINT [FK_TB_Documents_TB_Type] FOREIGN KEY([TB_Type_ID])
REFERENCES [dbo].[TB_Type] ([TB_Type_ID])
GO
ALTER TABLE [dbo].[TB_Documents] CHECK CONSTRAINT [FK_TB_Documents_TB_Type]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Address] FOREIGN KEY([Address_ID])
REFERENCES [dbo].[Address] ([Address_ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Address]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Login] FOREIGN KEY([Username])
REFERENCES [dbo].[Login] ([Username])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Login]
GO
ALTER TABLE [dbo].[User_Access]  WITH CHECK ADD  CONSTRAINT [FK_User_Access_User_Type] FOREIGN KEY([User_Type_ID])
REFERENCES [dbo].[User_Type] ([User_Type_ID])
GO
ALTER TABLE [dbo].[User_Access] CHECK CONSTRAINT [FK_User_Access_User_Type]
GO
USE [master]
GO
ALTER DATABASE [CureOasis] SET  READ_WRITE 
GO
