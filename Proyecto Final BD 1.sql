
/******  Kendy Sthefany Doñe Abreu Matricula: 16-SIIN-1-145  ******/


CREATE DATABASE [Proyecto Final BD 1] 
GO
USE [Proyecto Final BD 1]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 28/07/2018 8:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[ClienteID] [int] NOT NULL,
	[Cliente] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 28/07/2018 8:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fabricante](
	[FabricanteID] [int] NULL,
	[Fabricante] [varchar](50) NULL,
	[ProductoID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 28/07/2018 8:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[ProductoID] [int] NOT NULL,
	[Producto] [varchar](50) NULL,
	[Precio] [int] NULL,
	[FabricanteID] [int] NULL,
	[ClienteID] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (111, N'Jose Ramirez')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (112, N'Pedro Abreu')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (113, N'Albania Rosario')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (114, N'Juan Perez')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (115, N'Maria Gonzales')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (116, N'Perla Andujar')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (117, N'Mariel Encarnación ')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (118, N'Keisy Maldonado')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (119, N'Evelin De León')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (120, N'Asley Ozuna')
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (10, N'Samsung', 1111)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (11, N'Apple', 1112)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (12, N'ZTE', 1113)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (13, N'Huawei', 1114)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (14, N'Lenovo', 1115)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (15, N'LG', 1116)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (16, N'Sony', 1117)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (17, N'Motorola', 1118)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (18, N'HTC', 1119)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (19, N'Black Berry', 1120)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1111, N'Samsung Galaxy S7', 15000, 10, 111)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1112, N'Iphone 6S', 12000, 11, 112)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1113, N'ZTE Nubia Z17', 10000, 12, 113)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1114, N'Huawei Mate 10 Pro', 13000, 13, 114)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1115, N'Lenovo K6', 12600, 14, 115)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1116, N'LG G5', 8800, 15, 116)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1117, N'Sony Xperia', 7000, 16, 117)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1118, N'Motorola Moto X Force', 11000, 17, 118)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1119, N'HTC DEsire 830', 9000, 18, 119)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1120, N'Black Berry Keyone', 16000, 19, 120)
ALTER TABLE [dbo].[Fabricante]  WITH CHECK ADD  CONSTRAINT [FK_Fabricante_Producto] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Producto] ([ProductoID])
GO
ALTER TABLE [dbo].[Fabricante] CHECK CONSTRAINT [FK_Fabricante_Producto]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Cliente] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Cliente]
GO
USE [master]
GO
ALTER DATABASE [Proyecto Final BD 1] SET  READ_WRITE 
GO
