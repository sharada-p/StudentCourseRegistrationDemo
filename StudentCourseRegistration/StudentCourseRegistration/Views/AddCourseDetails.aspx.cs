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
    public partial class AddCourseDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            CourseDetailsLogic dataLogic = new CourseDetailsLogic();
            CourseModel courseDataModel = new CourseModel();
            courseDataModel.CourseName = txtCourseName.Text.ToString();
            courseDataModel.CourseDescription = txtDesc.Text.ToString();
            int result = dataLogic.AddCourseDetails(courseDataModel);
        }

        protected void btnViewCourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCourseDetails.aspx");
        }
    }
}