
CREATE TABLE [dbo].[StudentQuestions](
	[Studentid] [nvarchar](50) NULL,
	[Question1] [nvarchar](50) NULL,
	[Question2] [nvarchar](50) NULL,
	[Question3] [nvarchar](50) NULL,
	[Question4] [nvarchar](50) NULL,
	[Question5] [nvarchar](50) NULL,
	[Question6] [nvarchar](50) NULL,
	[Question7] [nvarchar](50) NULL,
	[Question8] [nvarchar](50) NULL,
	[Question9] [nvarchar](50) NULL,
	[Question10] [nvarchar](50) NULL,
	[Question11] [nvarchar](50) NULL,
	[Question12] [nvarchar](50) NULL,
	[Question13] [nvarchar](50) NULL,
	[Question14] [nvarchar](50) NULL,
	[Question15] [nvarchar](50) NULL,
	[Question16] [nvarchar](50) NULL,
	[Question17] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentDetails]    Script Date: 12/06/2016 14:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Studentid] [bigint] NULL,
	[Password] [nvarchar](50) NULL,
	[MailingAddress] [nvarchar](50) NULL,
	[EMailID] [nvarchar](50) NULL,
	[PhoneNumber] [bigint] NULL,
	[Concentration] [nvarchar](50) NULL,
	[ccode] [nvarchar](50) NULL,
	[advisor] [nvarchar](50) NULL,
	[cstatus] [nvarchar](50) NULL,
	[EntryDate] [nvarchar](50) NULL,
	[Score] [int] NULL,
	[GPA] [nvarchar](50) NULL,
	[Ucmoaddress] [nvarchar](50) NULL,
	[graduation] [nvarchar](50) NULL,
	[program] [nvarchar](50) NULL,
	[academiccode] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[graduationDate] [nvarchar](50) NULL,
	[ProgramDate] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prerequisite]    Script Date: 12/06/2016 14:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prerequisite](
	[PrerequesiteId] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[NoOfCreditHours] [nvarchar](50) NULL,
	[pstatus] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrereqForAdvisor]    Script Date: 12/06/2016 14:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrereqForAdvisor](
	[Studentid] [nvarchar](50) NULL,
	[prerequisiteprefix] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Date] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notes]    Script Date: 12/06/2016 14:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[notes] [nvarchar](50) NULL,
	[Date] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DirectorLogin]    Script Date: 12/06/2016 14:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DirectorLogin](
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[EmailID] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Concentration]    Script Date: 12/06/2016 14:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Concentration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[codes] [nvarchar](50) NULL,
	[AdvisorsName] [nvarchar](50) NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AddAdvisor]    Script Date: 12/06/2016 14:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddAdvisor](
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Mob] [bigint] NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Status] [varchar](20) NULL,
 CONSTRAINT [PK_AddAdvisor] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
