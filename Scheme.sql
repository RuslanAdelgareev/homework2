USE [master]
GO
/****** Object:  Database [homeWork2]    Script Date: 08.09.2023 1:37:29 ******/
CREATE DATABASE [homeWork2]

USE [homeWork2]
GO
/****** Object:  Table [dbo].[Record]    Script Date: 08.09.2023 1:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Record](
	[IdRecord] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](200) NULL,
	[DateBeginingService] [datetime] NULL,
	[ClientMiddleName] [nvarchar](200) NULL,
	[IdClient] [int] NULL,
	[IdService] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRecord] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Record$]    Script Date: 08.09.2023 1:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Record$](
	[IdRecord] [float] NULL,
	[ServiceName] [nvarchar](255) NULL,
	[DataBeginingService] [datetime] NULL,
	[Client] [nvarchar](255) NULL,
	[IdClient] [float] NULL,
	[IdService] [float] NULL,
	[F7] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 08.09.2023 1:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[IdService] [int] IDENTITY(1,1) NOT NULL,
	[NameService] [nvarchar](200) NULL,
	[MainPhoto] [nvarchar](200) NULL,
	[Duration] [int] NULL,
	[Price] [money] NULL,
	[Discount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdService] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service$]    Script Date: 08.09.2023 1:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service$](
	[NameService] [nvarchar](255) NULL,
	[IdService] [float] NULL,
	[MainPhoto] [nvarchar](255) NULL,
	[Duration] [float] NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 08.09.2023 1:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[MiddleName] [nvarchar](200) NULL,
	[Name] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
	[Gender] [nvarchar](10) NULL,
	[Telephone] [varchar](20) NULL,
	[BirthDay] [date] NULL,
	[Email] [varchar](50) NULL,
	[DateRegistration] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User$]    Script Date: 08.09.2023 1:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User$](
	[MiddleName] [nvarchar](255) NULL,
	[IdUser] [float] NULL,
	[Name] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[Gender] [nvarchar](255) NULL,
	[Telephone] [nvarchar](255) NULL,
	[DateOfBitrth] [datetime] NULL,
	[Email] [nvarchar](255) NULL,
	[DateOfRegistration] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Record]  WITH CHECK ADD FOREIGN KEY([IdClient])
REFERENCES [dbo].[User] ([IdUser])
GO
ALTER TABLE [dbo].[Record]  WITH CHECK ADD FOREIGN KEY([IdService])
REFERENCES [dbo].[Service] ([IdService])
GO
USE [master]
GO
ALTER DATABASE [homeWork2] SET  READ_WRITE 
GO
