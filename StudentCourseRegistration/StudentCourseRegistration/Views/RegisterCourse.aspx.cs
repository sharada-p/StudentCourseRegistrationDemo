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
    public partial class RegisterCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetStudentList();
                GetCourseList();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            StudentCourseLogic dataLogic = new StudentCourseLogic();
            StudentCourseModel dataModel = new StudentCourseModel();
            dataModel.StudentId = Convert.ToInt32(ddStudentList.SelectedValue);
            dataModel.CourseId = Convert.ToInt32(ddCourseList.SelectedValue);
            dataLogic.AddStudentCourseDetails(dataModel);
        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report.aspx");
        }

        private void GetStudentList()
        {
            StudentDetailsLogic studentDetails = new StudentDetailsLogic();
            var studentList = studentDetails.GetStudentDetails();
            ddStudentList.Items.Clear();
            ddStudentList.DataSource = studentList;
            ddStudentList.DataTextField = "FirstName";
            ddStudentList.DataValueField = "StudentId";
            ddStudentList.DataBind();
            ddStudentList.Items.Insert(0,"--Select--");
        }

        private void GetCourseList()
        {
            CourseDetailsLogic courseDetails = new CourseDetailsLogic();
            var courseList = courseDetails.GetCourseDetails();
            ddCourseList.Items.Clear();
            ddCourseList.DataSource = courseList;
            ddCourseList.DataTextField = "CourseName";
            ddCourseList.DataValueField = "CourseId";
            ddCourseList.DataBind();
            ddCourseList.Items.Insert(0, "--Select--");
        }
    }
}