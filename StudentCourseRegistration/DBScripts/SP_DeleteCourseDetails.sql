IF  EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DeleteCourseDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DeleteCourseDetails]
GO 
/****** Object:  StoredProcedure [dbo].[SP_DeleteCourseDetails]    Script Date: 16-08-2021 18:13:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_DeleteCourseDetails]
@CourseId bigint

AS
Begin
Delete From CourseDetails
Where CourseID = @CourseId

END

GO


