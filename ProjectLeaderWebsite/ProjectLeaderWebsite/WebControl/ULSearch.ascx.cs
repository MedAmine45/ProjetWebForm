using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectLeaderWebsite.WebControl
{
    public partial class ULSearch : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProOfCat.aspx?q=" + txtSearch.Text);


        }
    }
}