IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DeleteStudentDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DeleteStudentDetails]
GO 
/****** Object:  StoredProcedure [dbo].[SP_DeleteStudentDetails]    Script Date: 16-08-2021 18:14:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_DeleteStudentDetails]
@StudentID bigint

AS
Begin
Delete From Student
Where StudentID = @StudentID

END

GO


