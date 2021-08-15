<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCourseDetails.aspx.cs" Inherits="StudentCourseRegistration.Views.AddCourseDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblCourseName" style="margin-left:130px" runat="server" Text="Course Name"></asp:Label>
        <asp:TextBox ID="txtCourseName"  style="margin-left:60px" runat="server"></asp:TextBox>
    </div>
        <div>
            <asp:Label ID="lblDesc" runat="server" style="margin-left:130px" Text="Course Description"></asp:Label>
            <asp:TextBox ID="txtDesc" style="margin-left:30px" runat="server"></asp:TextBox>
        </div>

        <asp:Button ID="btnSave" style="margin-left:130px" runat="server" Text="Save" OnClick="btnSave_Click" />

        <div>
            <asp:LinkButton ID="btnViewCourse" runat="server" OnClick="btnViewCourse_Click">View Course Details</asp:LinkButton>
        </div>
    </form>
</body>
</html>
