using BusinessObject;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class StudentDetailsLogic
    {
        StudentDataAccess dataAccess = new StudentDataAccess();
        public int AddStduentDetails(StudentModel student)
        {
            int studentId = dataAccess.AddStudentDetails(student);
            return studentId;
        }

        public List<StudentModel> GetStudentDetails()
        {
            List<StudentModel> studentList = dataAccess.GetStudentDetails();
            return studentList;
        }

        public void DeleteStudent(int studentId)
        {
            dataAccess.DeleteStudentDetails(studentId);
        }

        public int EditStudentDetails(int StudentId, string FirstName, string LastName)
        {
            return dataAccess.EditStudentDetails(StudentId, FirstName, LastName);
        }
    }
}
