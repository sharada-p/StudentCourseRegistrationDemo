using BusinessObject;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class StudentCourseDataAccess
    {
        string connection = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        public int AddStudentCourseDetails(StudentCourseModel details)
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("SP_InsertStudentCourseDetail", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@StudentId", details.StudentId);
                    cmd.Parameters.AddWithValue("@CourseId", details.CourseId);
                    con.Open();
                    int Result = cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    return Result;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }
    }
}
