using BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentCourseRegistration.Views
{
    public partial class ViewStudentDetails : System.Web.UI.Page
    {
        //StudentDetailsLogic dataLogic = new StudentDetailsLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAddStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddStudents.aspx");
        }

        protected void btnAddCourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCourseDetails.aspx");
        }
    }
}