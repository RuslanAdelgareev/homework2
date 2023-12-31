USE [master]
GO
/****** Object:  Database [homeWork2]    Script Date: 08.09.2023 1:37:55 ******/
CREATE DATABASE [homeWork2]

USE [homeWork2]
GO
/****** Object:  Table [dbo].[Record]    Script Date: 08.09.2023 1:37:55 ******/
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
/****** Object:  Table [dbo].[Record$]    Script Date: 08.09.2023 1:37:55 ******/
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
/****** Object:  Table [dbo].[Service]    Script Date: 08.09.2023 1:37:55 ******/
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
/****** Object:  Table [dbo].[Service$]    Script Date: 08.09.2023 1:37:55 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 08.09.2023 1:37:55 ******/
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
/****** Object:  Table [dbo].[User$]    Script Date: 08.09.2023 1:37:55 ******/
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
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (1, N'Урок в группе французского языка для школьников', CAST(N'2019-11-16T11:20:00.000' AS DateTime), N'Суворова', 49, 10, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (2, N'Индивидуальный онлайн-урок немецкого языка по Skype', CAST(N'2019-01-11T18:10:00.000' AS DateTime), N'Колобова', 37, 41, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (3, N'Киноклуб итальянского языка для студентов', CAST(N'2019-12-01T14:40:00.000' AS DateTime), N'Колобова', 37, 19, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (4, N'Интенсивный онлайн-курс португальского языка для компаний по Skype', CAST(N'2019-02-11T13:30:00.000' AS DateTime), N'Колобова', 37, 28, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (5, N'Урок в группе китайского языка для взрослых', CAST(N'2019-09-10T18:20:00.000' AS DateTime), N'Селиверстов', 20, 30, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (6, N'Урок в группе китайского языка для студентов', CAST(N'2019-02-12T19:40:00.000' AS DateTime), N'Куликова', 48, 26, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (7, N'Занятие с репетитором-носителем французского языка', CAST(N'2019-04-04T09:10:00.000' AS DateTime), N'Бобылёв', 24, 92, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (8, N'Урок в группе испанского языка для взрослых', CAST(N'2019-05-15T09:20:00.000' AS DateTime), N'Киселёв', 21, 20, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (9, N'Урок в группе немецкого языка для школьников', CAST(N'2019-01-16T14:20:00.000' AS DateTime), N'Комиссарова', 16, 52, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (10, N'Урок в группе английского языка для взрослых', CAST(N'2019-01-16T09:00:00.000' AS DateTime), N'Бобров', 30, 34, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (11, N'Урок в группе немецкого языка для школьников', CAST(N'2019-03-15T10:50:00.000' AS DateTime), N'Казаков', 3, 52, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (12, N'Индивидуальный онлайн-урок немецкого языка по Skype', CAST(N'2019-01-31T12:00:00.000' AS DateTime), N'Андреева', 26, 41, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (13, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', CAST(N'2019-11-19T15:50:00.000' AS DateTime), N'Андреев', 6, 64, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (14, N'Подготовка к экзамену TOEFL', CAST(N'2019-01-10T08:30:00.000' AS DateTime), N'Калашников', 33, 32, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (15, N'Урок в группе немецкого языка для школьников', CAST(N'2019-04-29T15:00:00.000' AS DateTime), N'Федотова', 35, 52, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (16, N'Киноклуб немецкого языка для детей', CAST(N'2019-10-12T08:50:00.000' AS DateTime), N'Агафонов', 43, 80, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (17, N'Урок в группе китайского языка для школьников', CAST(N'2019-02-13T18:00:00.000' AS DateTime), N'Куликова', 48, 48, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (18, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', CAST(N'2019-02-01T18:00:00.000' AS DateTime), N'Калашников', 33, 64, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (19, N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний', CAST(N'2019-11-12T18:50:00.000' AS DateTime), N'Бобров', 30, 63, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (20, N'Киноклуб португальского языка для детей', CAST(N'2019-01-11T12:50:00.000' AS DateTime), N'Большаков', 17, 83, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (21, N'Киноклуб португальского языка для студентов', CAST(N'2019-03-23T19:50:00.000' AS DateTime), N'Александров', 9, 50, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (22, N'Киноклуб французского языка для взрослых', CAST(N'2019-06-23T08:00:00.000' AS DateTime), N'Агафонов', 43, 12, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (23, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', CAST(N'2019-05-25T17:10:00.000' AS DateTime), N'Некрасов', 38, 18, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (24, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', CAST(N'2019-02-18T18:20:00.000' AS DateTime), N'Большаков', 17, 67, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (25, N'Киноклуб немецкого языка для взрослых', CAST(N'2019-07-17T08:20:00.000' AS DateTime), N'Федотова', 35, 13, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (26, N'Занятие с репетитором-носителем французского языка', CAST(N'2019-08-06T16:50:00.000' AS DateTime), N'Федотова', 35, 92, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (27, N'Киноклуб итальянского языка для детей', CAST(N'2019-12-14T08:40:00.000' AS DateTime), N'Васильев', 1, 77, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (28, N'Подготовка к экзамену IELTS Speaking Club', CAST(N'2019-06-28T14:20:00.000' AS DateTime), N'Зуев', 22, 76, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (29, N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний', CAST(N'2019-06-06T19:20:00.000' AS DateTime), N'Куликова', 48, 97, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (30, N'Киноклуб португальского языка для студентов', CAST(N'2019-06-07T17:20:00.000' AS DateTime), N'Бобылёв', 24, 50, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (31, N'Урок в группе английского языка для школьников', CAST(N'2019-04-30T18:10:00.000' AS DateTime), N'Воронова', 46, 23, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (32, N'Киноклуб португальского языка для детей', CAST(N'2019-08-30T11:40:00.000' AS DateTime), N'Андреев', 6, 83, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (33, N'Урок в группе испанского языка для взрослых', CAST(N'2019-05-08T14:10:00.000' AS DateTime), N'Ефремов', 25, 20, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (34, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', CAST(N'2019-10-27T16:20:00.000' AS DateTime), N'Беляева', 42, 66, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (35, N'Киноклуб немецкого языка для взрослых', CAST(N'2019-01-05T08:40:00.000' AS DateTime), N'Бобров', 30, 13, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (36, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', CAST(N'2019-03-04T17:20:00.000' AS DateTime), N'Зуев', 22, 27, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (37, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', CAST(N'2019-09-29T13:40:00.000' AS DateTime), N'Егорова', 50, 69, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (38, N'Киноклуб китайского языка для студентов', CAST(N'2019-01-22T10:50:00.000' AS DateTime), N'Ефимова', 27, 3, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (39, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', CAST(N'2019-12-19T19:30:00.000' AS DateTime), N'Бобров', 30, 64, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (40, N'Подготовка к экзамену ACT', CAST(N'2019-11-15T17:50:00.000' AS DateTime), N'Гущина', 32, 29, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (41, N'Индивидуальный урок французского языка с преподавателем-носителем языка', CAST(N'2019-07-04T17:10:00.000' AS DateTime), N'Баранова', 12, 9, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (42, N'Индивидуальный онлайн-урок немецкого языка по Skype', CAST(N'2019-08-06T11:50:00.000' AS DateTime), N'Киселёв', 21, 41, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (43, N'Киноклуб немецкого языка для детей', CAST(N'2019-11-09T13:00:00.000' AS DateTime), N'Федотова', 35, 80, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (44, N'Индивидуальный урок английского языка с преподавателем-носителем языка', CAST(N'2019-02-16T18:50:00.000' AS DateTime), N'Бобылёв', 24, 62, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (45, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', CAST(N'2019-03-03T17:20:00.000' AS DateTime), N'Ершов', 23, 69, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (46, N'Урок в группе английского языка для школьников', CAST(N'2019-05-22T16:10:00.000' AS DateTime), N'Степанова', 13, 23, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (47, N'Урок в группе французского языка для школьников', CAST(N'2019-07-31T18:10:00.000' AS DateTime), N'Кузьмина', 36, 10, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (48, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', CAST(N'2019-08-29T19:00:00.000' AS DateTime), N'Комиссарова', 16, 27, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (49, N'Киноклуб немецкого языка для взрослых', CAST(N'2019-10-02T10:10:00.000' AS DateTime), N'Киселёв', 21, 13, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (50, N'Индивидуальный онлайн-урок немецкого языка по Skype', CAST(N'2019-03-16T11:30:00.000' AS DateTime), N'Костина', 8, 41, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (51, N'Подготовка к экзамену ACT', CAST(N'2019-08-27T11:40:00.000' AS DateTime), N'Агафонов', 43, 29, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (52, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', CAST(N'2019-06-13T11:30:00.000' AS DateTime), N'Абрамов', 18, 66, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (53, N'Киноклуб немецкого языка для детей', CAST(N'2019-08-18T16:00:00.000' AS DateTime), N'Попова', 4, 80, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (54, N'Урок в группе английского языка для взрослых', CAST(N'2019-12-26T16:30:00.000' AS DateTime), N'Горбачёв', 14, 34, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (55, N'Урок в группе итальянского языка для взрослых', CAST(N'2019-11-27T18:50:00.000' AS DateTime), N'Морозов', 11, 7, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (56, N'Киноклуб немецкого языка для взрослых', CAST(N'2019-09-06T19:20:00.000' AS DateTime), N'Медведев', 47, 13, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (57, N'Занятие с русскоязычным репетитором английского языка', CAST(N'2019-09-24T13:40:00.000' AS DateTime), N'Воронова', 46, 98, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (58, N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', CAST(N'2019-03-01T11:50:00.000' AS DateTime), N'Гущина', 32, 89, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (59, N'Урок в группе итальянского языка для взрослых', CAST(N'2019-09-28T10:00:00.000' AS DateTime), N'Турова', 5, 7, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (60, N'Занятие с репетитором-носителем французского языка', CAST(N'2019-03-20T10:40:00.000' AS DateTime), N'Волков', 15, 92, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (61, N'Киноклуб немецкого языка для детей', CAST(N'2019-11-27T11:30:00.000' AS DateTime), N'Корнилова', 10, 80, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (62, N'Занятие с репетитором-носителем немецкого языка', CAST(N'2019-01-23T18:30:00.000' AS DateTime), N'Казаков', 3, 60, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (63, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', CAST(N'2019-10-21T10:20:00.000' AS DateTime), N'Ефимова', 27, 27, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (64, N'Занятие с репетитором-носителем французского языка', CAST(N'2019-08-11T12:50:00.000' AS DateTime), N'Голубев', 28, 92, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (65, N'Киноклуб немецкого языка для взрослых', CAST(N'2019-01-03T14:40:00.000' AS DateTime), N'Орлова', 7, 13, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (66, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', CAST(N'2019-12-31T08:30:00.000' AS DateTime), N'Калашников', 33, 64, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (67, N'Урок в группе испанского языка для взрослых', CAST(N'2019-08-29T10:10:00.000' AS DateTime), N'Калинин', 41, 20, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (68, N'Киноклуб итальянского языка для студентов', CAST(N'2019-01-03T18:50:00.000' AS DateTime), N'Степанова', 13, 19, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (69, N'Урок в группе китайского языка для взрослых', CAST(N'2019-04-09T11:10:00.000' AS DateTime), N'Горбачёв', 14, 30, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (70, N'Киноклуб французского языка для взрослых', CAST(N'2019-12-31T19:10:00.000' AS DateTime), N'Ефимова', 27, 12, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (71, N'Киноклуб итальянского языка для студентов', CAST(N'2019-10-17T13:30:00.000' AS DateTime), N'Лазарев', 2, 19, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (72, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', CAST(N'2019-05-17T13:30:00.000' AS DateTime), N'Воронова', 46, 69, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (73, N'Урок в группе японского языка для школьников', CAST(N'2019-11-23T18:40:00.000' AS DateTime), N'Морозов', 11, 14, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (74, N'Киноклуб португальского языка для детей', CAST(N'2019-07-10T15:30:00.000' AS DateTime), N'Корнилова', 10, 83, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (75, N'Занятие с русскоязычным репетитором японского языка', CAST(N'2019-06-09T13:40:00.000' AS DateTime), N'Колобова', 37, 40, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (76, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', CAST(N'2019-01-09T10:20:00.000' AS DateTime), N'Ершов', 23, 69, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (77, N'Занятие с репетитором-носителем немецкого языка', CAST(N'2019-08-15T18:30:00.000' AS DateTime), N'Лазарев', 2, 60, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (78, N'Киноклуб португальского языка для детей', CAST(N'2019-07-15T14:10:00.000' AS DateTime), N'Евсеев', 29, 83, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (79, N'Урок в группе японского языка для школьников', CAST(N'2019-12-31T18:00:00.000' AS DateTime), N'Киселёв', 21, 14, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (80, N'Урок в группе итальянского языка для взрослых', CAST(N'2019-12-22T09:20:00.000' AS DateTime), N'Гущина', 32, 7, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (81, N'Киноклуб китайского языка для детей', CAST(N'2019-12-28T16:00:00.000' AS DateTime), N'Горбачёв', 14, 51, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (82, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', CAST(N'2019-06-26T10:10:00.000' AS DateTime), N'Калашников', 33, 69, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (83, N'Урок в группе французского языка для школьников', CAST(N'2019-04-29T12:40:00.000' AS DateTime), N'Корнилова', 10, 10, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (84, N'Урок в группе французского языка для школьников', CAST(N'2019-04-13T09:00:00.000' AS DateTime), N'Куликова', 48, 10, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (85, N'Урок в группе китайского языка для школьников', CAST(N'2019-01-05T16:00:00.000' AS DateTime), N'Ершов', 23, 48, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (86, N'Занятие с русскоязычным репетитором японского языка', CAST(N'2019-03-25T18:20:00.000' AS DateTime), N'Турова', 5, 40, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (87, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', CAST(N'2019-11-09T18:50:00.000' AS DateTime), N'Евсеев', 29, 18, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (88, N'Индивидуальный онлайн-урок немецкого языка по Skype', CAST(N'2019-04-07T10:40:00.000' AS DateTime), N'Игнатов', 31, 41, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (89, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', CAST(N'2019-11-11T18:50:00.000' AS DateTime), N'Суворова', 49, 67, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (90, N'Киноклуб немецкого языка для взрослых', CAST(N'2019-01-06T15:00:00.000' AS DateTime), N'Дмитриева', 34, 13, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (91, N'Урок в группе китайского языка для школьников', CAST(N'2019-08-20T19:10:00.000' AS DateTime), N'Попова', 4, 48, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (92, N'Урок в группе китайского языка для школьников', CAST(N'2019-04-16T13:20:00.000' AS DateTime), N'Блинов', 45, 48, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (93, N'Урок в группе немецкого языка для школьников', CAST(N'2019-12-22T15:10:00.000' AS DateTime), N'Ефимова', 27, 52, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (94, N'Киноклуб португальского языка для детей', CAST(N'2019-01-22T16:50:00.000' AS DateTime), N'Блохин', 40, 83, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (95, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', CAST(N'2019-09-04T08:10:00.000' AS DateTime), N'Костина', 8, 18, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (96, N'Киноклуб итальянского языка для детей', CAST(N'2019-01-01T14:50:00.000' AS DateTime), N'Калинин', 41, 77, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (97, N'Урок в группе японского языка для школьников', CAST(N'2019-01-29T16:30:00.000' AS DateTime), N'Федотова', 35, 14, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (98, N'Киноклуб английского языка для студентов', CAST(N'2019-07-06T11:30:00.000' AS DateTime), N'Блохин', 40, 49, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (99, N'Занятие с русскоязычным репетитором английского языка', CAST(N'2019-12-05T10:20:00.000' AS DateTime), N'Голубев', 28, 98, NULL)
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (100, N'Урок в группе китайского языка для школьников', CAST(N'2019-04-05T13:20:00.000' AS DateTime), N'Селиверстов', 20, 48, NULL)
GO
INSERT [dbo].[Record$] ([IdRecord], [ServiceName], [DataBeginingService], [Client], [IdClient], [IdService], [F7]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Занятие с репетитором-носителем китайского языка', 1, N'Китайский язык.jpg', 120, 1950, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный урок немецкого языка с преподавателем-носителем языка', 2, N'Немецкий язык.png', 110, 1340, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб китайского языка для студентов', 3, N'киноклуб.jpg', 100, 1990, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный онлайн-урок японского языка по Skype', 4, N'online lessons.jpg', 80, 1000, 20)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб испанского языка для студентов', 5, N'киноклуб.jpg', 40, 1050, 10)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Занятие с русскоязычным репетитором испанского языка', 6, N'Испанский язык.jpg', 50, 1450, 15)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе итальянского языка для взрослых', 7, N'Итальянский язык.jpg', 40, 1290, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный онлайн-курс французского языка для компаний по Skype', 8, N'online lessons.jpg', 40, 1180, 10)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный урок французского языка с преподавателем-носителем языка', 9, N'Французский язык.jpg', 40, 1410, 20)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе французского языка для школьников', 10, N'Французский язык.jpg', 100, 1970, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Занятие с репетитором-носителем английского языка', 11, N'Английский язык.jpg', 110, 910, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб французского языка для взрослых', 12, N'киноклуб.jpg', 90, 1770, 10)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб немецкого языка для взрослых', 13, N'киноклуб.jpg', 100, 1560, 10)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе японского языка для школьников', 14, N'Японский язык.jpg', 80, 1300, 5)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный урок испанского языка с русскоязычным преподавателем', 15, N'Испанский язык.jpg', 60, 1790, 15)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный онлайн-курс итальянского языка для компаний по Skype', 16, N'online lessons.jpg', 70, 1230, 10)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе японского языка для студентов', 17, N'Японский язык.jpg', 50, 1860, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный курс с преподавателем-носителем английского языка для компаний', 18, N'for company.jpg', 110, 1670, 10)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб итальянского языка для студентов', 19, N'киноклуб.jpg', 30, 1760, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе испанского языка для взрослых', 20, N'Испанский язык.jpg', 30, 1730, 5)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе испанского языка для студентов', 21, N'Испанский язык.jpg', 100, 1310, 20)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный онлайн-курс испанского языка для компаний по Skype', 22, N'online lessons.jpg', 120, 1510, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе английского языка для школьников', 23, N'Английский язык.jpg', 110, 900, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Занятие с репетитором-носителем испанского языка', 24, N'Испанский язык.jpg', 50, 1090, 5)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный курс с преподавателем-носителем итальянского языка для компаний', 25, N'for company.jpg', 40, 1190, 20)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе китайского языка для студентов', 26, N'Китайский язык.jpg', 40, 2000, 20)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный урок испанского языка с преподавателем-носителем языка', 27, N'Испанский язык.jpg', 90, 1200, 10)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный онлайн-курс португальского языка для компаний по Skype', 28, N'online lessons.jpg', 70, 1610, 5)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Подготовка к экзамену ACT', 29, N'Подготовка к экзамену ACT.png', 50, 1440, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе китайского языка для взрослых', 30, N'Китайский язык.jpg', 70, 1730, 25)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный онлайн-курс английского языка для компаний по Skype', 31, N'online lessons.jpg', 50, 1160, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Подготовка к экзамену TOEFL', 32, N'Подготовка к экзамену TOEFL.jpg', 100, 1070, 5)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Занятие с репетитором-носителем итальянского языка', 33, N'Итальянский язык.jpg', 120, 1370, 5)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе английского языка для взрослых', 34, N'Английский язык.jpg', 50, 1010, 25)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб английского языка для взрослых', 35, N'киноклуб.jpg', 70, 1250, 5)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный курс с преподавателем-носителем французского языка для компаний', 36, N'for company.jpg', 70, 1630, 15)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе испанского языка для школьников', 37, N'Испанский язык.jpg', 120, 1910, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Подготовка к экзамену GRE', 38, N'Подготовка к экзамену GRE.jpeg', 80, 1300, 20)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе английского языка для студентов', 39, N'Английский язык.jpg', 80, 960, 25)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Занятие с русскоязычным репетитором японского языка', 40, N'Японский язык.jpg', 40, 1260, 10)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный онлайн-урок немецкого языка по Skype', 41, N'online lessons.jpg', 90, 970, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный курс японского языка с русскоязычным преподавателем для компаний', 42, N'for company.jpg', 80, 1500, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб китайского языка для взрослых', 43, N'киноклуб.jpg', 70, 1800, 25)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный урок китайского языка с русскоязычным преподавателем', 44, N'Китайский язык.jpg', 120, 1860, 10)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Подготовка к экзамену GMAT', 45, N'Подготовка к экзамену GMAT.png', 70, 1150, 5)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Подготовка к экзамену IELTS', 46, N'Подготовка к экзамену IELTS.jpg', 120, 1730, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Подготовка к экзамену SAT', 47, N'Подготовка к экзамену SAT.png', 40, 1560, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе китайского языка для школьников', 48, N'Китайский язык.jpg', 50, 1180, 15)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб английского языка для студентов', 49, N'киноклуб.jpg', 80, 980, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб португальского языка для студентов', 50, N'киноклуб.jpg', 30, 1170, 15)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб китайского языка для детей', 51, N'киноклуб.jpg', 100, 1120, 10)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе немецкого языка для школьников', 52, N'Немецкий язык.png', 30, 1570, 15)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный онлайн-урок испанского языка по Skype', 53, N'online lessons.jpg', 70, 1780, 5)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе немецкого языка для взрослых', 54, N'Немецкий язык.png', 60, 930, 5)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный урок китайского языка с преподавателем-носителем языка', 55, N'Китайский язык.jpg', 90, 1480, 20)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Занятие с русскоязычным репетитором португальского языка', 56, N'Португальский язык.jpg', 50, 1970, 10)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный курс китайского языка с русскоязычным преподавателем для компаний', 57, N'for company.jpg', 110, 1470, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Занятие с русскоязычным репетитором немецкого языка', 58, N'Немецкий язык.png', 30, 1420, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб английского языка для детей', 59, N'киноклуб.jpg', 40, 1280, 5)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Занятие с репетитором-носителем немецкого языка', 60, N'Немецкий язык.png', 120, 1120, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный онлайн-урок китайского языка по Skype', 61, N'online lessons.jpg', 70, 1410, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный урок английского языка с преподавателем-носителем языка', 62, N'Английский язык.jpg', 120, 1300, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний', 63, N'for company.jpg', 120, 1180, 20)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', 64, N'online lessons.jpg', 70, 1840, 10)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе итальянского языка для школьников', 65, N'Итальянский язык.jpg', 100, 1410, 15)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', 66, N'Итальянский язык.jpg', 30, 1330, 20)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный онлайн-курс китайского языка для компаний по Skype', 67, N'online lessons.jpg', 120, 1760, 15)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Занятие с русскоязычным репетитором французского языка', 68, N'Французский язык.jpg', 100, 1870, 20)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', 69, N'Немецкий язык.png', 30, 990, 5)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный онлайн-урок английского языка по Skype', 70, N'online lessons.jpg', 100, 1880, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный урок французского языка с русскоязычным преподавателем', 71, N'Французский язык.jpg', 70, 1390, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный курс португальского языка с русскоязычным преподавателем для компаний', 72, N'for company.jpg', 60, 2010, 25)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный онлайн-урок французского языка по Skype', 73, N'online lessons.jpg', 120, 2010, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный курс английского языка с русскоязычным преподавателем для компаний', 74, N'for company.jpg', 80, 1210, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе французского языка для взрослых', 75, N'Французский язык.jpg', 120, 960, 15)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Подготовка к экзамену IELTS Speaking Club', 76, N'Подготовка к экзамену IELTS.jpg', 90, 1430, 20)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб итальянского языка для детей', 77, N'киноклуб.jpg', 70, 1480, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе итальянского языка для студентов', 78, N'Итальянский язык.jpg', 110, 1020, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный урок итальянского языка с преподавателем-носителем языка', 79, N'Итальянский язык.jpg', 80, 1690, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб немецкого языка для детей', 80, N'киноклуб.jpg', 120, 1670, 5)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб итальянского языка для взрослых', 81, N'киноклуб.jpg', 110, 1760, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб португальского языка для взрослых', 82, N'киноклуб.jpg', 30, 950, 5)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб португальского языка для детей', 83, N'киноклуб.jpg', 90, 1710, 15)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб французского языка для детей', 84, N'киноклуб.jpg', 90, 1600, 10)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе японского языка для взрослых', 85, N'Японский язык.jpg', 80, 1420, 5)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный курс французского языка с русскоязычным преподавателем для компаний', 86, N'for company.jpg', 40, 1940, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Занятие с русскоязычным репетитором итальянского языка', 87, N'Итальянский язык.jpg', 70, 1620, 20)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Индивидуальный урок английского языка с русскоязычным преподавателем', 88, N'Английский язык.jpg', 30, 1910, 10)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', 89, N'for company.jpg', 30, 1580, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный курс испанского языка с русскоязычным преподавателем для компаний', 90, N'for company.jpg', 90, 1000, 25)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Киноклуб немецкого языка для студентов', 91, N'киноклуб.jpg', 50, 1140, 15)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Занятие с репетитором-носителем французского языка', 92, N'Французский язык.jpg', 50, 2040, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе немецкого языка для студентов', 93, N'Немецкий язык.png', 70, 1240, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Занятие с русскоязычным репетитором китайского языка', 94, N'Китайский язык.jpg', 110, 940, 15)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Занятие с репетитором-носителем японского языка', 95, N'Японский язык.jpg', 50, 1100, 25)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Урок в группе французского языка для студентов', 96, N'Французский язык.jpg', 30, 1910, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний', 97, N'for company.jpg', 110, 900, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Занятие с русскоязычным репетитором английского языка', 98, N'Английский язык.jpg', 90, 1950, 15)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный курс с преподавателем-носителем испанского языка для компаний', 99, N'for company.jpg', 90, 1660, 0)
INSERT [dbo].[Service$] ([NameService], [IdService], [MainPhoto], [Duration], [Price], [Discount]) VALUES (N'Интенсивный курс с преподавателем-носителем японского языка для компаний', 100, N'for company.jpg', 70, 1380, 20)
GO
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Васильев', 1, N'Оскар', N'Богданович', N'м', N'7(585)801-94-29 ', CAST(N'1971-01-30T00:00:00.000' AS DateTime), N'miturria@verizon.net', CAST(N'2017-05-28T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Лазарев', 2, N'Алексей', N'Богданович', N'м', N'7(0055)737-37-48 ', CAST(N'1977-03-10T00:00:00.000' AS DateTime), N'claesjac@me.com', CAST(N'2017-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Казаков', 3, N'Дмитрий', N'Русланович', N'м', N'7(51)682-19-40 ', CAST(N'1978-12-15T00:00:00.000' AS DateTime), N'ozawa@verizon.net', CAST(N'2016-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Попова', 4, N'Харита', N'Якуновна', N'ж', N'7(335)386-81-06 ', CAST(N'1997-12-16T00:00:00.000' AS DateTime), N'firstpr@verizon.net', CAST(N'2016-07-05T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Турова', 5, N'Георгина', N'Семёновна', N'ж', N'7(555)321-42-99 ', CAST(N'1974-05-28T00:00:00.000' AS DateTime), N'yruan@optonline.net', CAST(N'2018-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Андреев', 6, N'Станислав', N'Максович', N'м', N'7(02)993-91-28 ', CAST(N'1975-10-10T00:00:00.000' AS DateTime), N'budinger@mac.com', CAST(N'2017-12-26T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Орлова', 7, N'Влада', N'Мартыновна', N'ж', N'7(2506)433-38-35 ', CAST(N'1990-06-26T00:00:00.000' AS DateTime), N'rnelson@yahoo.ca', CAST(N'2016-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Костина', 8, N'Любава', N'Авксентьевна', N'ж', N'7(6419)959-21-87 ', CAST(N'1972-07-13T00:00:00.000' AS DateTime), N'gordonjcp@hotmail.com', CAST(N'2016-02-26T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Александров', 9, N'Станислав', N'Эдуардович', N'м', N'7(18)164-05-12 ', CAST(N'1981-07-04T00:00:00.000' AS DateTime), N'bigmauler@aol.com', CAST(N'2018-11-08T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Корнилова', 10, N'Анэля', N'Михайловна', N'ж', N'7(20)980-01-60 ', CAST(N'1973-04-02T00:00:00.000' AS DateTime), N'jonathan@aol.com', CAST(N'2016-05-22T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Морозов', 11, N'Наум', N'Валерьянович', N'м', N'7(636)050-96-13 ', CAST(N'1985-07-04T00:00:00.000' AS DateTime), N'salesgeek@mac.com', CAST(N'2016-05-02T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Баранова', 12, N'Эльмира', N'Дмитриевна', N'ж', N'7(9240)643-15-50 ', CAST(N'1977-01-15T00:00:00.000' AS DateTime), N'jgmyers@comcast.net', CAST(N'2016-07-08T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Степанова', 13, N'Амелия', N'Робертовна', N'ж', N'7(1217)441-28-42 ', CAST(N'1970-06-06T00:00:00.000' AS DateTime), N'rasca@hotmail.com', CAST(N'2017-09-27T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Горбачёв', 14, N'Давид', N'Тимурович', N'м', N'7(53)602-85-41 ', CAST(N'1983-05-22T00:00:00.000' AS DateTime), N'hedwig@att.net', CAST(N'2018-12-17T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Волков', 15, N'Людвиг', N'Витальевич', N'м', N'7(8459)592-05-58 ', CAST(N'1977-12-27T00:00:00.000' AS DateTime), N'jrkorson@msn.com', CAST(N'2016-04-27T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Комиссарова', 16, N'Амалия', N'Робертовна', N'ж', N'7(22)647-46-32 ', CAST(N'1971-08-18T00:00:00.000' AS DateTime), N'jorgb@msn.com', CAST(N'2017-08-04T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Большаков', 17, N'Вадим', N'Данилович', N'м', N'7(386)641-13-37 ', CAST(N'1970-05-15T00:00:00.000' AS DateTime), N'uncle@gmail.com', CAST(N'2018-08-04T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Абрамов', 18, N'Станислав', N'Филатович', N'м', N'7(6545)478-87-79 ', CAST(N'1989-05-18T00:00:00.000' AS DateTime), N'solomon@att.net', CAST(N'2016-12-08T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Журавлёв', 19, N'Леонтий', N'Яковлевич', N'м', N'7(4403)308-56-96 ', CAST(N'2000-03-02T00:00:00.000' AS DateTime), N'cmdrgravy@me.com', CAST(N'2018-01-15T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Селиверстов', 20, N'Глеб', N'Максимович', N'м', N'7(20)554-28-68 ', CAST(N'1999-06-20T00:00:00.000' AS DateTime), N'jigsaw@sbcglobal.net', CAST(N'2016-01-07T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Киселёв', 21, N'Устин', N'Яковлевич', N'м', N'7(83)334-52-76 ', CAST(N'1985-01-08T00:00:00.000' AS DateTime), N'dalamb@verizon.net', CAST(N'2018-06-21T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Зуев', 22, N'Матвей', N'Иванович', N'м', N'7(5383)893-04-66 ', CAST(N'1981-03-28T00:00:00.000' AS DateTime), N'brickbat@verizon.net', CAST(N'2018-12-18T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Ершов', 23, N'Глеб', N'Федорович', N'м', N'7(2608)298-40-82 ', CAST(N'1970-06-14T00:00:00.000' AS DateTime), N'sjava@aol.com', CAST(N'2016-09-14T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Бобылёв', 24, N'Георгий', N'Витальевич', N'м', N'7(88)685-13-51 ', CAST(N'1983-12-19T00:00:00.000' AS DateTime), N'csilvers@mac.com', CAST(N'2018-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Ефремов', 25, N'Витольд', N'Авксентьевич', N'м', N'7(93)922-14-03 ', CAST(N'1975-12-02T00:00:00.000' AS DateTime), N'kwilliams@yahoo.ca', CAST(N'2018-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Андреева', 26, N'Патрисия', N'Валерьевна', N'ж', N'7(9648)953-81-26 ', CAST(N'1993-11-18T00:00:00.000' AS DateTime), N'jigsaw@aol.com', CAST(N'2016-07-17T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Ефимова', 27, N'Магда', N'Платоновна', N'ж', N'7(9261)386-15-92 ', CAST(N'1995-08-16T00:00:00.000' AS DateTime), N'rbarreira@me.com', CAST(N'2017-08-01T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Голубев', 28, N'Иосиф', N'Тимофеевич', N'м', N'7(78)972-73-11 ', CAST(N'1982-05-06T00:00:00.000' AS DateTime), N'smcnabb@att.net', CAST(N'2018-08-18T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Евсеев', 29, N'Макар', N'Васильевич', N'м', N'7(2141)077-85-70 ', CAST(N'1977-09-13T00:00:00.000' AS DateTime), N'parsimony@sbcglobal.net', CAST(N'2018-12-05T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Бобров', 30, N'Агафон', N'Лаврентьевич', N'м', N'7(2159)507-39-57 ', CAST(N'1995-07-29T00:00:00.000' AS DateTime), N'petersen@comcast.net', CAST(N'2017-05-09T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Игнатов', 31, N'Захар', N'Павлович', N'м', N'7(578)574-73-36 ', CAST(N'1998-10-07T00:00:00.000' AS DateTime), N'dieman@icloud.com', CAST(N'2017-11-10T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Гущина', 32, N'Янита', N'Федоровна', N'ж', N'7(4544)716-68-96 ', CAST(N'1999-03-02T00:00:00.000' AS DateTime), N'lishoy@att.net', CAST(N'2018-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Калашников', 33, N'Артур', N'Юрьевич', N'м', N'7(147)947-47-21 ', CAST(N'1972-12-13T00:00:00.000' AS DateTime), N'oevans@aol.com', CAST(N'2017-08-20T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Дмитриева', 34, N'Элина', N'Даниловна', N'ж', N'7(787)140-48-84 ', CAST(N'1988-12-10T00:00:00.000' AS DateTime), N'vmalik@live.com', CAST(N'2017-02-11T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Федотова', 35, N'Сандра', N'Владленовна', N'ж', N'7(126)195-25-86 ', CAST(N'1985-03-29T00:00:00.000' AS DateTime), N'penna@verizon.net', CAST(N'2016-11-08T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Кузьмина', 36, N'Дэнна', N'Витальевна', N'ж', N'7(9940)977-45-73 ', CAST(N'1993-08-24T00:00:00.000' AS DateTime), N'nichoj@mac.com', CAST(N'2016-03-27T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Колобова', 37, N'Злата', N'Романовна', N'ж', N'7(50)884-07-35 ', CAST(N'1994-08-25T00:00:00.000' AS DateTime), N'sinkou@aol.com', CAST(N'2016-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Некрасов', 38, N'Варлам', N'Михайлович', N'м', N'7(019)258-06-35 ', CAST(N'2000-11-12T00:00:00.000' AS DateTime), N'dogdude@verizon.net', CAST(N'2017-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Колобов', 39, N'Орест', N'Юлианович', N'м', N'7(1680)508-58-26 ', CAST(N'2001-07-14T00:00:00.000' AS DateTime), N'parkes@verizon.net', CAST(N'2017-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Блохин', 40, N'Пантелеймон', N'Феликсович', N'м', N'7(9524)556-48-98 ', CAST(N'1978-03-06T00:00:00.000' AS DateTime), N'balchen@comcast.net', CAST(N'2018-02-14T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Калинин', 41, N'Петр', N'Иванович', N'м', N'7(90)316-07-17 ', CAST(N'1993-09-08T00:00:00.000' AS DateTime), N'aschmitz@hotmail.com', CAST(N'2016-05-26T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Беляева', 42, N'Сабрина', N'Федосеевна', N'ж', N'7(6580)534-32-58 ', CAST(N'1972-07-26T00:00:00.000' AS DateTime), N'agapow@gmail.com', CAST(N'2017-06-14T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Агафонов', 43, N'Юстиниан', N'Олегович', N'м', N'7(303)810-28-78 ', CAST(N'1997-02-02T00:00:00.000' AS DateTime), N'staffelb@sbcglobal.net', CAST(N'2016-06-08T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Мамонтова', 44, N'Марфа', N'Мироновна', N'ж', N'7(38)095-64-18 ', CAST(N'1984-10-19T00:00:00.000' AS DateTime), N'rfoley@verizon.net', CAST(N'2018-02-27T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Блинов', 45, N'Евгений', N'Мэлсович', N'м', N'7(0852)321-82-64 ', CAST(N'1994-01-05T00:00:00.000' AS DateTime), N'moxfulder@outlook.com', CAST(N'2017-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Воронова', 46, N'Изабелла', N'Вячеславовна', N'ж', N'7(17)433-44-98 ', CAST(N'1999-09-24T00:00:00.000' AS DateTime), N'kildjean@sbcglobal.net', CAST(N'2017-12-21T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Медведев', 47, N'Святослав', N'Юлианович', N'м', N'7(3520)435-21-20 ', CAST(N'1972-10-04T00:00:00.000' AS DateTime), N'hllam@comcast.net', CAST(N'2018-10-13T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Куликова', 48, N'Эвелина', N'Вячеславовна', N'ж', N'7(0236)682-42-78 ', CAST(N'1997-11-14T00:00:00.000' AS DateTime), N'ilikered@hotmail.com', CAST(N'2018-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Суворова', 49, N'Божена', N'Анатольевна', N'ж', N'7(347)895-86-57 ', CAST(N'1981-03-09T00:00:00.000' AS DateTime), N'attwood@aol.com', CAST(N'2016-01-28T00:00:00.000' AS DateTime))
INSERT [dbo].[User$] ([MiddleName], [IdUser], [Name], [LastName], [Gender], [Telephone], [DateOfBitrth], [Email], [DateOfRegistration]) VALUES (N'Егорова', 50, N'Амалия', N'Дамировна', N'ж', N'7(7486)408-12-26 ', CAST(N'1999-09-28T00:00:00.000' AS DateTime), N'drezet@yahoo.com', CAST(N'2016-06-30T00:00:00.000' AS DateTime))
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
