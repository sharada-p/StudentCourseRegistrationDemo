IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudentCourseDetails]') AND type in (N'U'))
DROP TABLE [dbo].[StudentCourseDetails]
GO
/****** Object:  Table [dbo].[StudentCourseDetails]    Script Date: 16-08-2021 18:11:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[StudentCourseDetails](
	[StudentID] [bigint] NULL,
	[CourseID] [int] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[StudentCourseDetails]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [dbo].[CourseDetails] ([CourseID])
GO

ALTER TABLE [dbo].[StudentCourseDetails]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO


