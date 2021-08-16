IF  EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertCourseDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_InsertCourseDetails]
GO 
/****** Object:  StoredProcedure [dbo].[SP_InsertCourseDetails]    Script Date: 16-08-2021 18:17:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_InsertCourseDetails]
@CourseName varchar(1000),
@CourseDetails Varchar(1000)

AS
Begin
Insert Into  CourseDetails
(
CourseName,
COurseDetails
)
Values(
@CourseName,
@CourseDetails)


END

GO


