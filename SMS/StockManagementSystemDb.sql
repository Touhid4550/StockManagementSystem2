USE [master]
GO
/****** Object:  Database [StockManagementSystemDb]    Script Date: 3/14/2019 1:00:29 AM ******/
CREATE DATABASE [StockManagementSystemDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StockManagementSystemDb', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\StockManagementSystemDb.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StockManagementSystemDb_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\StockManagementSystemDb_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [StockManagementSystemDb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StockManagementSystemDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StockManagementSystemDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [StockManagementSystemDb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [StockManagementSystemDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StockManagementSystemDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StockManagementSystemDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [StockManagementSystemDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StockManagementSystemDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StockManagementSystemDb] SET  MULTI_USER 
GO
ALTER DATABASE [StockManagementSystemDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StockManagementSystemDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StockManagementSystemDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StockManagementSystemDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [StockManagementSystemDb]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/14/2019 1:00:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Categorie] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Companys]    Script Date: 3/14/2019 1:00:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Companys](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_CompanyS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Items]    Script Date: 3/14/2019 1:00:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[ReorderLevel] [int] NULL,
	[CompanyId] [int] NULL,
	[CategoryId] [int] NULL,
	[AvailableQuantity] [int] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockIn]    Script Date: 3/14/2019 1:00:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockIn](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StockInQuantity] [int] NULL,
	[Date] [date] NULL,
	[CompanyID] [int] NULL,
	[ItemID] [int] NULL,
 CONSTRAINT [PK_StockIn] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StockOut]    Script Date: 3/14/2019 1:00:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockOut](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NULL,
	[StockOutQuantity] [int] NULL,
	[StockOutType] [varchar](50) NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_StockOut] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[CompanyItemView]    Script Date: 3/14/2019 1:00:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CompanyItemView]
AS
SELECT        dbo.Items.ID, dbo.Items.Name, dbo.Items.ReorderLevel, dbo.Items.CategoryId, dbo.CompanyS.Name AS Company
FROM            dbo.CompanyS INNER JOIN
                         dbo.Items ON dbo.CompanyS.ID = dbo.Items.CompanyId



GO
/****** Object:  View [dbo].[ItemsSetupView]    Script Date: 3/14/2019 1:00:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ItemsSetupView]
AS
SELECT        dbo.Items.ID, dbo.Items.Name, dbo.Categories.Name AS CatagoryName, dbo.Companys.Name AS CompanyName, dbo.Items.ReorderLevel, dbo.Items.AvailableQuantity
FROM            dbo.Items INNER JOIN
                         dbo.Categories ON dbo.Items.CategoryId = dbo.Categories.ID INNER JOIN
                         dbo.Companys ON dbo.Items.CompanyId = dbo.Companys.ID

GO
/****** Object:  View [dbo].[ItemsStockInView]    Script Date: 3/14/2019 1:00:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ItemsStockInView]
AS
SELECT        dbo.Items.ID AS ItemsId, dbo.Items.Name, dbo.Items.ReorderLevel, dbo.Items.AvailableQuantity, dbo.StockIn.ID AS StockInId, dbo.StockIn.StockInQuantity, 
                         dbo.StockIn.Date
FROM            dbo.Items INNER JOIN
                         dbo.StockIn ON dbo.Items.ID = dbo.StockIn.ItemID


GO
/****** Object:  View [dbo].[SalesView]    Script Date: 3/14/2019 1:00:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SalesView]
AS
SELECT        dbo.Items.ID AS ItemID, dbo.Items.Name, dbo.StockOut.Date, dbo.StockOut.StockOutQuantity
FROM            dbo.Items INNER JOIN
                         dbo.StockOut ON dbo.Items.ID = dbo.StockOut.ItemId
WHERE        (dbo.StockOut.StockOutType = 'Sell')


GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Name]) VALUES (1, N'Stationary')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (2, N'Cosmetics')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (3, N'Electronics')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (4, N'Kids Items')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (5, N'Furniture')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (6, N'Kids ')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (7, N'Kitchen')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (8, N'Kids Toy')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (9, N'Home Deco')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (10, N'Furnitures')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Companys] ON 

INSERT [dbo].[Companys] ([ID], [Name]) VALUES (1, N'Unilever')
INSERT [dbo].[Companys] ([ID], [Name]) VALUES (2, N'RFL')
INSERT [dbo].[Companys] ([ID], [Name]) VALUES (3, N'Walton')
INSERT [dbo].[Companys] ([ID], [Name]) VALUES (4, N'RPL')
INSERT [dbo].[Companys] ([ID], [Name]) VALUES (5, N'Intel')
INSERT [dbo].[Companys] ([ID], [Name]) VALUES (6, N'Sony')
INSERT [dbo].[Companys] ([ID], [Name]) VALUES (7, N'Symphony')
INSERT [dbo].[Companys] ([ID], [Name]) VALUES (8, N'Lenovo')
INSERT [dbo].[Companys] ([ID], [Name]) VALUES (9, N'Samsung')
INSERT [dbo].[Companys] ([ID], [Name]) VALUES (10, N'Regal')
INSERT [dbo].[Companys] ([ID], [Name]) VALUES (11, N'Casio')
SET IDENTITY_INSERT [dbo].[Companys] OFF
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([ID], [Name], [ReorderLevel], [CompanyId], [CategoryId], [AvailableQuantity]) VALUES (1, N'Sofa', 2, 10, 5, 22)
INSERT [dbo].[Items] ([ID], [Name], [ReorderLevel], [CompanyId], [CategoryId], [AvailableQuantity]) VALUES (2, N'Almira', 12, 10, 5, 12)
INSERT [dbo].[Items] ([ID], [Name], [ReorderLevel], [CompanyId], [CategoryId], [AvailableQuantity]) VALUES (3, N'Television', 20, 3, 3, 20)
INSERT [dbo].[Items] ([ID], [Name], [ReorderLevel], [CompanyId], [CategoryId], [AvailableQuantity]) VALUES (4, N'Refrigerator', 20, 3, 3, 0)
INSERT [dbo].[Items] ([ID], [Name], [ReorderLevel], [CompanyId], [CategoryId], [AvailableQuantity]) VALUES (5, N'Generator', 15, 3, 3, 0)
INSERT [dbo].[Items] ([ID], [Name], [ReorderLevel], [CompanyId], [CategoryId], [AvailableQuantity]) VALUES (6, N'Microwave oven', 12, 3, 3, 22)
INSERT [dbo].[Items] ([ID], [Name], [ReorderLevel], [CompanyId], [CategoryId], [AvailableQuantity]) VALUES (7, N'Monitor', 3, 3, 3, 13)
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[StockIn] ON 

INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (1, 20, CAST(0x243F0B00 AS Date), 10, 2)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (8, 50, CAST(0x2E3F0B00 AS Date), 10, 2)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (9, 50, CAST(0x2E3F0B00 AS Date), 10, 1)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (10, 25, CAST(0x2E3F0B00 AS Date), 10, 2)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (11, 30, CAST(0x313F0B00 AS Date), 10, 2)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (12, 30, CAST(0x313F0B00 AS Date), 10, 2)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (13, 10, CAST(0x3B3F0B00 AS Date), 10, 2)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (14, 20, CAST(0x3B3F0B00 AS Date), 10, 2)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (15, 20, CAST(0x423F0B00 AS Date), 10, 2)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (16, 20, CAST(0x423F0B00 AS Date), 10, 2)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (17, 50, CAST(0x433F0B00 AS Date), 3, 6)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (18, 50, CAST(0x433F0B00 AS Date), 3, 6)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (19, 20, CAST(0x433F0B00 AS Date), 3, 5)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (20, 10, CAST(0x593F0B00 AS Date), 3, 5)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (21, 20, CAST(0x5B3F0B00 AS Date), 10, 2)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (22, 10, CAST(0x5E3F0B00 AS Date), 3, 3)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (23, 5, CAST(0x5E3F0B00 AS Date), 3, 5)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (24, 5, CAST(0x5F3F0B00 AS Date), 3, 6)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (25, 10, CAST(0x5F3F0B00 AS Date), 3, 3)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (26, 8, CAST(0x5F3F0B00 AS Date), 3, 7)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (27, 20, CAST(0x6A3F0B00 AS Date), 3, 3)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (28, 20, CAST(0x6A3F0B00 AS Date), 3, 3)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (29, 20, CAST(0x6A3F0B00 AS Date), 3, 3)
INSERT [dbo].[StockIn] ([ID], [StockInQuantity], [Date], [CompanyID], [ItemID]) VALUES (30, 20, CAST(0x6A3F0B00 AS Date), 3, 3)
SET IDENTITY_INSERT [dbo].[StockIn] OFF
SET IDENTITY_INSERT [dbo].[StockOut] ON 

INSERT [dbo].[StockOut] ([ID], [ItemId], [StockOutQuantity], [StockOutType], [Date]) VALUES (1, 2, 10, N'Sell', CAST(0x763F0B00 AS Date))
INSERT [dbo].[StockOut] ([ID], [ItemId], [StockOutQuantity], [StockOutType], [Date]) VALUES (2, 1, 5, N'Sell', CAST(0x5A3F0B00 AS Date))
INSERT [dbo].[StockOut] ([ID], [ItemId], [StockOutQuantity], [StockOutType], [Date]) VALUES (3, 6, 10, N'Sell', CAST(0x5A3F0B00 AS Date))
INSERT [dbo].[StockOut] ([ID], [ItemId], [StockOutQuantity], [StockOutType], [Date]) VALUES (4, 2, 20, N'Sell', CAST(0x3B3F0B00 AS Date))
INSERT [dbo].[StockOut] ([ID], [ItemId], [StockOutQuantity], [StockOutType], [Date]) VALUES (5, 7, 5, N'Sell', CAST(0x633F0B00 AS Date))
INSERT [dbo].[StockOut] ([ID], [ItemId], [StockOutQuantity], [StockOutType], [Date]) VALUES (6, 7, 5, N'Sell', CAST(0x633F0B00 AS Date))
INSERT [dbo].[StockOut] ([ID], [ItemId], [StockOutQuantity], [StockOutType], [Date]) VALUES (7, 7, 3, N'Sell', CAST(0x633F0B00 AS Date))
INSERT [dbo].[StockOut] ([ID], [ItemId], [StockOutQuantity], [StockOutType], [Date]) VALUES (8, 7, 5, N'Sell', CAST(0x633F0B00 AS Date))
INSERT [dbo].[StockOut] ([ID], [ItemId], [StockOutQuantity], [StockOutType], [Date]) VALUES (9, 7, 5, N'Sell', CAST(0x633F0B00 AS Date))
INSERT [dbo].[StockOut] ([ID], [ItemId], [StockOutQuantity], [StockOutType], [Date]) VALUES (10, 7, 5, N'Sell', CAST(0x633F0B00 AS Date))
INSERT [dbo].[StockOut] ([ID], [ItemId], [StockOutQuantity], [StockOutType], [Date]) VALUES (11, 2, 3, N'Sell', CAST(0x633F0B00 AS Date))
INSERT [dbo].[StockOut] ([ID], [ItemId], [StockOutQuantity], [StockOutType], [Date]) VALUES (12, 2, 3, N'Sell', CAST(0x633F0B00 AS Date))
INSERT [dbo].[StockOut] ([ID], [ItemId], [StockOutQuantity], [StockOutType], [Date]) VALUES (13, 2, 3, N'Sell', CAST(0x633F0B00 AS Date))
INSERT [dbo].[StockOut] ([ID], [ItemId], [StockOutQuantity], [StockOutType], [Date]) VALUES (14, 2, 2, N'Sell', CAST(0x633F0B00 AS Date))
SET IDENTITY_INSERT [dbo].[StockOut] OFF
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Categories]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_CompanyS1] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companys] ([ID])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_CompanyS1]
GO
ALTER TABLE [dbo].[StockIn]  WITH CHECK ADD  CONSTRAINT [FK_StockIn_CompanyS] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Companys] ([ID])
GO
ALTER TABLE [dbo].[StockIn] CHECK CONSTRAINT [FK_StockIn_CompanyS]
GO
ALTER TABLE [dbo].[StockIn]  WITH CHECK ADD  CONSTRAINT [FK_StockIn_Items] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Items] ([ID])
GO
ALTER TABLE [dbo].[StockIn] CHECK CONSTRAINT [FK_StockIn_Items]
GO
ALTER TABLE [dbo].[StockOut]  WITH CHECK ADD  CONSTRAINT [FK_StockOut_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([ID])
GO
ALTER TABLE [dbo].[StockOut] CHECK CONSTRAINT [FK_StockOut_Items]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Items"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Categories"
            Begin Extent = 
               Top = 6
               Left = 259
               Bottom = 102
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Companys"
            Begin Extent = 
               Top = 6
               Left = 467
               Bottom = 102
               Right = 637
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ItemsSetupView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ItemsSetupView'
GO
USE [master]
GO
ALTER DATABASE [StockManagementSystemDb] SET  READ_WRITE 
GO
