
/******  Kendy Sthefany Doñe Abreu Matricula: 16-SIIN-1-145  ******/


CREATE DATABASE [Proyecto Final BD 2]
GO
USE [Proyecto Final BD 2]
GO
/****** Object:  Table [dbo].[Comprador]    Script Date: 28/07/2018 8:36:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comprador](
	[ProductoID] [int] NULL,
	[Comprador] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Marca]    Script Date: 28/07/2018 8:36:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marca](
	[MarcaID] [int] NOT NULL,
	[Marca] [nvarchar](50) NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[MarcaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producto]    Script Date: 28/07/2018 8:36:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[ProductoID] [int] NOT NULL,
	[Producto] [nvarchar](50) NULL,
	[MarcaID] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Comprador] ([ProductoID], [Comprador]) VALUES (1001, N'Gomez')
INSERT [dbo].[Comprador] ([ProductoID], [Comprador]) VALUES (1002, N'Rondon')
INSERT [dbo].[Comprador] ([ProductoID], [Comprador]) VALUES (1003, N'Ozuna')
INSERT [dbo].[Comprador] ([ProductoID], [Comprador]) VALUES (1004, N'Garcia')
INSERT [dbo].[Comprador] ([ProductoID], [Comprador]) VALUES (1005, N'Vargas')
INSERT [dbo].[Comprador] ([ProductoID], [Comprador]) VALUES (1006, N'Mendez')
INSERT [dbo].[Comprador] ([ProductoID], [Comprador]) VALUES (1007, N'Garcia')
INSERT [dbo].[Comprador] ([ProductoID], [Comprador]) VALUES (1008, N'Contreras')
INSERT [dbo].[Comprador] ([ProductoID], [Comprador]) VALUES (1009, N'Campusano')
INSERT [dbo].[Comprador] ([ProductoID], [Comprador]) VALUES (1010, N'Reyez')
INSERT [dbo].[Marca] ([MarcaID], [Marca]) VALUES (101, N'Dell')
INSERT [dbo].[Marca] ([MarcaID], [Marca]) VALUES (102, N'Dell')
INSERT [dbo].[Marca] ([MarcaID], [Marca]) VALUES (103, N'Dell')
INSERT [dbo].[Marca] ([MarcaID], [Marca]) VALUES (104, N'Acer')
INSERT [dbo].[Marca] ([MarcaID], [Marca]) VALUES (105, N'Acer')
INSERT [dbo].[Marca] ([MarcaID], [Marca]) VALUES (106, N'HP')
INSERT [dbo].[Marca] ([MarcaID], [Marca]) VALUES (107, N'HP')
INSERT [dbo].[Marca] ([MarcaID], [Marca]) VALUES (108, N'Xiaomi')
INSERT [dbo].[Marca] ([MarcaID], [Marca]) VALUES (109, N'Apple')
INSERT [dbo].[Marca] ([MarcaID], [Marca]) VALUES (110, N'Lenovo')
INSERT [dbo].[Producto] ([ProductoID], [Producto], [MarcaID]) VALUES (1001, N'Dell Latitud E6420', 101)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [MarcaID]) VALUES (1002, N'Dell Latirud E6410', 102)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [MarcaID]) VALUES (1003, N'Dell Vostro 200', 103)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [MarcaID]) VALUES (1004, N'Acer Aspire V5', 104)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [MarcaID]) VALUES (1005, N'Acer Aspie E15', 105)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [MarcaID]) VALUES (1006, N'HP Pavilion DV6', 106)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [MarcaID]) VALUES (1007, N'HP Pavilion X360', 107)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [MarcaID]) VALUES (1008, N'Xiaomi Mi Notebook Pro', 108)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [MarcaID]) VALUES (1009, N'Macbook Pro', 109)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [MarcaID]) VALUES (1010, N'Lenovo B590', 110)
ALTER TABLE [dbo].[Comprador]  WITH CHECK ADD  CONSTRAINT [FK_Comprador_Producto] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Producto] ([ProductoID])
GO
ALTER TABLE [dbo].[Comprador] CHECK CONSTRAINT [FK_Comprador_Producto]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Marca] FOREIGN KEY([MarcaID])
REFERENCES [dbo].[Marca] ([MarcaID])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Marca]
GO
USE [master]
GO
ALTER DATABASE [Proyecto Final BD 2] SET  READ_WRITE 
GO
