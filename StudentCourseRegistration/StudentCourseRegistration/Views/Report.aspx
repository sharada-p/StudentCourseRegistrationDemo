<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="StudentCourseRegistration.Views.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="Center">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" PageSize="3">
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <br />
        <asp:Repeater ID="repeaterPaging" runat="server">
            <itemtemplate>
                <asp:LinkButton ID="linkButton" runat="server" Text ='<%#Eval("Text") %>' CommandArgument ='<%# Eval("Value") %>' Enabled='<%# Eval("Enabled") %>'
                    OnClick="linkButton_Click">

                </asp:LinkButton>
            </itemtemplate>
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
