IF  EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertStudentDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_InsertStudentDetails]
GO 
/****** Object:  StoredProcedure [dbo].[SP_InsertStudentDetails]    Script Date: 16-08-2021 18:18:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_InsertStudentDetails]
@FirstName Varchar(1000),
@LastName Varchar(1000),
@DOB DateTime,
@ContactNumber Bigint

AS
Begin
Insert Into Student
(
FirstName,
LastName,
DOB,
ContactNumber
)
Values
(
@FirstName,
@LastName,
@DOB,
@ContactNumber
)
END

GO


