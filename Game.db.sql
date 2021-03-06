USE [master]
GO
/****** Object:  Database [Game]    Script Date: 2016-11-9 20:38:15 ******/
CREATE DATABASE [Game] ON  PRIMARY 
( NAME = N'游戏数据库', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\游戏数据库.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'游戏数据库_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\游戏数据库_log.ldf' , SIZE = 4672KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Game] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Game].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Game] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Game] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Game] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Game] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Game] SET ARITHABORT OFF 
GO
ALTER DATABASE [Game] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Game] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Game] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Game] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Game] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Game] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Game] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Game] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Game] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Game] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Game] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Game] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Game] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Game] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Game] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Game] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Game] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Game] SET RECOVERY FULL 
GO
ALTER DATABASE [Game] SET  MULTI_USER 
GO
ALTER DATABASE [Game] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Game] SET DB_CHAINING OFF 
GO
USE [Game]
GO
/****** Object:  Table [dbo].[T_AUTN]    Script Date: 2016-11-9 20:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_AUTN](
	[U_ID] [nchar](10) NOT NULL,
	[G_ID] [nchar](10) NOT NULL,
	[G_AUTN_TIME] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_GAME_INFO]    Script Date: 2016-11-9 20:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_GAME_INFO](
	[G_ID] [nchar](10) NOT NULL,
	[T_NAME] [nchar](10) NOT NULL,
	[G_SUMMARY] [nchar](10) NOT NULL,
	[G_CUR_VER] [char](50) NOT NULL,
	[G_DEV_COM] [nchar](10) NOT NULL,
	[G_CUR_STS] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_GAME_SCORE]    Script Date: 2016-11-9 20:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_GAME_SCORE](
	[G_ID] [nchar](10) NOT NULL,
	[U_ID] [nchar](10) NOT NULL,
	[G_RANK] [int] NOT NULL,
	[G_SCORE] [char](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_USER]    Script Date: 2016-11-9 20:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_USER](
	[U_ID] [nchar](10) NOT NULL,
	[U_EMAIL] [char](20) NOT NULL,
	[U_PWD] [char](20) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_USER_INFO]    Script Date: 2016-11-9 20:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_USER_INFO](
	[U_ID] [nchar](10) NOT NULL,
	[U_NAME] [nchar](10) NOT NULL,
	[U_AGE] [int] NOT NULL,
	[REG_TIME] [datetime] NOT NULL,
	[LAST_LOGIN_TIME] [datetime] NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[T_AUTN] ([U_ID], [G_ID], [G_AUTN_TIME]) VALUES (N'User1     ', N'Game1     ', CAST(N'2010-01-15 11:34:42.000' AS DateTime))
INSERT [dbo].[T_AUTN] ([U_ID], [G_ID], [G_AUTN_TIME]) VALUES (N'User1     ', N'Game3     ', CAST(N'2010-01-16 11:34:42.000' AS DateTime))
INSERT [dbo].[T_AUTN] ([U_ID], [G_ID], [G_AUTN_TIME]) VALUES (N'User1     ', N'Game5     ', CAST(N'2010-01-17 11:34:42.000' AS DateTime))
INSERT [dbo].[T_AUTN] ([U_ID], [G_ID], [G_AUTN_TIME]) VALUES (N'User1     ', N'Game7     ', CAST(N'2010-01-18 11:34:42.000' AS DateTime))
INSERT [dbo].[T_AUTN] ([U_ID], [G_ID], [G_AUTN_TIME]) VALUES (N'User2     ', N'Game2     ', CAST(N'2015-12-31 15:16:12.000' AS DateTime))
INSERT [dbo].[T_AUTN] ([U_ID], [G_ID], [G_AUTN_TIME]) VALUES (N'User2     ', N'Game4     ', CAST(N'2015-12-31 15:16:21.000' AS DateTime))
INSERT [dbo].[T_AUTN] ([U_ID], [G_ID], [G_AUTN_TIME]) VALUES (N'User2     ', N'Game6     ', CAST(N'2015-12-31 21:16:21.000' AS DateTime))
INSERT [dbo].[T_AUTN] ([U_ID], [G_ID], [G_AUTN_TIME]) VALUES (N'User5     ', N'Game1     ', CAST(N'2001-07-09 15:21:54.000' AS DateTime))
INSERT [dbo].[T_AUTN] ([U_ID], [G_ID], [G_AUTN_TIME]) VALUES (N'User5     ', N'Game2     ', CAST(N'2001-07-08 14:26:14.000' AS DateTime))
INSERT [dbo].[T_AUTN] ([U_ID], [G_ID], [G_AUTN_TIME]) VALUES (N'User4     ', N'Game3     ', CAST(N'2000-04-06 21:02:47.000' AS DateTime))
INSERT [dbo].[T_GAME_INFO] ([G_ID], [T_NAME], [G_SUMMARY], [G_CUR_VER], [G_DEV_COM], [G_CUR_STS]) VALUES (N'Game1     ', N'游戏1       ', N'游戏简介1     ', N'1.00.512.654                                      ', N'开发公司      ', N'运营中       ')
INSERT [dbo].[T_GAME_INFO] ([G_ID], [T_NAME], [G_SUMMARY], [G_CUR_VER], [G_DEV_COM], [G_CUR_STS]) VALUES (N'Game2     ', N'游戏2       ', N'游戏简介2     ', N'1.12.645.781                                      ', N'开发公司2     ', N'运营中       ')
INSERT [dbo].[T_GAME_INFO] ([G_ID], [T_NAME], [G_SUMMARY], [G_CUR_VER], [G_DEV_COM], [G_CUR_STS]) VALUES (N'Game3     ', N'游戏3       ', N'游戏简介3     ', N'3.01.000.214                                      ', N'开发公司3     ', N'已关闭       ')
INSERT [dbo].[T_GAME_INFO] ([G_ID], [T_NAME], [G_SUMMARY], [G_CUR_VER], [G_DEV_COM], [G_CUR_STS]) VALUES (N'Game4     ', N'游戏4       ', N'游戏简介4     ', N'1.00.020.251                                      ', N'开发公司4     ', N'运营中       ')
INSERT [dbo].[T_GAME_INFO] ([G_ID], [T_NAME], [G_SUMMARY], [G_CUR_VER], [G_DEV_COM], [G_CUR_STS]) VALUES (N'Game5     ', N'游戏5       ', N'游戏简介5     ', N'2.25.214.794                                      ', N'开发公司5     ', N'运营中       ')
INSERT [dbo].[T_GAME_INFO] ([G_ID], [T_NAME], [G_SUMMARY], [G_CUR_VER], [G_DEV_COM], [G_CUR_STS]) VALUES (N'Game6     ', N'游戏6       ', N'游戏简介6     ', N'1.01.254.544                                      ', N'开发公司6     ', N'运营中       ')
INSERT [dbo].[T_GAME_INFO] ([G_ID], [T_NAME], [G_SUMMARY], [G_CUR_VER], [G_DEV_COM], [G_CUR_STS]) VALUES (N'Game7     ', N'游戏7       ', N'游戏简介7     ', N'0.99.111.544                                      ', N'开发公司7     ', N'运营中       ')
INSERT [dbo].[T_GAME_SCORE] ([G_ID], [U_ID], [G_RANK], [G_SCORE]) VALUES (N'Game1     ', N'User1     ', 55, N'897815447998                                                                                        ')
INSERT [dbo].[T_GAME_SCORE] ([G_ID], [U_ID], [G_RANK], [G_SCORE]) VALUES (N'Game1     ', N'User5     ', 4, N'548987                                                                                              ')
INSERT [dbo].[T_GAME_SCORE] ([G_ID], [U_ID], [G_RANK], [G_SCORE]) VALUES (N'Game2     ', N'User2     ', 1, N'99                                                                                                  ')
INSERT [dbo].[T_GAME_SCORE] ([G_ID], [U_ID], [G_RANK], [G_SCORE]) VALUES (N'Game2     ', N'User5     ', 99, N'12354878987589                                                                                      ')
INSERT [dbo].[T_GAME_SCORE] ([G_ID], [U_ID], [G_RANK], [G_SCORE]) VALUES (N'Game3     ', N'User1     ', 5, N'987989798979                                                                                        ')
INSERT [dbo].[T_GAME_SCORE] ([G_ID], [U_ID], [G_RANK], [G_SCORE]) VALUES (N'Game3     ', N'User4     ', 1, N'123                                                                                                 ')
INSERT [dbo].[T_GAME_SCORE] ([G_ID], [U_ID], [G_RANK], [G_SCORE]) VALUES (N'Game4     ', N'User2     ', 8, N'546878977                                                                                           ')
INSERT [dbo].[T_GAME_SCORE] ([G_ID], [U_ID], [G_RANK], [G_SCORE]) VALUES (N'Game5     ', N'User1     ', 14, N'9887841212                                                                                          ')
INSERT [dbo].[T_GAME_SCORE] ([G_ID], [U_ID], [G_RANK], [G_SCORE]) VALUES (N'Game6     ', N'User2     ', 5, N'545687                                                                                              ')
INSERT [dbo].[T_GAME_SCORE] ([G_ID], [U_ID], [G_RANK], [G_SCORE]) VALUES (N'Game7     ', N'User1     ', 99, N'98745652133129                                                                                      ')
INSERT [dbo].[T_USER] ([U_ID], [U_EMAIL], [U_PWD]) VALUES (N'User1     ', N'User1@abc.com       ', N'ABCDEFGOPQRST       ')
INSERT [dbo].[T_USER] ([U_ID], [U_EMAIL], [U_PWD]) VALUES (N'User2     ', N'User2@ABC.COM       ', N'HIJKLMNUVWXYZ       ')
INSERT [dbo].[T_USER] ([U_ID], [U_EMAIL], [U_PWD]) VALUES (N'User3     ', N'User3@ABC.COM       ', N'OPQRSTHIJKLMN       ')
INSERT [dbo].[T_USER] ([U_ID], [U_EMAIL], [U_PWD]) VALUES (N'User4     ', N'User4@ABC.COM       ', N'UVWXYZABCDEFG       ')
INSERT [dbo].[T_USER] ([U_ID], [U_EMAIL], [U_PWD]) VALUES (N'User5     ', N'User5@ABC.com       ', N'UVWXYZHIJKLMN       ')
INSERT [dbo].[T_USER_INFO] ([U_ID], [U_NAME], [U_AGE], [REG_TIME], [LAST_LOGIN_TIME]) VALUES (N'User1     ', N'玩家1       ', 23, CAST(N'2010-01-15 10:00:00.000' AS DateTime), CAST(N'2015-12-25 15:46:37.000' AS DateTime))
INSERT [dbo].[T_USER_INFO] ([U_ID], [U_NAME], [U_AGE], [REG_TIME], [LAST_LOGIN_TIME]) VALUES (N'User2     ', N'玩家2       ', 12, CAST(N'2015-12-31 00:00:00.000' AS DateTime), CAST(N'2016-11-02 20:00:00.000' AS DateTime))
INSERT [dbo].[T_USER_INFO] ([U_ID], [U_NAME], [U_AGE], [REG_TIME], [LAST_LOGIN_TIME]) VALUES (N'User3     ', N'玩家3       ', 45, CAST(N'2014-05-14 06:00:00.000' AS DateTime), CAST(N'2016-11-01 10:00:00.000' AS DateTime))
INSERT [dbo].[T_USER_INFO] ([U_ID], [U_NAME], [U_AGE], [REG_TIME], [LAST_LOGIN_TIME]) VALUES (N'User4     ', N'玩家4       ', 37, CAST(N'2000-04-06 20:52:01.000' AS DateTime), CAST(N'2016-09-30 04:28:27.000' AS DateTime))
INSERT [dbo].[T_USER_INFO] ([U_ID], [U_NAME], [U_AGE], [REG_TIME], [LAST_LOGIN_TIME]) VALUES (N'User5     ', N'玩家5       ', 27, CAST(N'2001-07-08 14:21:54.000' AS DateTime), CAST(N'2016-11-03 15:44:44.000' AS DateTime))
USE [master]
GO
ALTER DATABASE [Game] SET  READ_WRITE 
GO
