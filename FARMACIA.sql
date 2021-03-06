USE [master]
GO
/****** Object:  Database [FARMACIA DB]    Script Date: 24/11/2018 03:34:17 p. m. ******/
CREATE DATABASE [FARMACIA DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FARMACIA DB', FILENAME = N'C:\Users\Miguel angel Riva\Desktop\MSSQL14.SQLEXPRESS\MSSQL\DATA\FARMACIA DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FARMACIA DB_log', FILENAME = N'C:\Users\Miguel angel Riva\Desktop\MSSQL14.SQLEXPRESS\MSSQL\DATA\FARMACIA DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FARMACIA DB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FARMACIA DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FARMACIA DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FARMACIA DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FARMACIA DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FARMACIA DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FARMACIA DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FARMACIA DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FARMACIA DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FARMACIA DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FARMACIA DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FARMACIA DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FARMACIA DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FARMACIA DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FARMACIA DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FARMACIA DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FARMACIA DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FARMACIA DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FARMACIA DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FARMACIA DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FARMACIA DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FARMACIA DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FARMACIA DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FARMACIA DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FARMACIA DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FARMACIA DB] SET  MULTI_USER 
GO
ALTER DATABASE [FARMACIA DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FARMACIA DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FARMACIA DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FARMACIA DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FARMACIA DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FARMACIA DB] SET QUERY_STORE = OFF
GO
USE [FARMACIA DB]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 24/11/2018 03:34:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClientesID] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[MedicamentoID] [int] NULL,
	[Sexo] [char](1) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClientesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Laboratorio]    Script Date: 24/11/2018 03:34:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laboratorio](
	[LaboratorioID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](250) NULL,
 CONSTRAINT [PK_Laboratorio] PRIMARY KEY CLUSTERED 
(
	[LaboratorioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 24/11/2018 03:34:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamentos](
	[MedicamentosID] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[SucursalID] [int] NULL,
	[LaboratorioID] [int] NULL,
 CONSTRAINT [PK_Medicamentos] PRIMARY KEY CLUSTERED 
(
	[MedicamentosID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Precio]    Script Date: 24/11/2018 03:34:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precio](
	[PrecioID] [int] NOT NULL,
	[MedicamentoID] [int] NULL,
	[LaboratorioID] [int] NULL,
	[ClienteID] [int] NULL,
	[Precio1] [float] NULL,
	[Precio2] [float] NULL,
	[Precio3] [nchar](10) NULL,
	[Precio4] [nchar](10) NULL,
 CONSTRAINT [PK_Precio] PRIMARY KEY CLUSTERED 
(
	[PrecioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 24/11/2018 03:34:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[SucursalID] [int] NOT NULL,
	[Direccion] [varchar](50) NULL,
	[Horarios] [varchar](30) NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[SucursalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([ClientesID], [Nombre], [MedicamentoID], [Sexo]) VALUES (1, N'Jose Diaz', 1, N'M')
INSERT [dbo].[Clientes] ([ClientesID], [Nombre], [MedicamentoID], [Sexo]) VALUES (2, N'Maria Vazquez', 4, N'F')
INSERT [dbo].[Clientes] ([ClientesID], [Nombre], [MedicamentoID], [Sexo]) VALUES (3, N'García Hernández José Luis ', 4, N'M')
INSERT [dbo].[Clientes] ([ClientesID], [Nombre], [MedicamentoID], [Sexo]) VALUES (4, N'García Hernández Juana', 5, N'F')
INSERT [dbo].[Clientes] ([ClientesID], [Nombre], [MedicamentoID], [Sexo]) VALUES (5, N'Hernández Hernández Francisco ', 1, N'M')
INSERT [dbo].[Clientes] ([ClientesID], [Nombre], [MedicamentoID], [Sexo]) VALUES (6, N'García García Margarita ', 5, N'F')
INSERT [dbo].[Clientes] ([ClientesID], [Nombre], [MedicamentoID], [Sexo]) VALUES (7, N'García García Pedro ', 2, N'M')
INSERT [dbo].[Clientes] ([ClientesID], [Nombre], [MedicamentoID], [Sexo]) VALUES (8, N'García Hernández María Guadalupe ', 5, N'F')
INSERT [dbo].[Clientes] ([ClientesID], [Nombre], [MedicamentoID], [Sexo]) VALUES (9, N'García García Margarita ', 4, N'F')
INSERT [dbo].[Clientes] ([ClientesID], [Nombre], [MedicamentoID], [Sexo]) VALUES (10, N' Hernández Hernández Miguel ', 7, N'M')
INSERT [dbo].[Laboratorio] ([LaboratorioID], [Nombre], [Direccion]) VALUES (1, N'Gerfrar', N'Calle/15, Guaricano, Villa Mella')
INSERT [dbo].[Laboratorio] ([LaboratorioID], [Nombre], [Direccion]) VALUES (2, N'Alianza', N'Calle/13, Residente, Puerto Rico')
INSERT [dbo].[Laboratorio] ([LaboratorioID], [Nombre], [Direccion]) VALUES (3, N'Estrella', N'Calle/09, El vergel, frente al colmado Moreno')
INSERT [dbo].[Laboratorio] ([LaboratorioID], [Nombre], [Direccion]) VALUES (4, N'Fargesa', N'Calle/08, El primaveral. Villa Mella')
INSERT [dbo].[Laboratorio] ([LaboratorioID], [Nombre], [Direccion]) VALUES (5, N'Union', N'Calle/78, La Javilla, Puerto Plata')
INSERT [dbo].[Laboratorio] ([LaboratorioID], [Nombre], [Direccion]) VALUES (6, N'Xlv', N'Calle/37, Romulo Betancourt 279')
INSERT [dbo].[Laboratorio] ([LaboratorioID], [Nombre], [Direccion]) VALUES (7, N'Diamante Inc.', N'Caller/06, Bella Vista')
INSERT [dbo].[Laboratorio] ([LaboratorioID], [Nombre], [Direccion]) VALUES (8, N'La medicine', N'Calle/13, Ricon viejo, Piantini')
INSERT [dbo].[Laboratorio] ([LaboratorioID], [Nombre], [Direccion]) VALUES (9, N'Sued', N'Calle/25 el Rosal, Los Minas')
INSERT [dbo].[Laboratorio] ([LaboratorioID], [Nombre], [Direccion]) VALUES (10, N'Nacion', N'calle/43 El eden, Villa Mella')
INSERT [dbo].[Medicamentos] ([MedicamentosID], [Nombre], [SucursalID], [LaboratorioID]) VALUES (1, N'amoxicilina 1000 mg', 1, 1)
INSERT [dbo].[Medicamentos] ([MedicamentosID], [Nombre], [SucursalID], [LaboratorioID]) VALUES (2, N' ácido clavulánico  500 mg', 2, 2)
INSERT [dbo].[Medicamentos] ([MedicamentosID], [Nombre], [SucursalID], [LaboratorioID]) VALUES (3, N'ampicilina 500 mg', 3, 3)
INSERT [dbo].[Medicamentos] ([MedicamentosID], [Nombre], [SucursalID], [LaboratorioID]) VALUES (4, N'ceftriaxona', 4, 4)
INSERT [dbo].[Medicamentos] ([MedicamentosID], [Nombre], [SucursalID], [LaboratorioID]) VALUES (5, N'Pentasa 1 gr', 5, 5)
INSERT [dbo].[Medicamentos] ([MedicamentosID], [Nombre], [SucursalID], [LaboratorioID]) VALUES (6, N'Isolve  10 mg', 6, 6)
INSERT [dbo].[Medicamentos] ([MedicamentosID], [Nombre], [SucursalID], [LaboratorioID]) VALUES (7, N'Acetaminofen 25 mg', 7, 7)
INSERT [dbo].[Medicamentos] ([MedicamentosID], [Nombre], [SucursalID], [LaboratorioID]) VALUES (8, N'Pedialite', 8, 8)
INSERT [dbo].[Medicamentos] ([MedicamentosID], [Nombre], [SucursalID], [LaboratorioID]) VALUES (9, N'Ibuprofen 100 mg', 9, 9)
INSERT [dbo].[Medicamentos] ([MedicamentosID], [Nombre], [SucursalID], [LaboratorioID]) VALUES (10, N'Omeprazol 20 mg', 10, 10)
INSERT [dbo].[Precio] ([PrecioID], [MedicamentoID], [LaboratorioID], [ClienteID], [Precio1], [Precio2], [Precio3], [Precio4]) VALUES (1, 1, 3, 1, 244, 425, N'243       ', N'50        ')
INSERT [dbo].[Precio] ([PrecioID], [MedicamentoID], [LaboratorioID], [ClienteID], [Precio1], [Precio2], [Precio3], [Precio4]) VALUES (2, 5, 1, 10, 546, 643, N'333       ', N'565       ')
INSERT [dbo].[Precio] ([PrecioID], [MedicamentoID], [LaboratorioID], [ClienteID], [Precio1], [Precio2], [Precio3], [Precio4]) VALUES (3, 7, 1, 7, 266, 454, N'100       ', N'150       ')
INSERT [dbo].[Precio] ([PrecioID], [MedicamentoID], [LaboratorioID], [ClienteID], [Precio1], [Precio2], [Precio3], [Precio4]) VALUES (4, 8, 2, 5, 5454, 4556, N'4586      ', N'5496      ')
INSERT [dbo].[Precio] ([PrecioID], [MedicamentoID], [LaboratorioID], [ClienteID], [Precio1], [Precio2], [Precio3], [Precio4]) VALUES (5, 4, 7, 4, 2666, 2654, N'2499      ', N'459.64    ')
INSERT [dbo].[Precio] ([PrecioID], [MedicamentoID], [LaboratorioID], [ClienteID], [Precio1], [Precio2], [Precio3], [Precio4]) VALUES (6, 5, 5, 6, 469, 946, N'694       ', N'430       ')
INSERT [dbo].[Precio] ([PrecioID], [MedicamentoID], [LaboratorioID], [ClienteID], [Precio1], [Precio2], [Precio3], [Precio4]) VALUES (7, 1, 2, 1, 6919, 6548, N'6454      ', N'6489      ')
INSERT [dbo].[Precio] ([PrecioID], [MedicamentoID], [LaboratorioID], [ClienteID], [Precio1], [Precio2], [Precio3], [Precio4]) VALUES (8, 4, 8, 1, 1236, 1478, N'1452      ', N'1452      ')
INSERT [dbo].[Precio] ([PrecioID], [MedicamentoID], [LaboratorioID], [ClienteID], [Precio1], [Precio2], [Precio3], [Precio4]) VALUES (9, 10, 4, 2, 489, 789, N'799       ', N'1791      ')
INSERT [dbo].[Sucursal] ([SucursalID], [Direccion], [Horarios]) VALUES (1, N'calle/43 El eden, Villa Mella', N'8 am a 9 pm')
INSERT [dbo].[Sucursal] ([SucursalID], [Direccion], [Horarios]) VALUES (2, N'Calle/25 el Rosal, Los Minas', N'8 am a 9 pm')
INSERT [dbo].[Sucursal] ([SucursalID], [Direccion], [Horarios]) VALUES (3, N'Calle/13, Ricon viejo, Piantini', N'8 am a 9 pm')
INSERT [dbo].[Sucursal] ([SucursalID], [Direccion], [Horarios]) VALUES (4, N'Caller/06, Bella Vista', N'8 am a 9 pm')
INSERT [dbo].[Sucursal] ([SucursalID], [Direccion], [Horarios]) VALUES (5, N'Calle/37, Romulo Betancourt 279', N'8 am a 9 pm')
INSERT [dbo].[Sucursal] ([SucursalID], [Direccion], [Horarios]) VALUES (6, N'Calle/78, La Javilla, Puerto Plata', N'8 am a 9 pm')
INSERT [dbo].[Sucursal] ([SucursalID], [Direccion], [Horarios]) VALUES (7, N'Calle/08, El primaveral. Villa Mella', N'8 am a 9 pm')
INSERT [dbo].[Sucursal] ([SucursalID], [Direccion], [Horarios]) VALUES (8, N'Calle/09, El vergel, frente al colmado Moreno', N'8 am a 9 pm')
INSERT [dbo].[Sucursal] ([SucursalID], [Direccion], [Horarios]) VALUES (9, N'Calle/13, Residente, Puerto Rico', N'8 am a 9 pm')
INSERT [dbo].[Sucursal] ([SucursalID], [Direccion], [Horarios]) VALUES (10, N'Calle/15, Guaricano, Villa Mella', N'8 am a 9 pm')
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Medicamentos] FOREIGN KEY([MedicamentoID])
REFERENCES [dbo].[Medicamentos] ([MedicamentosID])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Medicamentos]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Precio] FOREIGN KEY([MedicamentoID])
REFERENCES [dbo].[Precio] ([PrecioID])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Precio]
GO
ALTER TABLE [dbo].[Medicamentos]  WITH CHECK ADD  CONSTRAINT [FK_Medicamentos_Laboratorio] FOREIGN KEY([LaboratorioID])
REFERENCES [dbo].[Laboratorio] ([LaboratorioID])
GO
ALTER TABLE [dbo].[Medicamentos] CHECK CONSTRAINT [FK_Medicamentos_Laboratorio]
GO
ALTER TABLE [dbo].[Medicamentos]  WITH CHECK ADD  CONSTRAINT [FK_Medicamentos_Sucursal] FOREIGN KEY([SucursalID])
REFERENCES [dbo].[Sucursal] ([SucursalID])
GO
ALTER TABLE [dbo].[Medicamentos] CHECK CONSTRAINT [FK_Medicamentos_Sucursal]
GO
ALTER TABLE [dbo].[Precio]  WITH CHECK ADD  CONSTRAINT [FK_Precio_Clientes] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Clientes] ([ClientesID])
GO
ALTER TABLE [dbo].[Precio] CHECK CONSTRAINT [FK_Precio_Clientes]
GO
USE [master]
GO
ALTER DATABASE [FARMACIA DB] SET  READ_WRITE 
GO
