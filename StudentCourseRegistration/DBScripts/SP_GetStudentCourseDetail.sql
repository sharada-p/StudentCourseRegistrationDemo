IF  EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetStudentCourseDetail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_GetStudentCourseDetail]
GO 
/****** Object:  StoredProcedure [dbo].[SP_GetStudentCourseDetail]    Script Date: 16-08-2021 18:16:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_GetStudentCourseDetail]
@PageIndex int,
@PageSize int,
@TotalRows int output
AS
BEGIN

Declare @StartRowIndex int, @EndRowIndex int

set @StartRowIndex = (@PageIndex * @PageSize) + 1
Set @EndRowIndex = (@PageIndex + 1) * @PageSize

Select FirstName, CourseName from
(Select ROW_NUMBER() Over (Order by SC.StudentId) as RowNumber,
S.FirstName,
C.CourseName
From StudentCourseDetails SC
Inner Join Student S On S.StudentId = SC.StudentId
Inner Join CourseDetails C On C.CourseId = SC.CourseId ) ReportDetails 
Where RowNumber >= @StartRowIndex and RowNumber <= @EndRowIndex

select @TotalRows = Count(*) from StudentCourseDetails

END

GO


