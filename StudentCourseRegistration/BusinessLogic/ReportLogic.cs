using BusinessObject;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class ReportLogic
    {
        public List<ReportModel> GetReportDetails(int pageIndex, int pageSize, out int totalRows )
        {
            ReportDataAccess dataAccess = new ReportDataAccess();
            var reportList = dataAccess.GetReportDetails(pageIndex, pageSize, out totalRows);
             return reportList;
        }
    }
}
