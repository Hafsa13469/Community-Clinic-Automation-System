USE [master]
GO
/****** Object:  Database [CommunityClinicAutomationSystemDB]    Script Date: 2/9/2015 9:26:24 PM ******/
CREATE DATABASE [CommunityClinicAutomationSystemDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CommunityClinicAutomationSystemDB', FILENAME = N'D:\ASP CODE\JITU - First Project\Subir\DB\CommunityClinicAutomationSystemDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CommunityClinicAutomationSystemDB_log', FILENAME = N'D:\ASP CODE\JITU - First Project\Subir\DB\CommunityClinicAutomationSystemDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CommunityClinicAutomationSystemDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET  MULTI_USER 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CommunityClinicAutomationSystemDB]
GO
/****** Object:  Table [dbo].[medicineForCenter]    Script Date: 2/9/2015 9:26:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicineForCenter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[medicineId] [int] NOT NULL,
	[centerId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_medicineForCenter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_center]    Script Date: 2/9/2015 9:26:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_center](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[center_name] [varchar](50) NOT NULL,
	[district_id] [int] NOT NULL,
	[thana_id] [int] NOT NULL,
 CONSTRAINT [PK_t_center] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_center_login]    Script Date: 2/9/2015 9:26:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_center_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[center_id] [int] NOT NULL,
 CONSTRAINT [PK_t_center_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_disease]    Script Date: 2/9/2015 9:26:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_disease](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[disease_name] [varchar](50) NOT NULL,
	[description] [varchar](250) NULL,
	[treatment_procedure] [varchar](250) NULL,
	[preferred_drugs] [varchar](150) NULL,
 CONSTRAINT [PK_t_disease] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_district]    Script Date: 2/9/2015 9:26:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_district](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[district_name] [varchar](50) NOT NULL,
	[population] [int] NOT NULL,
 CONSTRAINT [PK_t_district] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_medicine]    Script Date: 2/9/2015 9:26:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_medicine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[generic_name] [varchar](50) NOT NULL,
	[power] [varchar](20) NOT NULL,
	[type] [varchar](10) NOT NULL,
 CONSTRAINT [PK_t_medicine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_thana]    Script Date: 2/9/2015 9:26:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_thana](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[thana_name] [varchar](50) NOT NULL,
	[district_id] [int] NULL,
 CONSTRAINT [PK_t_thana] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tDoctor]    Script Date: 2/9/2015 9:26:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tDoctor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[doctor_name] [varchar](50) NOT NULL,
	[degree] [varchar](50) NULL,
	[specialization] [varchar](50) NULL,
	[center_id] [int] NOT NULL,
 CONSTRAINT [PK_tDoctor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[medicineForCenter] ON 

INSERT [dbo].[medicineForCenter] ([id], [medicineId], [centerId], [quantity]) VALUES (1, 1, 2007, 22)
INSERT [dbo].[medicineForCenter] ([id], [medicineId], [centerId], [quantity]) VALUES (2, 2, 2007, 50)
INSERT [dbo].[medicineForCenter] ([id], [medicineId], [centerId], [quantity]) VALUES (4, 1, 2008, 23)
INSERT [dbo].[medicineForCenter] ([id], [medicineId], [centerId], [quantity]) VALUES (5, 1, 4, 30)
INSERT [dbo].[medicineForCenter] ([id], [medicineId], [centerId], [quantity]) VALUES (6, 2, 4, 30)
INSERT [dbo].[medicineForCenter] ([id], [medicineId], [centerId], [quantity]) VALUES (7, 1, 2009, 100)
INSERT [dbo].[medicineForCenter] ([id], [medicineId], [centerId], [quantity]) VALUES (8, 2, 2009, 200)
INSERT [dbo].[medicineForCenter] ([id], [medicineId], [centerId], [quantity]) VALUES (9, 9, 2010, 130)
INSERT [dbo].[medicineForCenter] ([id], [medicineId], [centerId], [quantity]) VALUES (10, 5, 2010, 20)
INSERT [dbo].[medicineForCenter] ([id], [medicineId], [centerId], [quantity]) VALUES (11, 6, 2010, 200)
INSERT [dbo].[medicineForCenter] ([id], [medicineId], [centerId], [quantity]) VALUES (12, 8, 2010, 10)
SET IDENTITY_INSERT [dbo].[medicineForCenter] OFF
SET IDENTITY_INSERT [dbo].[t_center] ON 

INSERT [dbo].[t_center] ([id], [center_name], [district_id], [thana_id]) VALUES (3, N'Kusumpur', 1, 1)
INSERT [dbo].[t_center] ([id], [center_name], [district_id], [thana_id]) VALUES (4, N'Nabinagar', 2, 8)
INSERT [dbo].[t_center] ([id], [center_name], [district_id], [thana_id]) VALUES (5, N'Savar Community Clinic', 18, 153)
INSERT [dbo].[t_center] ([id], [center_name], [district_id], [thana_id]) VALUES (6, N'Dohar Community Clinic', 18, 150)
INSERT [dbo].[t_center] ([id], [center_name], [district_id], [thana_id]) VALUES (1005, N'Dhamrai Community Clinic', 18, 149)
INSERT [dbo].[t_center] ([id], [center_name], [district_id], [thana_id]) VALUES (1006, N'Amtali Community Clinic', 1, 1)
INSERT [dbo].[t_center] ([id], [center_name], [district_id], [thana_id]) VALUES (1007, N'Keraniganj Community Center', 18, 151)
INSERT [dbo].[t_center] ([id], [center_name], [district_id], [thana_id]) VALUES (1008, N'Nawabganj Community Center', 18, 152)
INSERT [dbo].[t_center] ([id], [center_name], [district_id], [thana_id]) VALUES (2007, N'Fowjdarhut', 10, 67)
INSERT [dbo].[t_center] ([id], [center_name], [district_id], [thana_id]) VALUES (2008, N'Rangipara', 10, 86)
INSERT [dbo].[t_center] ([id], [center_name], [district_id], [thana_id]) VALUES (2009, N'Madhabpur', 2, 7)
INSERT [dbo].[t_center] ([id], [center_name], [district_id], [thana_id]) VALUES (2010, N'SurjarHasi', 11, 90)
INSERT [dbo].[t_center] ([id], [center_name], [district_id], [thana_id]) VALUES (2011, N'surjo', 1, 1)
SET IDENTITY_INSERT [dbo].[t_center] OFF
SET IDENTITY_INSERT [dbo].[t_center_login] ON 

INSERT [dbo].[t_center_login] ([id], [code], [password], [center_id]) VALUES (4007, N'1001', N'123456', 3)
INSERT [dbo].[t_center_login] ([id], [code], [password], [center_id]) VALUES (4008, N'KZARet', N'4&-dj&Eo', 2007)
INSERT [dbo].[t_center_login] ([id], [code], [password], [center_id]) VALUES (4009, N'egheJj', N'Kk[7>JBz', 2008)
INSERT [dbo].[t_center_login] ([id], [code], [password], [center_id]) VALUES (4010, N'DtNXuh', N'M)gTx6Eu', 2010)
INSERT [dbo].[t_center_login] ([id], [code], [password], [center_id]) VALUES (4011, N'mNZPAV', N'b|F-es$m', 2011)
SET IDENTITY_INSERT [dbo].[t_center_login] OFF
SET IDENTITY_INSERT [dbo].[t_disease] ON 

INSERT [dbo].[t_disease] ([id], [disease_name], [description], [treatment_procedure], [preferred_drugs]) VALUES (4, N'Influenza', N'viral infection that attacks your respiratory system.', N'need nothing more than bed rest and plenty of fluids to treat the flu', N'Oseltamivir')
INSERT [dbo].[t_disease] ([id], [disease_name], [description], [treatment_procedure], [preferred_drugs]) VALUES (5, N'NULLArsenic contamination', N'Arsenic contaminated water typically contains arsenous acid and arsenic acid or their derivatives.', N'Follow the doctor''s instructions', N'On prescription')
SET IDENTITY_INSERT [dbo].[t_disease] OFF
SET IDENTITY_INSERT [dbo].[t_district] ON 

INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (1, N'Barguna', 892781)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (2, N'Barisal', 2324310)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (3, N'Bhola', 1776795)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (4, N'Jhalokati', 682669)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (5, N'Patuakhali', 1535854)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (6, N'Pirojpur', 1113257)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (7, N'Bandarban', 388335)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (8, N'Brahmanbaria', 2840498)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (9, N'Chandpur', 2416018)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (10, N'Chittagong', 7616352)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (11, N'Comilla', 5387288)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (12, N'Cox''s Bazar', 2289990)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (13, N'Feni', 1437371)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (14, N'Khagrachhari', 613917)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (15, N'Lakshmipur', 1729188)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (16, N'Noakhali', 3108083)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (17, N'Rangamati', 595979)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (18, N'Dhaka', 12043977)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (19, N'Faridpur', 1912969)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (20, N'Gazipur', 3403912)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (21, N'Gopalganj', 1172415)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (22, N'Jamalpur', 2292674)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (23, N'Kishoreganj', 2911907)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (24, N'Madaripur', 1165952)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (25, N'Manikganj', 1392867)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (26, N'Munshiganj', 1445660)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (27, N'Mymensingh', 5110272)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (28, N'Narayanganj', 2948217)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (29, N'Netrokona', 2229642)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (30, N'Rajbari', 1049778)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (31, N'Shariatpur', 1155824)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (32, N'Sherpur', 1358325)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (33, N'Tangail', 3605083)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (34, N'Narsingdi', 2224944)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (35, N'Bagerhat', 1476090)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (36, N'Chuadanga', 1129015)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (37, N'Jessore', 2764547)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (38, N'Jhenaida', 1771304)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (39, N'Khulna', 2318527)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (40, N'Kushtia', 1946838)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (41, N'Magura', 918419)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (42, N'Meherpur', 655392)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (43, N'Narail', 721668)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (44, N'Satkhira', 1985959)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (45, N'Bogra', 3400874)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (46, N'Joypurhat', 913768)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (47, N'Naogaon', 2600157)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (48, N'Natore', 1706673)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (49, N'Nawabganj', 1647521)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (50, N'Pabna', 2523179)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (51, N'Rajshahi', 2595197)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (52, N'Sirajganj', 3097489)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (53, N'Dinajpur', 2990128)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (54, N'Gaibandha', 2379255)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (55, N'Kurigram', 2069273)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (56, N'Lalmonirhat', 1256099)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (57, N'Nilphamari', 1834231)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (58, N'Panchagarh', 987644)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (59, N'Rangpur', 2881086)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (60, N'Thakurgaon', 1390042)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (61, N'Habiganj', 2089001)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (62, N'Moulvibazar', 1919062)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (63, N'Sunamganj', 2467968)
INSERT [dbo].[t_district] ([id], [district_name], [population]) VALUES (64, N'Sylhet', 3434188)
SET IDENTITY_INSERT [dbo].[t_district] OFF
SET IDENTITY_INSERT [dbo].[t_medicine] ON 

INSERT [dbo].[t_medicine] ([id], [generic_name], [power], [type]) VALUES (1, N'Paracetamol', N'25', N'mg')
INSERT [dbo].[t_medicine] ([id], [generic_name], [power], [type]) VALUES (2, N'Napa', N'25', N'mg')
INSERT [dbo].[t_medicine] ([id], [generic_name], [power], [type]) VALUES (4, N'Rabizol', N'25', N'mg')
INSERT [dbo].[t_medicine] ([id], [generic_name], [power], [type]) VALUES (5, N'Histacine', N'2', N'mg')
INSERT [dbo].[t_medicine] ([id], [generic_name], [power], [type]) VALUES (6, N'Ace', N'20', N'mg')
INSERT [dbo].[t_medicine] ([id], [generic_name], [power], [type]) VALUES (7, N'Napadol', N'200', N'mL')
INSERT [dbo].[t_medicine] ([id], [generic_name], [power], [type]) VALUES (8, N'Seclo', N'20', N'mg')
INSERT [dbo].[t_medicine] ([id], [generic_name], [power], [type]) VALUES (9, N'Tuska', N'100', N'mL')
SET IDENTITY_INSERT [dbo].[t_medicine] OFF
SET IDENTITY_INSERT [dbo].[t_thana] ON 

INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (1, N'Amtali', 1)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (2, N'Bamna', 1)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (3, N'Barguna Sadar', 1)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (4, N'Betagi', 1)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (5, N'Patharghata', 1)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (6, N'Taltoli', 1)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (7, N'Agailjhara', 2)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (8, N'Babuganj', 2)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (9, N'Bakerganj', 2)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (10, N'Banaripara', 2)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (11, N'Gaurnadi', 2)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (12, N'Hizla', 2)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (13, N'Barisal Sadar', 2)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (14, N'Mehendiganj', 2)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (15, N'Muladi', 2)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (16, N'Wazirpur', 2)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (17, N'Bhola Sadar', 3)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (18, N'Burhanuddin', 3)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (19, N'Char Fasson', 3)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (20, N'Daulatkhan', 3)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (21, N'Lalmohan', 3)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (22, N'Manpura', 3)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (23, N'Tazumuddin', 3)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (24, N'Jhalokati Sadar', 4)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (25, N'Kathalia', 4)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (26, N'Nalchity', 4)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (27, N'Rajapur', 4)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (28, N'Bauphal', 5)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (29, N'Dashmina', 5)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (30, N'Galachipa', 5)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (31, N'Kalapara', 5)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (32, N'Mirzaganj', 5)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (33, N'Patuakhali Sadar', 5)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (34, N'Rangabali', 5)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (35, N'Dumki', 5)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (36, N'Bhandaria', 6)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (37, N'Kawkhali', 6)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (38, N'Mathbaria', 6)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (39, N'Nazirpur', 6)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (40, N'Pirojpur Sadar', 6)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (41, N'Nesarabad', 6)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (42, N'Zianagor', 6)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (43, N'Ali Kadam', 7)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (44, N'Bandarban Sadar', 7)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (45, N'Lama', 7)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (46, N'Naikhongchhari', 7)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (47, N'Rowangchhari', 7)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (48, N'Ruma', 7)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (49, N'Thanchi', 7)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (50, N'Akhaura', 8)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (51, N'Bancharampur', 8)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (52, N'Brahmanbaria Sadar', 8)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (53, N'Kasba', 8)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (54, N'Nabinagar', 8)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (55, N'Nasirnagar', 8)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (56, N'Sarail', 8)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (57, N'Ashuganj', 8)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (58, N'Bijoynagar', 8)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (59, N'Chandpur Sadar', 9)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (60, N'Faridganj', 9)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (61, N'Haimchar', 9)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (62, N'Haziganj', 9)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (63, N'Kachua', 9)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (64, N'Matlab Dakshin', 9)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (65, N'Matlab Uttar', 9)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (66, N'Shahrasti', 9)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (67, N'Anwara', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (68, N'Banshkhali', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (69, N'Boalkhali', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (70, N'Chandanaish', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (71, N'Fatikchhari', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (72, N'Hathazari', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (73, N'Lohagara', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (74, N'Mirsharai', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (75, N'Patiya', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (76, N'Rangunia', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (77, N'Raozan', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (78, N'Sandwip', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (79, N'Satkania', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (80, N'Sitakunda', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (81, N'Bandor Thana', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (82, N'Chandgaon Thana', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (83, N'Double Mooring Thana', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (84, N'Kotwali Thana', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (85, N'Pahartali Thana', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (86, N'Panchlaish Thana', 10)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (87, N'Barura', 11)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (88, N'Brahmanpara', 11)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (89, N'Burichang', 11)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (90, N'Chandina', 11)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (91, N'Chauddagram', 11)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (92, N'Daudkandi', 11)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (93, N'Debidwar', 11)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (94, N'Homna', 11)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (95, N'Laksam', 11)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (96, N'Muradnagar', 11)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (97, N'Nangalkot', 11)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (98, N'Comilla Adarsha Sadar', 11)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (99, N'Meghna', 11)
GO
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (100, N'Titas', 11)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (101, N'Monohargonj', 11)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (102, N'Comilla Sadar Dakshin', 11)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (103, N'Chakaria', 12)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (104, N'Coxs Bazar Sadar', 12)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (105, N'Kutubdia', 12)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (106, N'Maheshkhali', 12)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (107, N'Ramu', 12)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (108, N'Teknaf', 12)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (109, N'Ukhia', 12)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (110, N'Pekua', 12)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (111, N'Chhagalnaiya', 13)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (112, N'Daganbhuiyan', 13)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (113, N'Feni Sadar', 13)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (114, N'Parshuram', 13)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (115, N'Sonagazi', 13)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (116, N'Fulgazi', 13)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (117, N'Dighinala', 14)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (118, N'Khagrachhari', 14)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (119, N'Lakshmichhari', 14)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (120, N'Mahalchhari', 14)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (121, N'Manikchhari', 14)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (122, N'Matiranga', 14)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (123, N'Panchhari', 14)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (124, N'Ramgarh', 14)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (125, N'Lakshmipur Sadar', 15)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (126, N'Raipur', 15)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (127, N'Ramganj', 15)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (128, N'Ramgati', 15)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (129, N'Kamalnagar', 15)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (130, N'Begumganj', 16)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (131, N'Noakhali Sadar', 16)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (132, N'Chatkhil', 16)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (133, N'Companiganj', 16)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (134, N'Hatiya', 16)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (135, N'Senbagh', 16)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (136, N'Sonaimuri', 16)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (137, N'Subarnachar', 16)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (138, N'Kabirhat', 16)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (139, N'Bagaichhari', 17)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (140, N'Barkal', 17)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (141, N'Kawkhali', 17)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (142, N'Belaichhari', 17)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (143, N'Kaptai', 17)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (144, N'Juraichhari', 17)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (145, N'Langadu', 17)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (146, N'Naniyachar', 17)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (147, N'Rajasthali', 17)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (148, N'Rangamati Sadar', 17)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (149, N'Dhamrai', 18)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (150, N'Dohar', 18)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (151, N'Keraniganj', 18)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (152, N'Nawabganj', 18)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (153, N'Savar', 18)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (154, N'Alfadanga', 19)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (155, N'Bhanga', 19)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (156, N'Boalmari', 19)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (157, N'Charbhadrasan', 19)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (158, N'Faridpur Sadar', 19)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (159, N'Madhukhali', 19)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (160, N'Nagarkanda', 19)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (161, N'Sadarpur', 19)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (162, N'Saltha', 19)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (163, N'Gazipur Sadar', 20)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (164, N'Kaliakair', 20)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (165, N'Kaliganj', 20)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (166, N'Kapasia', 20)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (167, N'Sreepur', 20)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (168, N'Gopalganj Sadar', 21)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (169, N'Kashiani', 21)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (170, N'Kotalipara', 21)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (171, N'Muksudpur', 21)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (172, N'Tungipara', 21)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (173, N'Baksiganj', 22)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (174, N'Dewanganj', 22)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (175, N'Islampur', 22)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (176, N'Jamalpur Sadar', 22)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (177, N'Madarganj', 22)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (178, N'Melandaha', 22)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (179, N'Sarishabari', 22)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (180, N'Astagram', 23)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (181, N'Bajitpur', 23)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (182, N'Bhairab', 23)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (183, N'Hossainpur', 23)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (184, N'Itna', 23)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (185, N'Karimganj', 23)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (186, N'Katiadi', 23)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (187, N'Kishoreganj Sadar', 23)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (188, N'Kuliarchar', 23)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (189, N'Mithamain', 23)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (190, N'Nikli', 23)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (191, N'Pakundia', 23)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (192, N'Tarail', 23)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (193, N'Rajoir', 24)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (194, N'Madaripur Sadar', 24)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (195, N'Kalkini', 24)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (196, N'Shibchar', 24)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (197, N'Daulatpur', 25)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (198, N'Ghior', 25)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (199, N'Harirampur', 25)
GO
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (200, N'Manikgonj Sadar', 25)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (201, N'Saturia', 25)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (202, N'Shivalaya', 25)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (203, N'Singair', 25)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (204, N'Gazaria', 26)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (205, N'Lohajang', 26)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (206, N'Munshiganj Sadar', 26)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (207, N'Sirajdikhan', 26)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (208, N'Sreenagar', 26)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (209, N'Tongibari', 26)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (210, N'Bhaluka', 27)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (211, N'Dhobaura', 27)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (212, N'Fulbaria', 27)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (213, N'Gaffargaon', 27)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (214, N'Gauripur', 27)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (215, N'Haluaghat', 27)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (216, N'Ishwarganj', 27)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (217, N'Mymensingh Sadar', 27)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (218, N'Muktagachha', 27)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (219, N'Nandail', 27)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (220, N'Phulpur', 27)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (221, N'Trishal', 27)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (222, N'Tara Khanda', 27)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (223, N'Araihazar', 28)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (224, N'Bandar', 28)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (225, N'Narayanganj Sadar', 28)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (226, N'Rupganj', 28)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (227, N'Sonargaon', 28)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (228, N'Fatullah', 28)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (229, N'Siddhirganj', 28)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (230, N'Atpara', 29)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (231, N'Barhatta', 29)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (232, N'Durgapur', 29)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (233, N'Khaliajuri', 29)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (234, N'Kalmakanda', 29)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (235, N'Kendua', 29)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (236, N'Madan', 29)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (237, N'Mohanganj', 29)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (238, N'Netrokona Sadar', 29)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (239, N'Purbadhala', 29)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (240, N'Baliakandi', 30)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (241, N'Goalandaghat', 30)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (242, N'Pangsha', 30)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (243, N'Rajbari Sadar', 30)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (244, N'Kalukhali', 30)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (245, N'Bhedarganj', 31)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (246, N'Damudya', 31)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (247, N'Gosairhat', 31)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (248, N'Naria', 31)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (249, N'Shariatpur Sadar', 31)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (250, N'Zanjira', 31)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (251, N'Shakhipur', 31)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (252, N'Jhenaigati', 32)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (253, N'Nakla', 32)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (254, N'Nalitabari', 32)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (255, N'Sherpur Sadar', 32)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (256, N'Sreebardi', 32)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (257, N'Gopalpur', 33)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (258, N'Basail', 33)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (259, N'Bhuapur', 33)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (260, N'Delduar', 33)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (261, N'Ghatail', 33)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (262, N'Kalihati', 33)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (263, N'Madhupur', 33)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (264, N'Mirzapur', 33)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (265, N'Nagarpur', 33)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (266, N'Sakhipur', 33)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (267, N'Dhanbari', 33)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (268, N'Tangail Sadar', 33)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (269, N'Narsingdi Sadar', 34)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (270, N'Belabo', 34)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (271, N'Monohardi', 34)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (272, N'Palash', 34)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (273, N'Raipura', 34)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (274, N'Shibpur', 34)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (275, N'Bagerhat Sadar', 35)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (276, N'Chitalmari', 35)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (277, N'Fakirhat', 35)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (278, N'Kachua', 35)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (279, N'Mollahat', 35)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (280, N'Mongla', 35)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (281, N'Morrelganj', 35)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (282, N'Rampal', 35)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (283, N'Sarankhola', 35)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (284, N'Alamdanga', 36)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (285, N'Chuadanga Sadar', 36)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (286, N'Damurhuda', 36)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (287, N'Jibannagar', 36)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (288, N'Abhaynagar', 37)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (289, N'Bagherpara', 37)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (290, N'Chaugachha', 37)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (291, N'Jhikargachha', 37)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (292, N'Keshabpur', 37)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (293, N'Jessore Sadar', 37)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (294, N'Manirampur', 37)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (295, N'Sharsha', 37)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (296, N'Harinakunda', 38)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (297, N'Jhenaidah Sadar', 38)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (298, N'Kaliganj', 38)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (299, N'Kotchandpur', 38)
GO
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (300, N'Maheshpur', 38)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (301, N'Shailkupa', 38)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (302, N'Batiaghata', 39)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (303, N'Dacope', 39)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (304, N'Dumuria', 39)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (305, N'Dighalia', 39)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (306, N'Koyra', 39)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (307, N'Paikgachha', 39)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (308, N'Phultala', 39)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (309, N'Rupsha', 39)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (310, N'Terokhada', 39)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (311, N'Daulatpur Thana', 39)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (312, N'Khalishpur Thana', 39)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (313, N'Khan Jahan Ali Thana', 39)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (314, N'Kotwali Thana', 39)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (315, N'Sonadanga Thana', 39)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (316, N'Harintana Thana', 39)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (317, N'Bheramara', 40)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (318, N'Daulatpur', 40)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (319, N'Khoksa', 40)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (320, N'Kumarkhali', 40)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (321, N'Kushtia Sadar', 40)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (322, N'Mirpur', 40)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (323, N'Shekhpara', 40)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (324, N'Magura Sadar', 41)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (325, N'Mohammadpur', 41)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (326, N'Shalikha', 41)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (327, N'Sreepur', 41)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (328, N'Gangni', 42)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (329, N'Meherpur Sadar', 42)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (330, N'Mujibnagar', 42)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (331, N'Kalia', 43)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (332, N'Lohagara', 43)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (333, N'Narail Sadar', 43)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (334, N'Naragati Thana', 43)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (335, N'Assasuni', 44)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (336, N'Debhata', 44)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (337, N'Kalaroa', 44)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (338, N'Kaliganj', 44)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (339, N'Satkhira Sadar', 44)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (340, N'Shyamnagar', 44)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (341, N'Tala', 44)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (342, N'Adamdighi', 45)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (343, N'Bogra Sadar', 45)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (344, N'Dhunat', 45)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (345, N'Dhupchanchia', 45)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (346, N'Gabtali', 45)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (347, N'Kahaloo', 45)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (348, N'Nandigram', 45)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (349, N'Sariakandi', 45)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (350, N'Shajahanpur', 45)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (351, N'Sherpur', 45)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (352, N'Shibganj', 45)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (353, N'Sonatola', 45)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (354, N'Akkelpur', 46)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (355, N'Joypurhat Sadar', 46)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (356, N'Kalai', 46)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (357, N'Khetlal', 46)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (358, N'Panchbibi', 46)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (359, N'Atrai', 47)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (360, N'Badalgachhi', 47)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (361, N'Manda', 47)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (362, N'Dhamoirhat', 47)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (363, N' Mohadevpur', 47)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (364, N'Naogaon Sadar', 47)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (365, N'Niamatpur', 47)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (366, N'Patnitala', 47)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (367, N'Porsha', 47)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (368, N'Raninagar', 47)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (369, N'Sapahar', 47)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (370, N'Bagatipara', 48)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (371, N'Baraigram', 48)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (372, N'Gurudaspur', 48)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (373, N'Lalpur', 48)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (374, N'Natore Sadar', 48)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (375, N'Singra', 48)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (376, N'Naldanga', 48)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (377, N'Bholahat', 49)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (378, N'Gomastapur', 49)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (379, N'Nachole', 49)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (380, N'Nawabganj Sadar', 49)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (381, N'Shibganj', 49)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (382, N'Ataikula', 50)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (383, N'Atgharia', 50)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (384, N'Bera', 50)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (385, N'Bhangura', 50)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (386, N'Chatmohar', 50)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (387, N'Faridpur', 50)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (388, N'Ishwardi', 50)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (389, N'Pabna Sadar', 50)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (390, N'Santhia', 50)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (391, N'Sujanagar', 50)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (392, N'Bagha', 51)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (393, N'Bagmara', 51)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (394, N'Charghat', 51)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (395, N'Durgapur', 51)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (396, N'Godagari', 51)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (397, N'Mohanpur', 51)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (398, N'Paba', 51)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (399, N'Puthia', 51)
GO
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (400, N'Tanore', 51)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (401, N'Boalia Thana', 51)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (402, N'Matihar Thana', 51)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (403, N'Rajpara Thana', 51)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (404, N'Shah Mokdum Thana', 51)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (405, N'Belkuchi', 52)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (406, N'Chauhali', 52)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (407, N'Kamarkhanda', 52)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (408, N'Kazipur', 52)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (409, N'Raiganj', 52)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (410, N'Shahjadpur', 52)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (411, N'Sirajganj Sadar', 52)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (412, N'Tarash', 52)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (413, N'Ullahpara', 52)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (414, N'Birampur', 53)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (415, N'Birganj', 53)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (416, N'Biral', 53)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (417, N'Bochaganj', 53)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (418, N'Chirirbandar', 53)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (419, N'Phulbari', 53)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (420, N'Ghoraghat', 53)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (421, N'Hakimpur', 53)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (422, N'Kaharole', 53)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (423, N'Khansama', 53)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (424, N'Dinajpur Sadar', 53)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (425, N'Nawabganj', 53)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (426, N'Parbatipur', 53)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (427, N'Phulchhari', 54)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (428, N'Gaibandha Sadar', 54)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (429, N'Gobindaganj', 54)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (430, N'Palashbari', 54)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (431, N'Sadullapur', 54)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (432, N'Sughatta', 54)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (433, N'Sundarganj', 54)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (434, N'Bhurungamari', 55)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (435, N'Char Rajibpur', 55)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (436, N'Chilmari', 55)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (437, N'Phulbari', 55)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (438, N'Kurigram Sadar', 55)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (439, N'Nageshwari', 55)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (440, N'Rajarhat', 55)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (441, N'Raomari', 55)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (442, N'Ulipur', 55)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (443, N'Aditmari', 56)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (444, N'Hatibandha', 56)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (445, N'Kaliganj', 56)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (446, N'Lalmonirhat Sadar', 56)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (447, N'Patgram', 56)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (448, N'Dimla', 57)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (449, N'Domar', 57)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (450, N'Jaldhaka', 57)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (451, N'Kishoreganj', 57)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (452, N'Nilphamari Sadar', 57)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (453, N'Saidpur', 57)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (454, N'Atwari', 58)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (455, N'Boda', 58)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (456, N'Debiganj', 58)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (457, N'Panchagarh Sadar', 58)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (458, N'Tetulia', 58)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (459, N'Badarganj', 59)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (460, N'Gangachhara', 59)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (461, N'Kaunia', 59)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (462, N'Rangpur Sadar', 59)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (463, N'Mithapukur', 59)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (464, N'Pirgachha', 59)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (465, N'Pirganj', 59)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (466, N'Taraganj', 59)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (467, N'Baliadangi', 60)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (468, N'Haripur', 60)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (469, N'Pirganj', 60)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (470, N'Ranisankail', 60)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (471, N'Thakurgaon Sadar', 60)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (472, N'Ajmiriganj', 61)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (473, N'Bahubal', 61)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (474, N'Baniyachong', 61)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (475, N'Chunarughat', 61)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (476, N'Habiganj Sadar', 61)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (477, N'Lakhai', 61)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (478, N'Madhabpur', 61)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (479, N'Nabiganj', 61)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (480, N'Barlekha', 62)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (481, N'Kamalganj', 62)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (482, N'Kulaura', 62)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (483, N'Moulvibazar Sadar', 62)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (484, N'Rajnagar', 62)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (485, N'Sreemangal', 62)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (486, N'Juri', 62)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (487, N'Bishwamvarpur', 63)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (488, N'Chhatak', 63)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (489, N'Derai', 63)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (490, N'Dharampasha', 63)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (491, N'Dowarabazar', 63)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (492, N'Jagannathpur', 63)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (493, N'Jamalganj', 63)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (494, N'Sullah', 63)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (495, N'Sunamganj Sadar', 63)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (496, N'Tahirpur', 63)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (497, N'South Sunamganj', 63)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (498, N'Balaganj', 64)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (499, N'Beanibazar', 64)
GO
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (500, N'Bishwanath', 64)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (501, N'Companigonj', 64)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (502, N'Fenchuganj', 64)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (503, N'Golapganj', 64)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (504, N'Gowainghat', 64)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (505, N'Jaintiapur', 64)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (506, N'Kanaighat', 64)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (507, N'Sylhet Sadar', 64)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (508, N'Zakiganj', 64)
INSERT [dbo].[t_thana] ([id], [thana_name], [district_id]) VALUES (509, N'South Shurma', 64)
SET IDENTITY_INSERT [dbo].[t_thana] OFF
SET IDENTITY_INSERT [dbo].[tDoctor] ON 

INSERT [dbo].[tDoctor] ([id], [doctor_name], [degree], [specialization], [center_id]) VALUES (1, N'Abul Kalam', N'MBBS', N'Medicine Specialist', 3)
INSERT [dbo].[tDoctor] ([id], [doctor_name], [degree], [specialization], [center_id]) VALUES (4, N'Tanzina Afroz', N'M.B.B.S', N'Orthopedics', 3)
INSERT [dbo].[tDoctor] ([id], [doctor_name], [degree], [specialization], [center_id]) VALUES (5, N'Farida Yeasmin', N'M.B.B.S', N'Eye ', 2008)
INSERT [dbo].[tDoctor] ([id], [doctor_name], [degree], [specialization], [center_id]) VALUES (6, N'Jobaida Yeasmin', N'M.B.B.S', N'Medicine', 2008)
INSERT [dbo].[tDoctor] ([id], [doctor_name], [degree], [specialization], [center_id]) VALUES (7, N'Fatema Afroz', N'M.B.B.S', N'Eye', 2008)
SET IDENTITY_INSERT [dbo].[tDoctor] OFF
ALTER TABLE [dbo].[medicineForCenter]  WITH CHECK ADD  CONSTRAINT [FK_medicineForCenter_t_center] FOREIGN KEY([centerId])
REFERENCES [dbo].[t_center] ([id])
GO
ALTER TABLE [dbo].[medicineForCenter] CHECK CONSTRAINT [FK_medicineForCenter_t_center]
GO
ALTER TABLE [dbo].[medicineForCenter]  WITH CHECK ADD  CONSTRAINT [FK_medicineForCenter_t_medicine] FOREIGN KEY([medicineId])
REFERENCES [dbo].[t_medicine] ([id])
GO
ALTER TABLE [dbo].[medicineForCenter] CHECK CONSTRAINT [FK_medicineForCenter_t_medicine]
GO
ALTER TABLE [dbo].[t_center]  WITH CHECK ADD  CONSTRAINT [FK_t_center_t_district] FOREIGN KEY([district_id])
REFERENCES [dbo].[t_district] ([id])
GO
ALTER TABLE [dbo].[t_center] CHECK CONSTRAINT [FK_t_center_t_district]
GO
ALTER TABLE [dbo].[t_center]  WITH CHECK ADD  CONSTRAINT [FK_t_center_t_thana] FOREIGN KEY([thana_id])
REFERENCES [dbo].[t_thana] ([id])
GO
ALTER TABLE [dbo].[t_center] CHECK CONSTRAINT [FK_t_center_t_thana]
GO
ALTER TABLE [dbo].[t_center_login]  WITH CHECK ADD  CONSTRAINT [FK_t_center_login_t_center] FOREIGN KEY([center_id])
REFERENCES [dbo].[t_center] ([id])
GO
ALTER TABLE [dbo].[t_center_login] CHECK CONSTRAINT [FK_t_center_login_t_center]
GO
ALTER TABLE [dbo].[t_thana]  WITH CHECK ADD  CONSTRAINT [FK_t_thana_t_district] FOREIGN KEY([district_id])
REFERENCES [dbo].[t_district] ([id])
GO
ALTER TABLE [dbo].[t_thana] CHECK CONSTRAINT [FK_t_thana_t_district]
GO
ALTER TABLE [dbo].[tDoctor]  WITH CHECK ADD  CONSTRAINT [FK_tDoctor_t_center] FOREIGN KEY([center_id])
REFERENCES [dbo].[t_center] ([id])
GO
ALTER TABLE [dbo].[tDoctor] CHECK CONSTRAINT [FK_tDoctor_t_center]
GO
USE [master]
GO
ALTER DATABASE [CommunityClinicAutomationSystemDB] SET  READ_WRITE 
GO
