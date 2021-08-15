<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStudentDetails.aspx.cs" Inherits="StudentCourseRegistration.Views.ViewStudentDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="grdViewStdDetails" runat="server" align="Center" CellPadding="4" ForeColor="#333333" GridLines="None"  AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" DataKeyNames ="StudentId">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" Readonly ="true"/>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </div>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetStudentDetails" TypeName="BusinessLogic.StudentDetailsLogic" UpdateMethod="EditStudentDetails" DeleteMethod="DeleteStudent">
            <DeleteParameters>
                <asp:Parameter Name="studentId" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        <div>
            <asp:LinkButton ID="btnAddStudent" runat="server" OnClick="btnAddStudent_Click">Add New Student</asp:LinkButton>
        </div>
        <br />
         <div>
            <asp:LinkButton ID="btnAddCourse" runat="server" OnClick="btnAddCourse_Click">Add New Course</asp:LinkButton>
        </div>
    </form>
</body>
</html>
