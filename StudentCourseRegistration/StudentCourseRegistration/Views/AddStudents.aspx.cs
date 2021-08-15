using BusinessLogic;
using BusinessObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentCourseRegistration.Views
{
    public partial class AddStudents : System.Web.UI.Page
    {
        Label lblMessage = new Label();

        protected void Page_Load(object sender, EventArgs e)
        {      
            lblMessage.Visible = false;
            //Calendar1.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            StudentDetailsLogic dataLogic = new StudentDetailsLogic();
            StudentModel studentDataModel = new StudentModel();
            studentDataModel.FirstName = txtFirstName.Text.ToString();
            studentDataModel.LastName = txtLastName.Text.ToString();
            studentDataModel.DateOfBirth = txtDOB.Text.ToString();
            studentDataModel.Mobilenumber = txtContact.Text.ToString();
            int result = dataLogic.AddStduentDetails(studentDataModel);
            if (result > 0)
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Data Saved Successfully";
            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Error while Saving Data";
            }
        }

        protected void btnViewStudentDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewStudentDetails.aspx");
        }

        protected void btnAddCourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCourseDetails.aspx");
        }
    }
}