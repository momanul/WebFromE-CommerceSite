using CristalReportLib;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Buy.com.Admin
{
    public partial class ViewCristalReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CRHelperClass db = new CRHelperClass();

                CRProductReport cr = new CRProductReport();
                cr.SetDataSource(db.GetData());
                CrystalReportViewer1.ReportSource = cr;

            }
        }
    }
}