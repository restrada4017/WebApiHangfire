USE [master]
GO
/****** Object:  Database [DbTareasAdmin]    Script Date: 13/02/2024 11:36:01 p. m. ******/
CREATE DATABASE [DbTareasAdmin]

GO
ALTER DATABASE [DbTareasAdmin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbTareasAdmin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbTareasAdmin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbTareasAdmin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbTareasAdmin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET RECOVERY FULL 
GO
ALTER DATABASE [DbTareasAdmin] SET  MULTI_USER 
GO
ALTER DATABASE [DbTareasAdmin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbTareasAdmin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbTareasAdmin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbTareasAdmin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbTareasAdmin] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbTareasAdmin] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DbTareasAdmin', N'ON'
GO
ALTER DATABASE [DbTareasAdmin] SET QUERY_STORE = OFF
GO
USE [DbTareasAdmin]
GO
/****** Object:  Table [dbo].[TaskExecute]    Script Date: 13/02/2024 11:36:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskExecute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameTask] [varchar](100) NOT NULL,
	[TimeExecute] [datetime] NOT NULL,
	[KeyTask] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TaskExecute] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DbTareasAdmin] SET  READ_WRITE 
GO
