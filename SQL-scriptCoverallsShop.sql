USE [master]
GO
/****** Object:  Database [Coveralls]    Script Date: 19.04.2023 16:14:31 ******/
CREATE DATABASE [Coveralls]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Coveralls', FILENAME = N'D:\SQLServer2017\MSSQL14.SQLEXPRESS01\MSSQL\DATA\Coveralls.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Coveralls_log', FILENAME = N'D:\SQLServer2017\MSSQL14.SQLEXPRESS01\MSSQL\DATA\Coveralls_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Coveralls] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Coveralls].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Coveralls] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Coveralls] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Coveralls] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Coveralls] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Coveralls] SET ARITHABORT OFF 
GO
ALTER DATABASE [Coveralls] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Coveralls] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Coveralls] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Coveralls] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Coveralls] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Coveralls] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Coveralls] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Coveralls] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Coveralls] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Coveralls] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Coveralls] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Coveralls] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Coveralls] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Coveralls] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Coveralls] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Coveralls] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Coveralls] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Coveralls] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Coveralls] SET  MULTI_USER 
GO
ALTER DATABASE [Coveralls] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Coveralls] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Coveralls] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Coveralls] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Coveralls] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Coveralls] SET QUERY_STORE = OFF
GO
USE [Coveralls]
GO
/****** Object:  Table [dbo].[CategoryItem]    Script Date: 19.04.2023 16:14:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameProduct]    Script Date: 19.04.2023 16:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 19.04.2023 16:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataOrder] [date] NULL,
	[DataManufacture] [date] NULL,
	[UserInfoID] [int] NULL,
	[StatusOrderId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderHasProduct]    Script Date: 19.04.2023 16:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHasProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductArticlNumber] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 19.04.2023 16:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ArticleNumber] [int] IDENTITY(1,1) NOT NULL,
	[NameId] [int] NULL,
	[CurrentDiscount] [int] NULL,
	[CategoryItemId] [int] NULL,
	[CountProductStock] [int] NULL,
	[Discription] [nvarchar](250) NULL,
	[Size] [nvarchar](20) NULL,
	[Prise] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusOrder]    Script Date: 19.04.2023 16:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusOrder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 19.04.2023 16:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[UserInfoId] [int] NULL,
	[RoleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 19.04.2023 16:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserInfoId] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[UserPatronymic] [nvarchar](50) NULL,
	[Phone] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 19.04.2023 16:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CategoryItem] ON 

INSERT [dbo].[CategoryItem] ([Id], [Name]) VALUES (1, N'Для пожарных')
INSERT [dbo].[CategoryItem] ([Id], [Name]) VALUES (2, N'Для военных')
SET IDENTITY_INSERT [dbo].[CategoryItem] OFF
GO
SET IDENTITY_INSERT [dbo].[NameProduct] ON 

INSERT [dbo].[NameProduct] ([Id], [Name]) VALUES (1, N'Униформа пожарного')
INSERT [dbo].[NameProduct] ([Id], [Name]) VALUES (2, N'Униформа военная')
SET IDENTITY_INSERT [dbo].[NameProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [DataOrder], [DataManufacture], [UserInfoID], [StatusOrderId]) VALUES (1, CAST(N'2022-01-12' AS Date), CAST(N'2022-02-02' AS Date), 2, 2)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderHasProduct] ON 

INSERT [dbo].[OrderHasProduct] ([Id], [OrderId], [ProductArticlNumber]) VALUES (1, 1, 17)
SET IDENTITY_INSERT [dbo].[OrderHasProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ArticleNumber], [NameId], [CurrentDiscount], [CategoryItemId], [CountProductStock], [Discription], [Size], [Prise]) VALUES (17, 1, 10, 1, 15, N'Боевая одежда пожарного (БОП) — комплект многослойной специальной защитной одежды общего назначения, состоящий из куртки, брюк (полукомбинезона) и предназначенный для защиты', N'48-50, 52-54, 56-58', 15000.0000)
INSERT [dbo].[Product] ([ArticleNumber], [NameId], [CurrentDiscount], [CategoryItemId], [CountProductStock], [Discription], [Size], [Prise]) VALUES (19, 2, 5, 2, 400, N'Военная форма одежды (обмундирование) — одежда военнослужащих, установленная специальными нормативными актами ношение которой является обязательным для военнослужащих вооружённых сил того или иного государства', N'52-54.56-58', 13999.0000)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[StatusOrder] ON 

INSERT [dbo].[StatusOrder] ([Id], [Name]) VALUES (1, N'В работе')
INSERT [dbo].[StatusOrder] ([Id], [Name]) VALUES (2, N'Готово')
SET IDENTITY_INSERT [dbo].[StatusOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [Login], [Password], [UserInfoId], [RoleId]) VALUES (1, N'Admin', N'Admin', 1, 1)
INSERT [dbo].[User] ([UserId], [Login], [Password], [UserInfoId], [RoleId]) VALUES (2, N'User1', N'User1', 2, 2)
INSERT [dbo].[User] ([UserId], [Login], [Password], [UserInfoId], [RoleId]) VALUES (3, N'User2', N'User2', 3, 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([UserInfoId], [UserSurname], [UserName], [UserPatronymic], [Phone]) VALUES (1, N'Филипьев', N'Константин', N'Олегович', 545555)
INSERT [dbo].[UserInfo] ([UserInfoId], [UserSurname], [UserName], [UserPatronymic], [Phone]) VALUES (2, N'Ваньшев', N'Павел', NULL, 982185)
INSERT [dbo].[UserInfo] ([UserInfoId], [UserSurname], [UserName], [UserPatronymic], [Phone]) VALUES (3, N'Парада', N'Сергей', NULL, 795652)
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([RoleId], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[UserRole] ([RoleId], [RoleName]) VALUES (2, N'Пользователь')
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([StatusOrderId])
REFERENCES [dbo].[StatusOrder] ([Id])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserInfoID])
REFERENCES [dbo].[UserInfo] ([UserInfoId])
GO
ALTER TABLE [dbo].[OrderHasProduct]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderHasProduct]  WITH CHECK ADD FOREIGN KEY([ProductArticlNumber])
REFERENCES [dbo].[Product] ([ArticleNumber])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryItemId])
REFERENCES [dbo].[CategoryItem] ([Id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([NameId])
REFERENCES [dbo].[NameProduct] ([Id])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[UserRole] ([RoleId])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserInfoId])
REFERENCES [dbo].[UserInfo] ([UserInfoId])
GO
USE [master]
GO
ALTER DATABASE [Coveralls] SET  READ_WRITE 
GO
