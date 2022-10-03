using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectLeaderWebsite.WebControl
{
    public partial class ULAllPro : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.QueryString["catno"] != null)
                SqlDataSource1.SelectCommand = "SELECT * FROM [Product] where CatNo =" + Request.QueryString["catno"].ToString();
            else if(Request.QueryString["q"] != null)
                SqlDataSource1.SelectCommand = String.Format("SELECT * FROM [Product] where ProName Like'%{0}%'OR Description Like'%{0}%'", Request.QueryString["q"].ToString());
            else
                SqlDataSource1.SelectCommand = "SELECT * FROM [Product]";

        }
    }
}