using BusinessObject;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class StudentCourseLogic
    {
        StudentCourseDataAccess dataAccessLayer = new StudentCourseDataAccess();

        public void AddStudentCourseDetails(StudentCourseModel studentCourseModel)
        {
            dataAccessLayer.AddStudentCourseDetails(studentCourseModel);
        }
    }
}
