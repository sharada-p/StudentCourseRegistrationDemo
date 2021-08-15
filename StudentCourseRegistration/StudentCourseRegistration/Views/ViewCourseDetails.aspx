<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCourseDetails.aspx.cs" Inherits="StudentCourseRegistration.Views.ViewCourseDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" align="Center" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="CourseId" HeaderText="CourseId" SortExpression="CourseId" Readonly ="true" />
                <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteCourse" SelectMethod="GetCourseDetails" TypeName="BusinessLogic.CourseDetailsLogic" UpdateMethod="EditCourseDetails">
            <DeleteParameters>
                <asp:Parameter Name="courseId" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="CourseId" Type="Int32" />
                <asp:Parameter Name="CourseName" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>
        <div>
            <asp:LinkButton ID="btnRegisterCourse" runat="server" OnClick="btnRegisterCourse_Click">Register New Course</asp:LinkButton>
        </div>
    </form>
</body>
</html>
