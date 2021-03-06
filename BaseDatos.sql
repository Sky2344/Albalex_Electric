USE [PROYECTOSW]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 11/28/2020 02:27:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[IdEstado] [int] IDENTITY(1,1) NOT NULL,
	[NomEstado] [varchar](15) NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Distrito]    Script Date: 11/28/2020 02:27:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Distrito](
	[IdDistrito] [int] IDENTITY(1,1) NOT NULL,
	[Distrito] [varchar](30) NULL,
 CONSTRAINT [PK_Distrito] PRIMARY KEY CLUSTERED 
(
	[IdDistrito] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 11/28/2020 02:27:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[DNI_RUC] [varchar](12) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [varchar](12) NULL,
	[Email] [varchar](30) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[DNI_RUC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 11/28/2020 02:27:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](20) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[InsertarCliente]    Script Date: 11/28/2020 02:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarCliente](
@DNI_RUC [varchar](12),
@Nombre [varchar](50),
@Direccion [varchar](50),
@Telefono [varchar](12),
@Email [varchar](30)
)
AS
BEGIN
	insert into Cliente (DNI_RUC,Nombre,Direccion,Telefono,Email)
	values(@DNI_RUC,@Nombre,@Direccion,@Telefono,@Email)
END
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 11/28/2020 02:27:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[CodigoPro] [varchar](8) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[IdCategoria] [int] NULL,
	[Stock] [int] NULL,
	[Precio] [float] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[CodigoPro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 11/28/2020 02:27:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pedido](
	[IdPedido] [int] IDENTITY(1,1) NOT NULL,
	[DNI_RUC] [varchar](12) NULL,
	[Fecha] [varchar](10) NULL,
	[MontoTotal] [float] NULL,
	[Direccion] [varchar](50) NULL,
	[IdDistrito] [int] NULL,
	[IdEstado] [int] NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[IdPedido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[BusquedaPorDni_Ruc]    Script Date: 11/28/2020 02:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BusquedaPorDni_Ruc](
@DNI_RUC varchar(12)
)	
AS
BEGIN
		select DNI_RUC,Nombre
		from Cliente
		where DNI_RUC=@DNI_RUC
END
GO
/****** Object:  Table [dbo].[DetallePedido]    Script Date: 11/28/2020 02:27:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetallePedido](
	[CodDetallePedido] [int] IDENTITY(1,1) NOT NULL,
	[IdPedido] [int] NULL,
	[CodigoPro] [varchar](8) NULL,
	[Cantidad] [int] NULL,
	[PrecioVenta] [float] NULL,
 CONSTRAINT [PK_DetallePedido] PRIMARY KEY CLUSTERED 
(
	[CodDetallePedido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[ModificarProducto]    Script Date: 11/28/2020 02:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ModificarProducto](
@CodigoPro varchar(8),
@Stock int,
@Precio float

)	
AS
BEGIN
	update Producto set Stock=@Stock,
						Precio=@Precio
	where CodigoPro=@CodigoPro
END
GO
/****** Object:  StoredProcedure [dbo].[ModificarEstadoPedido]    Script Date: 11/28/2020 02:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ModificarEstadoPedido]
(
@IdPedido int,
@IdEstado int
)
as
begin
	update Pedido set IdEstado=@IdEstado
	where IdPedido=@IdPedido
end
GO
/****** Object:  View [dbo].[ListaProducto]    Script Date: 11/28/2020 02:27:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ListaProducto]
as select CodigoPro,Nombre,NombreCategoria,Stock,Precio 
from Producto, Categoria 
where Producto.IdCategoria = Categoria.IdCategoria
GO
/****** Object:  View [dbo].[ListaPedido]    Script Date: 11/28/2020 02:27:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ListaPedido]
AS
SELECT     dbo.Pedido.IdPedido, dbo.Cliente.Nombre, dbo.Pedido.Direccion, dbo.Distrito.Distrito, dbo.Pedido.Fecha, dbo.Pedido.MontoTotal, dbo.Estado.NomEstado AS Estado
FROM         dbo.Cliente INNER JOIN
                      dbo.Pedido ON dbo.Cliente.DNI_RUC = dbo.Pedido.DNI_RUC INNER JOIN
                      dbo.Estado ON dbo.Pedido.IdEstado = dbo.Estado.IdEstado INNER JOIN
                      dbo.Distrito ON dbo.Pedido.IdDistrito = dbo.Distrito.IdDistrito
GO
/****** Object:  StoredProcedure [dbo].[InsertarProducto]    Script Date: 11/28/2020 02:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarProducto](
@CodigoPro [varchar](8),
@Nombre [varchar](50),
@IdCategoria int,
@Stock int,
@Precio float
)
AS
BEGIN
	insert into Producto (CodigoPro,Nombre,IdCategoria,Stock,Precio)
	values(@CodigoPro,@Nombre,@IdCategoria,@Stock,@Precio)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarPedido]    Script Date: 11/28/2020 02:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarPedido]
(
@DNI_RUC varchar(12),
@Fecha varchar(10),
@MontoTotal float,
@Direccion varchar(50),
@IdDistrito int,
@IdEstado int
)
AS
BEGIN
	insert into Pedido (DNI_RUC,Fecha,MontoTotal,Direccion,IdDistrito,IdEstado)
	values(@DNI_RUC,@Fecha,@MontoTotal,@Direccion,@IdDistrito,@IdEstado)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarDetallePedido]    Script Date: 11/28/2020 02:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarDetallePedido]
(
@IdPedido int,
@CodigoPro varchar(8),
@Cantidad int,
@PrecioVenta float
)
AS
BEGIN
	insert into DetallePedido (IdPedido,CodigoPro,Cantidad,PrecioVenta)
	values(@IdPedido,@CodigoPro,@Cantidad,@PrecioVenta)
END
GO
/****** Object:  ForeignKey [FK_DetallePedido_Pedido]    Script Date: 11/28/2020 02:27:56 ******/
ALTER TABLE [dbo].[DetallePedido]  WITH CHECK ADD  CONSTRAINT [FK_DetallePedido_Pedido] FOREIGN KEY([IdPedido])
REFERENCES [dbo].[Pedido] ([IdPedido])
GO
ALTER TABLE [dbo].[DetallePedido] CHECK CONSTRAINT [FK_DetallePedido_Pedido]
GO
/****** Object:  ForeignKey [FK_DetallePedido_Producto]    Script Date: 11/28/2020 02:27:56 ******/
ALTER TABLE [dbo].[DetallePedido]  WITH CHECK ADD  CONSTRAINT [FK_DetallePedido_Producto] FOREIGN KEY([CodigoPro])
REFERENCES [dbo].[Producto] ([CodigoPro])
GO
ALTER TABLE [dbo].[DetallePedido] CHECK CONSTRAINT [FK_DetallePedido_Producto]
GO
/****** Object:  ForeignKey [FK_Pedido_Cliente]    Script Date: 11/28/2020 02:27:56 ******/
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Cliente] FOREIGN KEY([DNI_RUC])
REFERENCES [dbo].[Cliente] ([DNI_RUC])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Cliente]
GO
/****** Object:  ForeignKey [FK_Pedido_Distrito]    Script Date: 11/28/2020 02:27:56 ******/
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Distrito] FOREIGN KEY([IdDistrito])
REFERENCES [dbo].[Distrito] ([IdDistrito])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Distrito]
GO
/****** Object:  ForeignKey [FK_Pedido_Estado]    Script Date: 11/28/2020 02:27:56 ******/
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Estado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Estado]
GO
/****** Object:  ForeignKey [FK_Producto_Categoria]    Script Date: 11/28/2020 02:27:56 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([IdCategoria])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
