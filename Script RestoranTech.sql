USE [RestoranTech]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 5/5/2021 11:04:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [nvarchar](15) NULL,
	[Documento] [varchar](14) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientePedido]    Script Date: 5/5/2021 11:04:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientePedido](
	[IdClientePedido] [int] IDENTITY(1,1) NOT NULL,
	[IdPedido] [int] NULL,
	[IdCliente] [int] NULL,
	[Fecha] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdClientePedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBebida]    Script Date: 5/5/2021 11:04:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBebida](
	[Bebidas] [int] IDENTITY(1,1) NOT NULL,
	[CategoriaBebida] [int] NULL,
	[Bebida] [varchar](70) NOT NULL,
	[Precio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Bebidas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategoriaBebida]    Script Date: 5/5/2021 11:04:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategoriaBebida](
	[CategoriaBebida] [int] NOT NULL,
	[Descripcion] [varchar](70) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoriaBebida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategoriaComida]    Script Date: 5/5/2021 11:04:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategoriaComida](
	[CategoriaComida] [int] NOT NULL,
	[Descripcion] [varchar](70) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoriaComida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComida]    Script Date: 5/5/2021 11:04:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComida](
	[Comidas] [int] IDENTITY(1,1) NOT NULL,
	[CategoriaComida] [int] NULL,
	[Comida] [varchar](70) NOT NULL,
	[Precio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Comidas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMesa]    Script Date: 5/5/2021 11:04:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMesa](
	[Mesas] [int] NOT NULL,
	[Mesa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Mesas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPedido]    Script Date: 5/5/2021 11:04:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPedido](
	[IdPedido] [int] IDENTITY(1,1) NOT NULL,
	[Mesas] [int] NULL,
	[TotalPagar] [int] NOT NULL,
	[NombreCliente] [varchar](50) NULL,
	[Bebidas] [int] NULL,
	[Comidas] [int] NULL,
	[Ordenes] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoOrden]    Script Date: 5/5/2021 11:04:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoOrden](
	[Ordenes] [int] NOT NULL,
	[Orden] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ordenes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 5/5/2021 11:04:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[PrimerNombre] [nvarchar](100) NOT NULL,
	[SegundoNombre] [nvarchar](100) NOT NULL,
	[Posicion] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Telefono], [Documento]) VALUES (1, N'Daniel Olivero', N'809-786-7654', N'0')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Telefono], [Documento]) VALUES (2, N'Ewdewer Perez', N'809-876-6432', N'0')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Telefono], [Documento]) VALUES (3, N'Julian Borquez', N'809-987-8765', N'0')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Telefono], [Documento]) VALUES (4, N'Esther Feliz', N'809-876-2342', N'0')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Telefono], [Documento]) VALUES (5, N'Melvin Espinosa', N'809-654-7649', N'0')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[ClientePedido] ON 

INSERT [dbo].[ClientePedido] ([IdClientePedido], [IdPedido], [IdCliente], [Fecha]) VALUES (5, 13, 1, CAST(N'2021-05-02T00:00:00.000' AS DateTime))
INSERT [dbo].[ClientePedido] ([IdClientePedido], [IdPedido], [IdCliente], [Fecha]) VALUES (6, 14, 2, CAST(N'2021-06-02T00:00:00.000' AS DateTime))
INSERT [dbo].[ClientePedido] ([IdClientePedido], [IdPedido], [IdCliente], [Fecha]) VALUES (7, 15, 3, CAST(N'2021-06-02T00:00:00.000' AS DateTime))
INSERT [dbo].[ClientePedido] ([IdClientePedido], [IdPedido], [IdCliente], [Fecha]) VALUES (8, 17, 4, CAST(N'2021-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[ClientePedido] ([IdClientePedido], [IdPedido], [IdCliente], [Fecha]) VALUES (12, 18, 5, CAST(N'2021-10-03T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ClientePedido] OFF
SET IDENTITY_INSERT [dbo].[tblBebida] ON 

INSERT [dbo].[tblBebida] ([Bebidas], [CategoriaBebida], [Bebida], [Precio]) VALUES (2, 3, N'China', 75)
INSERT [dbo].[tblBebida] ([Bebidas], [CategoriaBebida], [Bebida], [Precio]) VALUES (3, 4, N'Choco Rica', 50)
INSERT [dbo].[tblBebida] ([Bebidas], [CategoriaBebida], [Bebida], [Precio]) VALUES (4, 2, N'Sidra Manzana', 325)
INSERT [dbo].[tblBebida] ([Bebidas], [CategoriaBebida], [Bebida], [Precio]) VALUES (5, 3, N'Chinola', 65)
INSERT [dbo].[tblBebida] ([Bebidas], [CategoriaBebida], [Bebida], [Precio]) VALUES (6, 3, N'Zapote', 90)
INSERT [dbo].[tblBebida] ([Bebidas], [CategoriaBebida], [Bebida], [Precio]) VALUES (7, 4, N'ListaMilk', 70)
INSERT [dbo].[tblBebida] ([Bebidas], [CategoriaBebida], [Bebida], [Precio]) VALUES (8, 1, N'Lechoza', 60)
SET IDENTITY_INSERT [dbo].[tblBebida] OFF
INSERT [dbo].[tblCategoriaBebida] ([CategoriaBebida], [Descripcion]) VALUES (1, N'Batidas')
INSERT [dbo].[tblCategoriaBebida] ([CategoriaBebida], [Descripcion]) VALUES (2, N'Alcoholicas')
INSERT [dbo].[tblCategoriaBebida] ([CategoriaBebida], [Descripcion]) VALUES (3, N'Jugos Naturales')
INSERT [dbo].[tblCategoriaBebida] ([CategoriaBebida], [Descripcion]) VALUES (4, N'Lacteos')
INSERT [dbo].[tblCategoriaBebida] ([CategoriaBebida], [Descripcion]) VALUES (5, N'Agua')
INSERT [dbo].[tblCategoriaComida] ([CategoriaComida], [Descripcion]) VALUES (1, N'Comida Criolla')
INSERT [dbo].[tblCategoriaComida] ([CategoriaComida], [Descripcion]) VALUES (2, N'Comida Marina')
INSERT [dbo].[tblCategoriaComida] ([CategoriaComida], [Descripcion]) VALUES (3, N'Comida Rapida')
INSERT [dbo].[tblCategoriaComida] ([CategoriaComida], [Descripcion]) VALUES (4, N'Platos del dia')
INSERT [dbo].[tblCategoriaComida] ([CategoriaComida], [Descripcion]) VALUES (5, N'Postres')
SET IDENTITY_INSERT [dbo].[tblComida] ON 

INSERT [dbo].[tblComida] ([Comidas], [CategoriaComida], [Comida], [Precio]) VALUES (1, 3, N'Hamburguesas', 160)
INSERT [dbo].[tblComida] ([Comidas], [CategoriaComida], [Comida], [Precio]) VALUES (2, 1, N'Arroz, Pollo, Abichuela', 150)
INSERT [dbo].[tblComida] ([Comidas], [CategoriaComida], [Comida], [Precio]) VALUES (3, 5, N'Crema de Fresas', 65)
INSERT [dbo].[tblComida] ([Comidas], [CategoriaComida], [Comida], [Precio]) VALUES (4, 5, N'Jarabe de Chocolate', 129)
INSERT [dbo].[tblComida] ([Comidas], [CategoriaComida], [Comida], [Precio]) VALUES (5, 2, N'Pulpo a la plancha', 275)
INSERT [dbo].[tblComida] ([Comidas], [CategoriaComida], [Comida], [Precio]) VALUES (6, 2, N'Langosta al carbon ', 400)
INSERT [dbo].[tblComida] ([Comidas], [CategoriaComida], [Comida], [Precio]) VALUES (7, 1, N'Mangun con guizos', 120)
SET IDENTITY_INSERT [dbo].[tblComida] OFF
INSERT [dbo].[tblMesa] ([Mesas], [Mesa]) VALUES (1, 1)
INSERT [dbo].[tblMesa] ([Mesas], [Mesa]) VALUES (2, 2)
INSERT [dbo].[tblMesa] ([Mesas], [Mesa]) VALUES (3, 3)
INSERT [dbo].[tblMesa] ([Mesas], [Mesa]) VALUES (4, 4)
INSERT [dbo].[tblMesa] ([Mesas], [Mesa]) VALUES (5, 5)
SET IDENTITY_INSERT [dbo].[tblPedido] ON 

INSERT [dbo].[tblPedido] ([IdPedido], [Mesas], [TotalPagar], [NombreCliente], [Bebidas], [Comidas], [Ordenes]) VALUES (13, 1, 475, N'Luis Hernandez', 2, 6, 2)
INSERT [dbo].[tblPedido] ([IdPedido], [Mesas], [TotalPagar], [NombreCliente], [Bebidas], [Comidas], [Ordenes]) VALUES (14, 1, 300, N'Julio Feliz', 8, 2, 1)
INSERT [dbo].[tblPedido] ([IdPedido], [Mesas], [TotalPagar], [NombreCliente], [Bebidas], [Comidas], [Ordenes]) VALUES (15, 5, 270, N'Sandra Jimenez', 2, 7, 2)
INSERT [dbo].[tblPedido] ([IdPedido], [Mesas], [TotalPagar], [NombreCliente], [Bebidas], [Comidas], [Ordenes]) VALUES (17, 4, 500, N'Ewdewer Perez', 3, 2, 1)
INSERT [dbo].[tblPedido] ([IdPedido], [Mesas], [TotalPagar], [NombreCliente], [Bebidas], [Comidas], [Ordenes]) VALUES (18, 3, 200, N'Daniel Olivero', 2, 1, 1)
SET IDENTITY_INSERT [dbo].[tblPedido] OFF
INSERT [dbo].[TipoOrden] ([Ordenes], [Orden]) VALUES (1, N'Comer Aqui')
INSERT [dbo].[TipoOrden] ([Ordenes], [Orden]) VALUES (2, N'Llevar a Casa')
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([UserID], [LoginName], [Password], [PrimerNombre], [SegundoNombre], [Posicion], [Email]) VALUES (6, N'Daniel_O', N'D1234567', N'Daniel', N'Olivero', N'Cajero', N'Daniel@gmail.com')
INSERT [dbo].[Usuario] ([UserID], [LoginName], [Password], [PrimerNombre], [SegundoNombre], [Posicion], [Email]) VALUES (7, N'Ewdewer_P', N'E6755', N'Ewdewer', N'Perez', N'Administrador', N'EwdewerPerez@gmail.com')
INSERT [dbo].[Usuario] ([UserID], [LoginName], [Password], [PrimerNombre], [SegundoNombre], [Posicion], [Email]) VALUES (8, N'Cliente', N'C123', N'Cliente 1', N'Cliente', N'Cliente', N'Clientez@gmail.com')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuario__DB8464FF03F4A4E3]    Script Date: 5/5/2021 11:04:14 p. m. ******/
ALTER TABLE [dbo].[Usuario] ADD UNIQUE NONCLUSTERED 
(
	[LoginName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientePedido]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[ClientePedido]  WITH CHECK ADD FOREIGN KEY([IdPedido])
REFERENCES [dbo].[tblPedido] ([IdPedido])
GO
ALTER TABLE [dbo].[tblBebida]  WITH CHECK ADD FOREIGN KEY([CategoriaBebida])
REFERENCES [dbo].[tblCategoriaBebida] ([CategoriaBebida])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblComida]  WITH CHECK ADD FOREIGN KEY([CategoriaComida])
REFERENCES [dbo].[tblCategoriaComida] ([CategoriaComida])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblPedido]  WITH CHECK ADD FOREIGN KEY([Bebidas])
REFERENCES [dbo].[tblBebida] ([Bebidas])
GO
ALTER TABLE [dbo].[tblPedido]  WITH CHECK ADD FOREIGN KEY([Comidas])
REFERENCES [dbo].[tblComida] ([Comidas])
GO
ALTER TABLE [dbo].[tblPedido]  WITH CHECK ADD FOREIGN KEY([Mesas])
REFERENCES [dbo].[tblMesa] ([Mesas])
GO
ALTER TABLE [dbo].[tblPedido]  WITH CHECK ADD FOREIGN KEY([Ordenes])
REFERENCES [dbo].[TipoOrden] ([Ordenes])
GO
