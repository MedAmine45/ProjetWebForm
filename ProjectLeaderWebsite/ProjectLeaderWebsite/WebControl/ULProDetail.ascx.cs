using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectLeaderWebsite.WebControl
{
    public partial class ProDetail : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Product Pro = new Product();
            string ProId = Request.QueryString["proid"].ToString();
            string catno =  Request.QueryString["catno"].ToString();
            

            if (Request.QueryString["catno"] != null && Request.QueryString["proid"] != null)
            {
              if(Pro.Find(Request.QueryString["catno"].ToString(), Request.QueryString["proid"].ToString()))
                {
                    LblCat.Text = Pro.CatNo;
                    LblProID.Text = Pro.ProdID;
                    LblProName.Text = Pro.ProdName;
                    LblPrice.Text = Pro.Price.ToString();
                    LblQty.Text = Pro.AvQty.ToString();
                    txtMaxQty.Text = Pro.AvQty.ToString();
                    LblDesc.Text = Pro.Description;
                    imgPro.ImageUrl = "..//ProImgs//" + Pro.ProdID + ".jpg";

                }

            }
        }
    }
}