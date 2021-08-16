IF  EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertStudentCourseDetail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_InsertStudentCourseDetail]
GO 
/****** Object:  StoredProcedure [dbo].[SP_InsertStudentCourseDetail]    Script Date: 16-08-2021 18:18:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_InsertStudentCourseDetail]
@StudentId bigint,
@CourseId bigint

AS
BEGIN
INSERT INTO StudentCourseDetails(
StudentID,
CourseID)
Values(
@StudentId,
@CourseId
)
END

GO


