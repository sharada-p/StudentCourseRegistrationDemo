<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterCourse.aspx.cs" Inherits="StudentCourseRegistration.Views.RegisterCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="ddStudentList" style="margin-left:120px" runat="server" AutoPostBack="True"></asp:DropDownList>
        <asp:DropDownList ID="ddCourseList" style="margin-left:120px" runat="server" AutoPostBack="True"></asp:DropDownList>
    </div>
        <br />
    <div>
        <asp:Button ID="btnAdd" style="margin-left:120px" runat="server" Text="Add" OnClick="btnAdd_Click" />
    </div>
        <br />
        <div>
            <asp:LinkButton ID="btnReport" runat="server" OnClick="btnReport_Click">Get Report</asp:LinkButton>
        </div>
    </form>
</body>
</html>
