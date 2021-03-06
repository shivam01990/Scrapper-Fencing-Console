USE [ScraperFencing]
GO
/****** Object:  Table [dbo].[Comany]    Script Date: 8/17/2016 8:29:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comany](
	[ComanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[ComanyURL] [nvarchar](max) NULL,
 CONSTRAINT [PK_Comany] PRIMARY KEY CLUSTERED 
(
	[ComanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
