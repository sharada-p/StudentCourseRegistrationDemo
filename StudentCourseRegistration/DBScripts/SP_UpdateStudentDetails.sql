IF  EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_UpdateStudentDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_UpdateStudentDetails]
GO 
/****** Object:  StoredProcedure [dbo].[SP_UpdateStudentDetails]    Script Date: 16-08-2021 18:19:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_UpdateStudentDetails]
@StudentID bigint,
@FirstName Varchar(1000),
@LastName Varchar(1000)

AS
Begin
Update Student
Set 
FirstName = @FirstName,
LastName = @LastName
Where StudentID = @StudentID

END

GO


