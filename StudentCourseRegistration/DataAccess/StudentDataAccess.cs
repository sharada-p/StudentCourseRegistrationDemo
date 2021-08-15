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
    public class StudentDataAccess
    {
        string connection = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        public int AddStudentDetails(StudentModel student)
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("SP_InsertStudentDetails", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@FirstName", student.FirstName);
                    cmd.Parameters.AddWithValue("@LastName", student.LastName);
                    cmd.Parameters.AddWithValue("@DOB", Convert.ToDateTime(student.DateOfBirth));
                    cmd.Parameters.AddWithValue("@ContactNumber", Convert.ToInt32(student.Mobilenumber));
                    con.Open();
                    int Result = cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    return Result; 
                }
                catch(Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
        }

        public List<StudentModel> GetStudentDetails()
        {
            List<StudentModel> stdDetails = new List<StudentModel>();
            using (SqlConnection con = new SqlConnection(connection))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("SP_GetStudentDetails", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataReader dataReader = cmd.ExecuteReader();
                    while (dataReader.Read())
                    {
                        var studentModel = new StudentModel();

                        studentModel.StudentId = Convert.ToInt64(dataReader["StudentID"]);
                        studentModel.FirstName = dataReader["FirstName"].ToString();
                        studentModel.LastName = dataReader["LastName"].ToString();
                        stdDetails.Add(studentModel);
                    }
                    cmd.Dispose();
                    return stdDetails; 
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

        public void DeleteStudentDetails(int studentId)
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("SP_DeleteStudentDetails", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@StudentID", studentId);
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

        public int EditStudentDetails(int id, string fName, string lName)
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("SP_UpdateStudentDetails", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@StudentID", id);
                    cmd.Parameters.AddWithValue("@FirstName", fName);
                    cmd.Parameters.AddWithValue("@LastName", lName);
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
