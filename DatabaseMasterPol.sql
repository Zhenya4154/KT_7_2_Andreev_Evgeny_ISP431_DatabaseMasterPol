USE [master]
GO
/****** Object:  Database [DatabaseMasterPol]    Script Date: 11.03.2025 15:15:47 ******/
CREATE DATABASE [DatabaseMasterPol]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DatabaseMasterPol', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DatabaseMasterPol.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DatabaseMasterPol_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DatabaseMasterPol_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DatabaseMasterPol] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DatabaseMasterPol].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DatabaseMasterPol] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET ARITHABORT OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DatabaseMasterPol] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DatabaseMasterPol] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DatabaseMasterPol] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DatabaseMasterPol] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DatabaseMasterPol] SET  MULTI_USER 
GO
ALTER DATABASE [DatabaseMasterPol] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DatabaseMasterPol] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DatabaseMasterPol] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DatabaseMasterPol] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DatabaseMasterPol] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DatabaseMasterPol] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DatabaseMasterPol] SET QUERY_STORE = OFF
GO
USE [DatabaseMasterPol]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 11.03.2025 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdNumberIndex] [int] NOT NULL,
	[IdNameArea] [int] NOT NULL,
	[IdNameCity] [int] NOT NULL,
	[IdNameStreet] [int] NOT NULL,
	[House] [int] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialTypeImport]    Script Date: 11.03.2025 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialTypeImport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeMaterial] [nvarchar](50) NOT NULL,
	[PercentMaterial] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MaterialTypeImport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameArea]    Script Date: 11.03.2025 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameArea](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Area] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameArea] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameCity]    Script Date: 11.03.2025 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameCity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameCity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameDirector]    Script Date: 11.03.2025 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameDirector](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Director] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameDirector] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameStreet]    Script Date: 11.03.2025 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameStreet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameStreet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NumberIndex]    Script Date: 11.03.2025 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NumberIndex](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NOT NULL,
 CONSTRAINT [PK_NumberIndex] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerImport]    Script Date: 11.03.2025 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerImport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTypePartner] [int] NOT NULL,
	[NamePartner] [nvarchar](50) NOT NULL,
	[IdNameDirector] [int] NOT NULL,
	[Mail] [nvarchar](50) NOT NULL,
	[NumberPhone] [nvarchar](50) NOT NULL,
	[IdAddress] [int] NOT NULL,
	[INN] [nvarchar](50) NULL,
	[Rating] [int] NOT NULL,
	[Discount] [int] NULL,
 CONSTRAINT [PK_PartnerImport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProductImport]    Script Date: 11.03.2025 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProductImport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdNamePartner] [int] NOT NULL,
	[CountProduct] [int] NOT NULL,
	[DataSales] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProductImport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImport]    Script Date: 11.03.2025 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTypeProduct] [int] NOT NULL,
	[NameProduct] [nvarchar](500) NOT NULL,
	[Article] [int] NOT NULL,
	[MinPriceForPartner] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ProductImport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypeImport]    Script Date: 11.03.2025 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypeImport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeProduct] [nvarchar](50) NOT NULL,
	[KoefTypeProduct] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductTypeImport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypePartner]    Script Date: 11.03.2025 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypePartner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypePartner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 11.03.2025 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11.03.2025 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameUser] [nvarchar](50) NOT NULL,
	[UserLogin] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
	[IdRole] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([Id], [IdNumberIndex], [IdNameArea], [IdNameCity], [IdNameStreet], [House]) VALUES (1, 5, 3, 5, 1, 15)
INSERT [dbo].[Address] ([Id], [IdNumberIndex], [IdNameArea], [IdNameCity], [IdNameStreet], [House]) VALUES (2, 2, 1, 3, 5, 18)
INSERT [dbo].[Address] ([Id], [IdNumberIndex], [IdNameArea], [IdNameCity], [IdNameStreet], [House]) VALUES (3, 3, 4, 1, 2, 21)
INSERT [dbo].[Address] ([Id], [IdNumberIndex], [IdNameArea], [IdNameCity], [IdNameStreet], [House]) VALUES (4, 1, 5, 2, 4, 51)
INSERT [dbo].[Address] ([Id], [IdNumberIndex], [IdNameArea], [IdNameCity], [IdNameStreet], [House]) VALUES (5, 4, 2, 4, 3, 122)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialTypeImport] ON 

INSERT [dbo].[MaterialTypeImport] ([Id], [TypeMaterial], [PercentMaterial]) VALUES (1, N'Тип материала 1', N'0,10%')
INSERT [dbo].[MaterialTypeImport] ([Id], [TypeMaterial], [PercentMaterial]) VALUES (2, N'Тип материала 2', N'0,95%')
INSERT [dbo].[MaterialTypeImport] ([Id], [TypeMaterial], [PercentMaterial]) VALUES (3, N'Тип материала 3', N'0,28%')
INSERT [dbo].[MaterialTypeImport] ([Id], [TypeMaterial], [PercentMaterial]) VALUES (4, N'Тип материала 4', N'0,55%')
INSERT [dbo].[MaterialTypeImport] ([Id], [TypeMaterial], [PercentMaterial]) VALUES (5, N'Тип материала 5', N'0,34%')
SET IDENTITY_INSERT [dbo].[MaterialTypeImport] OFF
GO
SET IDENTITY_INSERT [dbo].[NameArea] ON 

INSERT [dbo].[NameArea] ([Id], [Area]) VALUES (1, N'Архангельская')
INSERT [dbo].[NameArea] ([Id], [Area]) VALUES (2, N'Белгородская')
INSERT [dbo].[NameArea] ([Id], [Area]) VALUES (3, N'Кемеровская')
INSERT [dbo].[NameArea] ([Id], [Area]) VALUES (4, N'Ленинградская')
INSERT [dbo].[NameArea] ([Id], [Area]) VALUES (5, N'Московская')
SET IDENTITY_INSERT [dbo].[NameArea] OFF
GO
SET IDENTITY_INSERT [dbo].[NameCity] ON 

INSERT [dbo].[NameCity] ([Id], [City]) VALUES (1, N'Приморск')
INSERT [dbo].[NameCity] ([Id], [City]) VALUES (2, N'Реутов')
INSERT [dbo].[NameCity] ([Id], [City]) VALUES (3, N'Северодвинск')
INSERT [dbo].[NameCity] ([Id], [City]) VALUES (4, N'Старый Оскол')
INSERT [dbo].[NameCity] ([Id], [City]) VALUES (5, N'Юрга')
SET IDENTITY_INSERT [dbo].[NameCity] OFF
GO
SET IDENTITY_INSERT [dbo].[NameDirector] ON 

INSERT [dbo].[NameDirector] ([Id], [Director]) VALUES (1, N'Воробьева Екатерина Валерьевна')
INSERT [dbo].[NameDirector] ([Id], [Director]) VALUES (2, N'Иванова Александра Ивановна')
INSERT [dbo].[NameDirector] ([Id], [Director]) VALUES (3, N'Петров Василий Петрович')
INSERT [dbo].[NameDirector] ([Id], [Director]) VALUES (4, N'Соловьев Андрей Николаевич')
INSERT [dbo].[NameDirector] ([Id], [Director]) VALUES (5, N'Степанов Степан Сергеевич')
SET IDENTITY_INSERT [dbo].[NameDirector] OFF
GO
SET IDENTITY_INSERT [dbo].[NameStreet] ON 

INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (1, N'Лесная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (2, N'Парковая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (3, N'Рабочая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (4, N'Свободы')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (5, N'Строителей')
SET IDENTITY_INSERT [dbo].[NameStreet] OFF
GO
SET IDENTITY_INSERT [dbo].[NumberIndex] ON 

INSERT [dbo].[NumberIndex] ([Id], [Number]) VALUES (1, 143960)
INSERT [dbo].[NumberIndex] ([Id], [Number]) VALUES (2, 164500)
INSERT [dbo].[NumberIndex] ([Id], [Number]) VALUES (3, 188910)
INSERT [dbo].[NumberIndex] ([Id], [Number]) VALUES (4, 309500)
INSERT [dbo].[NumberIndex] ([Id], [Number]) VALUES (5, 652050)
SET IDENTITY_INSERT [dbo].[NumberIndex] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerImport] ON 

INSERT [dbo].[PartnerImport] ([Id], [IdTypePartner], [NamePartner], [IdNameDirector], [Mail], [NumberPhone], [IdAddress], [INN], [Rating], [Discount]) VALUES (1, 1, N'База Строитель', 2, N'aleksandraivanova@ml.ru', N'+7(493) - 123-45-67', 1, N'2222455179

', 7, 5)
INSERT [dbo].[PartnerImport] ([Id], [IdTypePartner], [NamePartner], [IdNameDirector], [Mail], [NumberPhone], [IdAddress], [INN], [Rating], [Discount]) VALUES (2, 1, N'МонтажПро', 5, N'stepanov@stepan.ru', N'+7(912) - 888-33-33', 5, N'5552431140
', 10, 10)
INSERT [dbo].[PartnerImport] ([Id], [IdTypePartner], [NamePartner], [IdNameDirector], [Mail], [NumberPhone], [IdAddress], [INN], [Rating], [Discount]) VALUES (3, 3, N'Паркет 29', 3, N'vppetrov@vl.ru', N'+7(987) - 123-56-78', 2, N'3333888520
', 7, 5)
INSERT [dbo].[PartnerImport] ([Id], [IdTypePartner], [NamePartner], [IdNameDirector], [Mail], [NumberPhone], [IdAddress], [INN], [Rating], [Discount]) VALUES (4, 2, N'Ремонт и отделка', 1, N'ekaterina.vorobeva@ml.ru', N'+7(444) - 222-33-11', 4, N'1111520857', 5, 15)
INSERT [dbo].[PartnerImport] ([Id], [IdTypePartner], [NamePartner], [IdNameDirector], [Mail], [NumberPhone], [IdAddress], [INN], [Rating], [Discount]) VALUES (5, 4, N'Стройсервис', 4, N'ansolovev@st.ru', N'+7(812) - 223-32-00', 3, N'4440391035
', 7, 0)
SET IDENTITY_INSERT [dbo].[PartnerImport] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerProductImport] ON 

INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (8, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (9, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProductImport] ([Id], [IdProduct], [IdNamePartner], [CountProduct], [DataSales]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[PartnerProductImport] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImport] ON 

INSERT [dbo].[ProductImport] ([Id], [IdTypeProduct], [NameProduct], [Article], [MinPriceForPartner]) VALUES (1, 3, N'Инженерная доска Дуб Французская елка однополосная 12 мм', 8858958, CAST(7330.99 AS Decimal(18, 2)))
INSERT [dbo].[ProductImport] ([Id], [IdTypeProduct], [NameProduct], [Article], [MinPriceForPartner]) VALUES (2, 1, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 7750282, CAST(1799.33 AS Decimal(18, 2)))
INSERT [dbo].[ProductImport] ([Id], [IdTypeProduct], [NameProduct], [Article], [MinPriceForPartner]) VALUES (3, 1, N'Ламинат Дуб серый 32 класс 8 мм с фаской', 7028748, CAST(3890.41 AS Decimal(18, 2)))
INSERT [dbo].[ProductImport] ([Id], [IdTypeProduct], [NameProduct], [Article], [MinPriceForPartner]) VALUES (4, 3, N'Паркетная доска Ясень темный однополосная 14 мм', 8758385, CAST(4456.90 AS Decimal(18, 2)))
INSERT [dbo].[ProductImport] ([Id], [IdTypeProduct], [NameProduct], [Article], [MinPriceForPartner]) VALUES (5, 4, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', 5012543, CAST(5450.59 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ProductImport] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTypeImport] ON 

INSERT [dbo].[ProductTypeImport] ([Id], [TypeProduct], [KoefTypeProduct]) VALUES (1, N'Ламинат', N'2,35')
INSERT [dbo].[ProductTypeImport] ([Id], [TypeProduct], [KoefTypeProduct]) VALUES (2, N'Массивная доска', N'5,15')
INSERT [dbo].[ProductTypeImport] ([Id], [TypeProduct], [KoefTypeProduct]) VALUES (3, N'Паркетная доска', N'4,34')
INSERT [dbo].[ProductTypeImport] ([Id], [TypeProduct], [KoefTypeProduct]) VALUES (4, N'Пробковое покрытие', N'1,5')
SET IDENTITY_INSERT [dbo].[ProductTypeImport] OFF
GO
SET IDENTITY_INSERT [dbo].[TypePartner] ON 

INSERT [dbo].[TypePartner] ([Id], [Type]) VALUES (1, N'ЗАО')
INSERT [dbo].[TypePartner] ([Id], [Type]) VALUES (2, N'ОАО')
INSERT [dbo].[TypePartner] ([Id], [Type]) VALUES (3, N'ООО')
INSERT [dbo].[TypePartner] ([Id], [Type]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[TypePartner] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([Id], [Role]) VALUES (1, N'Администратор')
INSERT [dbo].[UserRole] ([Id], [Role]) VALUES (2, N'Менеджер')
INSERT [dbo].[UserRole] ([Id], [Role]) VALUES (3, N'Сотрудник')
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [NameUser], [UserLogin], [UserPassword], [IdRole]) VALUES (1, N'Вадим', N'VadimGeyKo', N'123qwe123', 1)
INSERT [dbo].[Users] ([Id], [NameUser], [UserLogin], [UserPassword], [IdRole]) VALUES (2, N'Дима', N'DimaLisiy', N'qwe123qwe', 2)
INSERT [dbo].[Users] ([Id], [NameUser], [UserLogin], [UserPassword], [IdRole]) VALUES (3, N'Микаил', N'MihailUral', N'123123123', 3)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_NameArea] FOREIGN KEY([IdNameArea])
REFERENCES [dbo].[NameArea] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_NameArea]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_NameCity] FOREIGN KEY([IdNameCity])
REFERENCES [dbo].[NameCity] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_NameCity]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_NameStreet] FOREIGN KEY([IdNameStreet])
REFERENCES [dbo].[NameStreet] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_NameStreet]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_NumberIndex] FOREIGN KEY([IdNumberIndex])
REFERENCES [dbo].[NumberIndex] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_NumberIndex]
GO
ALTER TABLE [dbo].[PartnerImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerImport_Address] FOREIGN KEY([IdAddress])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[PartnerImport] CHECK CONSTRAINT [FK_PartnerImport_Address]
GO
ALTER TABLE [dbo].[PartnerImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerImport_NameDirector] FOREIGN KEY([IdNameDirector])
REFERENCES [dbo].[NameDirector] ([Id])
GO
ALTER TABLE [dbo].[PartnerImport] CHECK CONSTRAINT [FK_PartnerImport_NameDirector]
GO
ALTER TABLE [dbo].[PartnerImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerImport_TypePartner] FOREIGN KEY([IdTypePartner])
REFERENCES [dbo].[TypePartner] ([Id])
GO
ALTER TABLE [dbo].[PartnerImport] CHECK CONSTRAINT [FK_PartnerImport_TypePartner]
GO
ALTER TABLE [dbo].[PartnerProductImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProductImport_PartnerImport] FOREIGN KEY([IdNamePartner])
REFERENCES [dbo].[PartnerImport] ([Id])
GO
ALTER TABLE [dbo].[PartnerProductImport] CHECK CONSTRAINT [FK_PartnerProductImport_PartnerImport]
GO
ALTER TABLE [dbo].[PartnerProductImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProductImport_ProductImport] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[ProductImport] ([Id])
GO
ALTER TABLE [dbo].[PartnerProductImport] CHECK CONSTRAINT [FK_PartnerProductImport_ProductImport]
GO
ALTER TABLE [dbo].[ProductImport]  WITH CHECK ADD  CONSTRAINT [FK_ProductImport_ProductTypeImport] FOREIGN KEY([IdTypeProduct])
REFERENCES [dbo].[ProductTypeImport] ([Id])
GO
ALTER TABLE [dbo].[ProductImport] CHECK CONSTRAINT [FK_ProductImport_ProductTypeImport]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserRole] FOREIGN KEY([IdRole])
REFERENCES [dbo].[UserRole] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserRole]
GO
USE [master]
GO
ALTER DATABASE [DatabaseMasterPol] SET  READ_WRITE 
GO
