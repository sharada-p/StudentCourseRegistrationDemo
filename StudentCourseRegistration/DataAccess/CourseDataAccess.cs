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
    public class CourseDataAccess
    {
        string connection = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        public int AddCourseDetails(CourseModel course)
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("SP_InsertCourseDetails", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@CourseName", course.CourseName);
                    cmd.Parameters.AddWithValue("@CourseDetails", course.CourseDescription);
                    con.Open();
                    int Result = cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    return Result;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
        }

        public List<CourseModel> GetCourseDetails()
        {
            List<CourseModel> courseDetails = new List<CourseModel>();
            using (SqlConnection con = new SqlConnection(connection))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("SP_GetCourseDetails", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataReader dataReader = cmd.ExecuteReader();
                    while (dataReader.Read())
                    {
                        var courseModel = new CourseModel();

                        courseModel.CourseId = Convert.ToInt32(dataReader["CourseID"]);
                        courseModel.CourseName = dataReader["CourseName"].ToString();
                        courseModel.CourseDescription = dataReader["COurseDetails"].ToString();
                        courseDetails.Add(courseModel);
                    }
                    cmd.Dispose();
                    return courseDetails;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
        }

        public void DeleteCourseDetails(int courseId)
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("SP_DeleteCourseDetails", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@CourseId", courseId);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        public int UpdateCourseDetails(int CourseId, string CourseName)
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("SP_UpdateCourseDetails", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@CourseId", CourseId);
                    cmd.Parameters.AddWithValue("@CourseName", CourseName);
                    con.Open();
                    int result = cmd.ExecuteNonQuery();
                    return result;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }
    }
}
