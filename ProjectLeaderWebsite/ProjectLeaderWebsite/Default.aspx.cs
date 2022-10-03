using ProjectLeaderWebsite.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectLeaderWebsite
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Utility.ReadFromCookie("login", "User", Request);
            if(user!= null)
            {
                lblWelcome.Text ="Welcome Back :   "+ user;
                lbnSignout.Visible = true;
            }

        }

        protected void lbnSignout_Click(object sender, EventArgs e)
        {
            Utility.RemoveCookie("login", Response);
            lbnSignout.Visible = false;
            lblWelcome.Text = "";
        }
    }
}