using ProjectLeaderWebsite.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectLeaderWebsite.Admin
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Utility.ReadFromCookie("login", "User", Request);
            if(user != null)
            {
                if(user != "Admin")
                    Response.Redirect("../Default.aspx");

            }
            else
            {
                Response.Redirect("../Default.aspx");
            }

        }
    }
}