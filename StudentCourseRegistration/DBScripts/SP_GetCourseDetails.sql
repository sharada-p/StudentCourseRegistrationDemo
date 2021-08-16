IF  EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetCourseDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_GetCourseDetails]
GO 
/****** Object:  StoredProcedure [dbo].[SP_GetCourseDetails]    Script Date: 16-08-2021 18:15:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_GetCourseDetails]

AS
Begin

Select  
CourseID,
CourseName,
COurseDetails
From CourseDetails

END

GO


