<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudents.aspx.cs" Inherits="StudentCourseRegistration.Views.AddStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <script src="../Scripts/StudentDetails.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 120px" >
        <asp:label runat="server" text="FirstName"></asp:label>
        <asp:TextBox ID="txtFirstName" style="margin-left: 120px" runat="server"></asp:TextBox>
        <br />
        <asp:label runat="server" text="LastName"></asp:label>
        <asp:TextBox ID="txtLastName" style="margin-left: 120px" runat="server"></asp:TextBox>
        <br />
        <asp:label runat="server" text="Date Of Birth"></asp:label>
        <asp:TextBox type="date" style="margin-left: 100px" ID="txtDOB" runat="server" ></asp:TextBox>
        <br />
        <asp:label runat="server" text="Contact Number"></asp:label>
        <asp:TextBox ID="txtContact" style="margin-left: 80px" runat="server"></asp:TextBox>
    </div>
        <div style="margin-left: 160px">
            <asp:Button ID="btnSubmit" runat="server" Text="Save" OnClientClick ="javascript:return Validate()" OnClick="btnSubmit_Click" />
        </div> 
        <asp:label runat="server" text="lblMessage" Visible ="false"></asp:label>
        <div>
            <asp:LinkButton ID="btnViewStudentDetails" runat="server" OnClick="btnViewStudentDetails_Click">View Student Details</asp:LinkButton>
        </div>
        <div>
            <asp:LinkButton ID="btnAddCourse" runat="server" OnClick="btnAddCourse_Click">Add Course</asp:LinkButton>
        </div>
    </form>
</body>
</html>
