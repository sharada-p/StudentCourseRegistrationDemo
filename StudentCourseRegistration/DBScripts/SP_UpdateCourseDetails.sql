IF  EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_UpdateCourseDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_UpdateCourseDetails]
GO 

/****** Object:  StoredProcedure [dbo].[SP_UpdateCourseDetails]    Script Date: 16-08-2021 18:19:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_UpdateCourseDetails]
@CourseId bigint,
@CourseName varchar(1000)

AS
Begin
Update  CourseDetails
Set CourseName = @CourseName
Where CourseID = @CourseId

END

GO


