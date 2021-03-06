USE [master]
GO
/****** Object:  Database [Universidad del Este]    Script Date: 25/11/2018 10:30:01 a. m. ******/
CREATE DATABASE [Universidad del Este]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Universidad del Este', FILENAME = N'C:\Users\Miguel angel Riva\Desktop\MSSQL14.SQLEXPRESS\MSSQL\DATA\Universidad del Este.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Universidad del Este_log', FILENAME = N'C:\Users\Miguel angel Riva\Desktop\MSSQL14.SQLEXPRESS\MSSQL\DATA\Universidad del Este_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Universidad del Este] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Universidad del Este].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Universidad del Este] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Universidad del Este] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Universidad del Este] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Universidad del Este] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Universidad del Este] SET ARITHABORT OFF 
GO
ALTER DATABASE [Universidad del Este] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Universidad del Este] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Universidad del Este] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Universidad del Este] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Universidad del Este] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Universidad del Este] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Universidad del Este] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Universidad del Este] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Universidad del Este] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Universidad del Este] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Universidad del Este] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Universidad del Este] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Universidad del Este] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Universidad del Este] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Universidad del Este] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Universidad del Este] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Universidad del Este] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Universidad del Este] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Universidad del Este] SET  MULTI_USER 
GO
ALTER DATABASE [Universidad del Este] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Universidad del Este] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Universidad del Este] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Universidad del Este] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Universidad del Este] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Universidad del Este] SET QUERY_STORE = OFF
GO
USE [Universidad del Este]
GO
/****** Object:  Table [dbo].[Asignatura]    Script Date: 25/11/2018 10:30:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignatura](
	[AsignaturaID] [int] NOT NULL,
	[CursoID] [int] NULL,
	[MaestroID] [int] NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Asignatura] PRIMARY KEY CLUSTERED 
(
	[AsignaturaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 25/11/2018 10:30:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[CursoID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Horario] [varchar](15) NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[CursoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maestros]    Script Date: 25/11/2018 10:30:01 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestros](
	[MaestroID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Sexo] [nchar](10) NULL,
	[Grado] [varchar](50) NULL,
 CONSTRAINT [PK_Maestros] PRIMARY KEY CLUSTERED 
(
	[MaestroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Asignatura] ([AsignaturaID], [CursoID], [MaestroID], [Nombre]) VALUES (1, 1, 1, N'Matematica')
INSERT [dbo].[Asignatura] ([AsignaturaID], [CursoID], [MaestroID], [Nombre]) VALUES (2, 3, 1, N'Materiales')
INSERT [dbo].[Asignatura] ([AsignaturaID], [CursoID], [MaestroID], [Nombre]) VALUES (3, 5, 10, N'Sociedad')
INSERT [dbo].[Asignatura] ([AsignaturaID], [CursoID], [MaestroID], [Nombre]) VALUES (4, 6, 8, N'Ingles')
INSERT [dbo].[Asignatura] ([AsignaturaID], [CursoID], [MaestroID], [Nombre]) VALUES (5, 5, 7, N'Derecho')
INSERT [dbo].[Asignatura] ([AsignaturaID], [CursoID], [MaestroID], [Nombre]) VALUES (6, 6, 2, N'Fisica')
INSERT [dbo].[Asignatura] ([AsignaturaID], [CursoID], [MaestroID], [Nombre]) VALUES (7, 4, 8, N'Frances')
INSERT [dbo].[Asignatura] ([AsignaturaID], [CursoID], [MaestroID], [Nombre]) VALUES (8, 10, 3, N'Biologia')
INSERT [dbo].[Asignatura] ([AsignaturaID], [CursoID], [MaestroID], [Nombre]) VALUES (9, 9, 5, N'Derecho II')
INSERT [dbo].[Asignatura] ([AsignaturaID], [CursoID], [MaestroID], [Nombre]) VALUES (10, 6, 9, NULL)
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (1, N'Derecho', N'Mañana')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (2, N'Arquitectura', N'Mañana')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (3, N'Ing Civil', N'Mañana')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (4, N'Ing Industrial', N'Mañana')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (5, N'Turismo', N'Nocturno')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (6, N'Ing mecanica', N'Nocturno')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (7, N'Educacion', N'Nocturno')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (8, N'Lic Matematica', N'Nocturno')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (9, N'Lic en mercadeo}', N'Nocturno')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (10, N'Lic en economia', N'Nocturno')
INSERT [dbo].[Maestros] ([MaestroID], [Nombre], [Sexo], [Grado]) VALUES (1, N'Hernández Hernández Miguel ', N'M         ', N'Maestria')
INSERT [dbo].[Maestros] ([MaestroID], [Nombre], [Sexo], [Grado]) VALUES (2, N'Maria Vazquez', N'F         ', N'PHD')
INSERT [dbo].[Maestros] ([MaestroID], [Nombre], [Sexo], [Grado]) VALUES (3, N'García Hernández Juana', N'F         ', N'Maestria')
INSERT [dbo].[Maestros] ([MaestroID], [Nombre], [Sexo], [Grado]) VALUES (4, N'Hernández Hernández Francisco ', N'M         ', N'Inginiero civil')
INSERT [dbo].[Maestros] ([MaestroID], [Nombre], [Sexo], [Grado]) VALUES (5, N'García García Margarita ', N'F         ', N'Maestria')
INSERT [dbo].[Maestros] ([MaestroID], [Nombre], [Sexo], [Grado]) VALUES (6, N'García García Pedro ', N'M         ', N'PHD')
INSERT [dbo].[Maestros] ([MaestroID], [Nombre], [Sexo], [Grado]) VALUES (7, N'García Hernández María Guadalupe ', N'F         ', N'Maestria')
INSERT [dbo].[Maestros] ([MaestroID], [Nombre], [Sexo], [Grado]) VALUES (8, N'García García Margarita ', N'F         ', N'PHD')
INSERT [dbo].[Maestros] ([MaestroID], [Nombre], [Sexo], [Grado]) VALUES (9, N'García Hernández José Luis ', N'M         ', N'Maestria')
INSERT [dbo].[Maestros] ([MaestroID], [Nombre], [Sexo], [Grado]) VALUES (10, N'Hernández Hernández Miguel ', N'M         ', NULL)
ALTER TABLE [dbo].[Asignatura]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_Curso] FOREIGN KEY([CursoID])
REFERENCES [dbo].[Curso] ([CursoID])
GO
ALTER TABLE [dbo].[Asignatura] CHECK CONSTRAINT [FK_Asignatura_Curso]
GO
ALTER TABLE [dbo].[Asignatura]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_Maestros] FOREIGN KEY([CursoID])
REFERENCES [dbo].[Maestros] ([MaestroID])
GO
ALTER TABLE [dbo].[Asignatura] CHECK CONSTRAINT [FK_Asignatura_Maestros]
GO
USE [master]
GO
ALTER DATABASE [Universidad del Este] SET  READ_WRITE 
GO
