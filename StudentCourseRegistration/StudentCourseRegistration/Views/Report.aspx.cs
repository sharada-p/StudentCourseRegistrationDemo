using BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentCourseRegistration.Views
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int totalRows = 0;
                ReportLogic dataLogic = new ReportLogic();
                GridView1.DataSource = dataLogic.GetReportDetails(GridView1.PageIndex, GridView1.PageSize, out totalRows);
                GridView1.DataBind();

                DataBindRepeater(GridView1.PageIndex, GridView1.PageSize, totalRows);
            }
        }

        protected void linkButton_Click(Object sender,EventArgs e)
        {
            ReportLogic dataLogic = new ReportLogic();
            int totalRows = 0;
            int pageIndex = int.Parse((sender as LinkButton).CommandArgument);
            pageIndex -= 1;
            GridView1.PageIndex = pageIndex;
            GridView1.DataSource = dataLogic.GetReportDetails(GridView1.PageIndex, GridView1.PageSize, out totalRows);
            GridView1.DataBind();

            DataBindRepeater(pageIndex, GridView1.PageSize, totalRows);
        }

        private void DataBindRepeater(int pageIndex, int pageSize, int totalRows)
        {
            int totalPages = totalRows / pageSize;
            if (totalRows % pageSize != 0)
            {
                totalPages += 1;
            }
            List<ListItem> pages = new List<ListItem>();
            if (totalPages > 1)
            {
                for (int i = 1; i <= totalPages; i++)
                {
                    pages.Add(new ListItem(i.ToString(), i.ToString(), i != (pageIndex + 1)));
                }
            }
            repeaterPaging.DataSource = pages;
            repeaterPaging.DataBind();
        }

    }
}