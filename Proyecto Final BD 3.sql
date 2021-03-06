
/******  Kendy Sthefany Doñe Abreu Matricula: 16-SIIN-1-145  ******/


CREATE DATABASE [Proyecto Final BD 3] 
GO
USE [Proyecto Final BD 3]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 28/07/2018 8:53:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[EmpleadoID] [int] NOT NULL,
	[Empleado] [varchar](50) NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[EmpleadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 28/07/2018 8:53:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Puesto](
	[PuestoID] [int] NOT NULL,
	[Puesto] [varchar](50) NULL,
 CONSTRAINT [PK_Puesto] PRIMARY KEY CLUSTERED 
(
	[PuestoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Salario]    Script Date: 28/07/2018 8:53:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salario](
	[Salario] [int] NULL,
	[EmpleadoID] [int] NULL,
	[PuestoID] [int] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (4708, N'Santiago')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (4709, N'Gabriel ')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (4710, N'Angel')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (4711, N'Simon')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (4712, N'Valentin ')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (4713, N'Julian')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (4714, N'Benjamin')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (4715, N'Erick')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (4716, N'Sasha')
INSERT [dbo].[Empleado] ([EmpleadoID], [Empleado]) VALUES (4717, N'Hector')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10001, N'Vendedor')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10002, N'Contable')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10003, N'Administración')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10004, N'Secretaria')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10005, N'Supervisor')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10006, N'Gerente')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10007, N'Técnico')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10008, N'Conserje')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10009, N'Seguridad')
INSERT [dbo].[Puesto] ([PuestoID], [Puesto]) VALUES (10010, N'Calidad')
INSERT [dbo].[Salario] ([Salario], [EmpleadoID], [PuestoID]) VALUES (7000, 4708, 10002)
INSERT [dbo].[Salario] ([Salario], [EmpleadoID], [PuestoID]) VALUES (10000, 4709, 10004)
INSERT [dbo].[Salario] ([Salario], [EmpleadoID], [PuestoID]) VALUES (20000, 4710, 10003)
INSERT [dbo].[Salario] ([Salario], [EmpleadoID], [PuestoID]) VALUES (15000, 4711, 10009)
INSERT [dbo].[Salario] ([Salario], [EmpleadoID], [PuestoID]) VALUES (25000, 4712, 10005)
INSERT [dbo].[Salario] ([Salario], [EmpleadoID], [PuestoID]) VALUES (30000, 4713, 10006)
INSERT [dbo].[Salario] ([Salario], [EmpleadoID], [PuestoID]) VALUES (9000, 4714, 10008)
INSERT [dbo].[Salario] ([Salario], [EmpleadoID], [PuestoID]) VALUES (5000, 4715, 10001)
INSERT [dbo].[Salario] ([Salario], [EmpleadoID], [PuestoID]) VALUES (6000, 4716, 10010)
INSERT [dbo].[Salario] ([Salario], [EmpleadoID], [PuestoID]) VALUES (12000, 4717, 10007)
ALTER TABLE [dbo].[Salario]  WITH CHECK ADD  CONSTRAINT [FK_Salario_Empleado] FOREIGN KEY([EmpleadoID])
REFERENCES [dbo].[Empleado] ([EmpleadoID])
GO
ALTER TABLE [dbo].[Salario] CHECK CONSTRAINT [FK_Salario_Empleado]
GO
ALTER TABLE [dbo].[Salario]  WITH CHECK ADD  CONSTRAINT [FK_Salario_Puesto] FOREIGN KEY([PuestoID])
REFERENCES [dbo].[Puesto] ([PuestoID])
GO
ALTER TABLE [dbo].[Salario] CHECK CONSTRAINT [FK_Salario_Puesto]
GO
USE [master]
GO
ALTER DATABASE [Proyecto Final BD 3] SET  READ_WRITE 
GO
