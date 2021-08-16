IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseDetails]') AND type in (N'U'))
DROP TABLE [dbo].[CourseDetails]
GO

/****** Object:  Table [dbo].[CourseDetails]    Script Date: 16-08-2021 18:09:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CourseDetails](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](1000) NULL,
	[COurseDetails] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


