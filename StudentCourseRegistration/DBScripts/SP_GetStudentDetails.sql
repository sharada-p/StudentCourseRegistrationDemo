IF  EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetStudentDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_GetStudentDetails]
GO 

/****** Object:  StoredProcedure [dbo].[SP_GetStudentDetails]    Script Date: 16-08-2021 18:16:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_GetStudentDetails]

AS
Begin

Select  
StudentID,
FirstName,
LastName

From Student

END

GO


