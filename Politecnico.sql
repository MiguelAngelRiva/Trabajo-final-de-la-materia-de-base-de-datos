USE [master]
GO
/****** Object:  Database [Politecnico Juan Bosch]    Script Date: 25/11/2018 10:00:27 a. m. ******/
CREATE DATABASE [Politecnico Juan Bosch]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Politecnico Juan Bosch', FILENAME = N'C:\Users\Miguel angel Riva\Desktop\MSSQL14.SQLEXPRESS\MSSQL\DATA\Politecnico Juan Bosch.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Politecnico Juan Bosch_log', FILENAME = N'C:\Users\Miguel angel Riva\Desktop\MSSQL14.SQLEXPRESS\MSSQL\DATA\Politecnico Juan Bosch_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Politecnico Juan Bosch] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Politecnico Juan Bosch].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Politecnico Juan Bosch] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET ARITHABORT OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET  MULTI_USER 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Politecnico Juan Bosch] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Politecnico Juan Bosch] SET QUERY_STORE = OFF
GO
USE [Politecnico Juan Bosch]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 25/11/2018 10:00:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[CursoID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Horario] [varchar](50) NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[CursoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 25/11/2018 10:00:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[EstudianteID] [int] NOT NULL,
	[Nombre] [varchar](70) NULL,
	[Matricula] [varchar](50) NULL,
	[CursoID] [int] NULL,
	[Sexo] [char](1) NULL,
 CONSTRAINT [PK_Estudiante] PRIMARY KEY CLUSTERED 
(
	[EstudianteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 25/11/2018 10:00:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[MateriaID] [int] NOT NULL,
	[CursoID] [int] NULL,
	[ProfesorID] [int] NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Materia] PRIMARY KEY CLUSTERED 
(
	[MateriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 25/11/2018 10:00:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesor](
	[ProfesorID] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Sexo] [char](1) NULL,
	[Telefono] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (1, N'Primero A', N'Matutino')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (2, N'Primero B', N'Matutino')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (3, N'Segundo A', N'Matutino')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (4, N'Segundo B', N'Matutino')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (5, N'Tercero A', N'Vespertino')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (6, N'Tercero B', N'Vespertino')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (7, N'Tercero C', N'Vespertino')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (8, N'Cuarto A', N'Vespertino')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (9, N'Cuarto B', N'Nocturno')
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Horario]) VALUES (10, N'Cuarto C', N'Vespertino')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Sexo]) VALUES (1, N'Hernández Hernández Miguel ', N'1223', 1, N'M')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Sexo]) VALUES (2, N'García García Margarita ', N'1224', 2, N'F')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Sexo]) VALUES (3, N'García Hernández María Guadalupe ', N'1225', 3, N'F')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Sexo]) VALUES (4, N'García García Pedro ', N'1226', 4, N'M')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Sexo]) VALUES (5, N'García García Margarita ', N'1227', 5, N'F')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Sexo]) VALUES (6, N'Hernández Hernández Francisco ', N'1228', 6, N'M')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Sexo]) VALUES (7, N'García García Margarita ', N'1229', 7, N'F')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Sexo]) VALUES (8, N'Hernández Hernández Francisco ', N'1230', 8, N'M')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Sexo]) VALUES (9, N'García Hernández Juana', N'1231', 9, N'F')
INSERT [dbo].[Estudiante] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Sexo]) VALUES (10, N'García Hernández José Luis ', N'1232', 10, NULL)
INSERT [dbo].[Materia] ([MateriaID], [CursoID], [ProfesorID], [Nombre]) VALUES (1, 1, 1, N'Matematica')
INSERT [dbo].[Materia] ([MateriaID], [CursoID], [ProfesorID], [Nombre]) VALUES (2, 2, 2, N'Sociales')
INSERT [dbo].[Materia] ([MateriaID], [CursoID], [ProfesorID], [Nombre]) VALUES (3, 3, 3, N'Ingles')
INSERT [dbo].[Materia] ([MateriaID], [CursoID], [ProfesorID], [Nombre]) VALUES (4, 4, 4, NULL)
INSERT [dbo].[Materia] ([MateriaID], [CursoID], [ProfesorID], [Nombre]) VALUES (5, 5, 5, NULL)
INSERT [dbo].[Materia] ([MateriaID], [CursoID], [ProfesorID], [Nombre]) VALUES (6, 6, 6, NULL)
INSERT [dbo].[Materia] ([MateriaID], [CursoID], [ProfesorID], [Nombre]) VALUES (7, 7, 7, NULL)
INSERT [dbo].[Materia] ([MateriaID], [CursoID], [ProfesorID], [Nombre]) VALUES (8, 8, 8, NULL)
INSERT [dbo].[Materia] ([MateriaID], [CursoID], [ProfesorID], [Nombre]) VALUES (9, 9, 9, NULL)
INSERT [dbo].[Materia] ([MateriaID], [CursoID], [ProfesorID], [Nombre]) VALUES (10, 10, 10, NULL)
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [Sexo], [Telefono]) VALUES (1, N'Jose Diaz', N'M', N'809-844-4986')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [Sexo], [Telefono]) VALUES (2, N'Maria Vazquez', N'F', N'849-496-8632')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [Sexo], [Telefono]) VALUES (3, N'García Hernández José Luis ', N'M', N'849-799-5034')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [Sexo], [Telefono]) VALUES (4, N'García Hernández Juana', N'F', N'809-462-1260')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [Sexo], [Telefono]) VALUES (5, N'Hernández Hernández Francisco ', N'M', N'809-446-5632')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [Sexo], [Telefono]) VALUES (6, N'García García Margarita ', N'F', N'849-793-4564')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [Sexo], [Telefono]) VALUES (7, N'García García Pedro ', N'M', N'829-781-7412')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [Sexo], [Telefono]) VALUES (8, N'García Hernández María Guadalupe ', N'F', N'809-566-6341')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [Sexo], [Telefono]) VALUES (9, N'García García Margarita ', N'F', N'809-866-6534')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [Sexo], [Telefono]) VALUES (10, N'Hernández Hernández Miguel ', N'M', N'809-564-5453')
INSERT [dbo].[Profesor] ([ProfesorID], [Nombre], [Sexo], [Telefono]) VALUES (NULL, NULL, NULL, N'')
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD  CONSTRAINT [FK_Estudiante_Curso] FOREIGN KEY([CursoID])
REFERENCES [dbo].[Curso] ([CursoID])
GO
ALTER TABLE [dbo].[Estudiante] CHECK CONSTRAINT [FK_Estudiante_Curso]
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Curso] FOREIGN KEY([CursoID])
REFERENCES [dbo].[Curso] ([CursoID])
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Curso]
GO
ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD  CONSTRAINT [FK_Profesor_Materia] FOREIGN KEY([ProfesorID])
REFERENCES [dbo].[Materia] ([MateriaID])
GO
ALTER TABLE [dbo].[Profesor] CHECK CONSTRAINT [FK_Profesor_Materia]
GO
USE [master]
GO
ALTER DATABASE [Politecnico Juan Bosch] SET  READ_WRITE 
GO
