using BusinessObject;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class CourseDetailsLogic
    {
        CourseDataAccess dataAccess = new CourseDataAccess();
        public int AddCourseDetails(CourseModel course)
        {
            int courseId = dataAccess.AddCourseDetails(course);
            return courseId;
        }

        public List<CourseModel> GetCourseDetails()
        {
            List<CourseModel> courseList = dataAccess.GetCourseDetails();
            return courseList;
        }

        public void DeleteCourse(int courseId)
        {
            dataAccess.DeleteCourseDetails(courseId);
        }

        public int EditCourseDetails(int CourseId, string CourseName)
        {
            return dataAccess.UpdateCourseDetails(CourseId, CourseName);
        }
    }
}
