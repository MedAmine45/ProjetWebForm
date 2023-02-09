using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectLeaderWebsite.WebControl
{
    public partial class Checkout : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["login"]==null )
            {
              Wizard1.ActiveStepIndex = 0;
            }
            if(Session["cart"] == null)
            {
                Response.Redirect("Cart.aspx"); 

            }

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

        }

        protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
        {
            if (Request.Cookies["login"] == null)
            {
                Wizard1.ActiveStepIndex = 0;
            }
        }
    }
}