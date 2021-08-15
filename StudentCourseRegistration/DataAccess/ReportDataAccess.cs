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
    public class ReportDataAccess
    {
        string connection = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        public List<ReportModel> GetReportDetails(int pageIndex, int pageSize, out int totalRows)
        {
            List<ReportModel> reportDetails = new List<ReportModel>();
            using (SqlConnection con = new SqlConnection(connection))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("SP_GetStudentCourseDetail", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
                    cmd.Parameters.AddWithValue("@PageSize", pageSize);

                    SqlParameter parameterTotalRows = new SqlParameter();
                    parameterTotalRows.ParameterName = "@TotalRows";
                    parameterTotalRows.Direction = ParameterDirection.Output;
                    parameterTotalRows.SqlDbType = SqlDbType.Int;

                    cmd.Parameters.Add(parameterTotalRows);

                    con.Open();
                    SqlDataReader dataReader = cmd.ExecuteReader();
                    while (dataReader.Read())
                    {
                        var reportModel = new ReportModel();

                        reportModel.StudentName = dataReader["FirstName"].ToString();
                        reportModel.CourseName = dataReader["CourseName"].ToString();

                        reportDetails.Add(reportModel);
                    }
                    //cmd.Dispose();
                    dataReader.Close();
                    totalRows = (int)cmd.Parameters["@TotalRows"].Value;
                    
                    return reportDetails;
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
    }
}
