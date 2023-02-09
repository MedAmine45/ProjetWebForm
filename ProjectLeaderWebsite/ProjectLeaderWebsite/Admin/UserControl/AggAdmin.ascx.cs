using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectLeaderWebsite;

namespace ProjectLeaderWebsite.Admin.UserControl
{
    public partial class AggAdmin : System.Web.UI.UserControl
    {
        ProjectLeaderWebsite.Product Pro = new ProjectLeaderWebsite.Product();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMaxPrice.Text = Pro.MaxPriceProducts().ToString();
            lblProCount.Text = Pro.CountProducts().ToString();
            lblProNameMaxPrice.Text = Pro.MaxPriceProductName();

            Member M = new Member();
                lblFPer.Text = M.GenderPer("F")*100+"%";
            lblMPer.Text = M.GenderPer("M ") *100 +"%";
            imgBarMale.Width = Convert.ToInt16( M.GenderPer("M")*100*2);
            imgBarFemale.Width = Convert.ToInt16( M.GenderPer("F")*100*2);


        }
    }
}