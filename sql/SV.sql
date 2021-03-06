USE [master]
GO
/****** Object:  Database [SV_db]    Script Date: 3/30/2022 8:59:32 AM ******/
CREATE DATABASE [SV_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SV_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SV_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SV_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SV_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SV_db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SV_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SV_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SV_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SV_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SV_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SV_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [SV_db] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SV_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SV_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SV_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SV_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SV_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SV_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SV_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SV_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SV_db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SV_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SV_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SV_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SV_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SV_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SV_db] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SV_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SV_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SV_db] SET  MULTI_USER 
GO
ALTER DATABASE [SV_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SV_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SV_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SV_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SV_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SV_db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SV_db] SET QUERY_STORE = OFF
GO
USE [SV_db]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/30/2022 8:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aeronaves]    Script Date: 3/30/2022 8:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aeronaves](
	[Id] [uniqueidentifier] NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[Fabricante] [varchar](50) NOT NULL,
	[TotalDeAssentos] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Aeronaves] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aeroportos]    Script Date: 3/30/2022 8:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aeroportos](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[CidadeId] [uniqueidentifier] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Aeroportos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/30/2022 8:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/30/2022 8:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/30/2022 8:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/30/2022 8:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/30/2022 8:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/30/2022 8:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[NomeDeUtilizador] [varchar](100) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/30/2022 8:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assentos]    Script Date: 3/30/2022 8:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assentos](
	[Id] [uniqueidentifier] NOT NULL,
	[Numero] [int] NOT NULL,
	[AeronaveId] [uniqueidentifier] NOT NULL,
	[ClasseId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Assentos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriasFuncionario]    Script Date: 3/30/2022 8:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriasFuncionario](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Descricao] [varchar](max) NULL,
 CONSTRAINT [PK_CategoriasFuncionario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cidades]    Script Date: 3/30/2022 8:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cidades](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
	[Descricao] [varchar](max) NULL,
 CONSTRAINT [PK_Cidades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 3/30/2022 8:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[Id] [uniqueidentifier] NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcionarios]    Script Date: 3/30/2022 8:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionarios](
	[Id] [uniqueidentifier] NOT NULL,
	[CategoriaFuncionarioId] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[DataNascimento] [datetime2](7) NOT NULL,
	[Naturalidade] [varchar](50) NOT NULL,
	[Nacionalidade] [varchar](50) NOT NULL,
	[Documento] [varchar](50) NOT NULL,
	[NumeroDocumento] [varchar](50) NOT NULL,
	[NivelAcademico] [varchar](50) NULL,
	[AreaAcademica] [varchar](50) NULL,
	[Telefone] [varchar](50) NOT NULL,
	[Email] [varchar](200) NOT NULL,
	[Endereco] [varchar](500) NOT NULL,
	[Sexo] [varchar](30) NOT NULL,
	[EstadoCivil] [varchar](30) NOT NULL,
	[Imagem] [varchar](255) NOT NULL,
	[Ativo] [bit] NOT NULL,
	[Observacao] [varchar](max) NULL,
 CONSTRAINT [PK_Funcionarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220206164648_Initial', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220219133617_FirstMigrations', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220328113952_IdentityAdded', N'5.0.13')
GO
INSERT [dbo].[Aeronaves] ([Id], [Modelo], [Fabricante], [TotalDeAssentos], [Activo]) VALUES (N'1fd8bfea-5762-4a5b-5307-08da09f207a1', N'Boeng 007', N'Xing Yang', 27, 1)
GO
INSERT [dbo].[Aeroportos] ([Id], [Nome], [CidadeId], [Activo]) VALUES (N'83ed988f-ecc5-497d-24cb-08da09f22b0b', N'4 de Fevereiro', N'818d2845-384e-4488-668a-08da036e3836', 1)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'818d2845-384e-4488-668a-08da036e3836', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ff172393-19fe-4c82-96b4-08da0e4dddfc', N'Operador', N'OPERADOR', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0e8265b8-98a7-4731-00fa-08da10bd34c6', N'818d2845-384e-4488-668a-08da036e3836')
GO
INSERT [dbo].[AspNetUsers] ([Id], [NomeDeUtilizador], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0e8265b8-98a7-4731-00fa-08da10bd34c6', N'Moyra Português', N'moyra@email.com', N'MOYRA@EMAIL.COM', N'moyra@email.com', N'MOYRA@EMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBZo3WPkdQBziZl0IE9nux6F/NxyFbesXc5DABH4TNCMxCumoLyZbWbmj89fsNM6YA==', N'FXWL7H7IGWBLJHOCWJVX22IIOHRXWROL', N'838c3cd6-3f8d-4b82-ae84-0973f3a91bbb', N'922880633', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[CategoriasFuncionario] ([Id], [Nome], [Descricao]) VALUES (N'196bf344-c1cd-4519-580a-08da0806d41f', N'Piloto', N'Elemento responsável pelo administração do voo')
GO
INSERT [dbo].[Cidades] ([Id], [Nome], [Pais], [Descricao]) VALUES (N'818d2845-384e-4488-668a-08da036e3836', N'Luanda', N'Angola', N'Cidade mais difícil de se viver no mundo')
INSERT [dbo].[Cidades] ([Id], [Nome], [Pais], [Descricao]) VALUES (N'ff172393-19fe-4c82-96b4-08da0e4dddfc', N'Malange', N'Angola', NULL)
GO
INSERT [dbo].[Classes] ([Id], [Descricao]) VALUES (N'7a510e97-53ca-45d0-c7d9-08da09f1f5bc', N'Executiva')
GO
/****** Object:  Index [IX_Aeroportos_CidadeId]    Script Date: 3/30/2022 8:59:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_Aeroportos_CidadeId] ON [dbo].[Aeroportos]
(
	[CidadeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3/30/2022 8:59:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/30/2022 8:59:32 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3/30/2022 8:59:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3/30/2022 8:59:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3/30/2022 8:59:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3/30/2022 8:59:32 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/30/2022 8:59:32 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Assentos_AeronaveId]    Script Date: 3/30/2022 8:59:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_Assentos_AeronaveId] ON [dbo].[Assentos]
(
	[AeronaveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Assentos_ClasseId]    Script Date: 3/30/2022 8:59:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_Assentos_ClasseId] ON [dbo].[Assentos]
(
	[ClasseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Funcionarios_CategoriaFuncionarioId]    Script Date: 3/30/2022 8:59:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_Funcionarios_CategoriaFuncionarioId] ON [dbo].[Funcionarios]
(
	[CategoriaFuncionarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Aeroportos]  WITH CHECK ADD  CONSTRAINT [FK_Aeroportos_Cidades_CidadeId] FOREIGN KEY([CidadeId])
REFERENCES [dbo].[Cidades] ([Id])
GO
ALTER TABLE [dbo].[Aeroportos] CHECK CONSTRAINT [FK_Aeroportos_Cidades_CidadeId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Assentos]  WITH CHECK ADD  CONSTRAINT [FK_Assentos_Aeronaves_AeronaveId] FOREIGN KEY([AeronaveId])
REFERENCES [dbo].[Aeronaves] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Assentos] CHECK CONSTRAINT [FK_Assentos_Aeronaves_AeronaveId]
GO
ALTER TABLE [dbo].[Assentos]  WITH CHECK ADD  CONSTRAINT [FK_Assentos_Classes_ClasseId] FOREIGN KEY([ClasseId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Assentos] CHECK CONSTRAINT [FK_Assentos_Classes_ClasseId]
GO
ALTER TABLE [dbo].[Funcionarios]  WITH CHECK ADD  CONSTRAINT [FK_Funcionarios_CategoriasFuncionario_CategoriaFuncionarioId] FOREIGN KEY([CategoriaFuncionarioId])
REFERENCES [dbo].[CategoriasFuncionario] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Funcionarios] CHECK CONSTRAINT [FK_Funcionarios_CategoriasFuncionario_CategoriaFuncionarioId]
GO
USE [master]
GO
ALTER DATABASE [SV_db] SET  READ_WRITE 
GO
