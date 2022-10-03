using System;
using System.Collections.Generic;
using System.Data;
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

        protected void ibnCart_Click(object sender, ImageClickEventArgs e)
        {
            DataTable tbl;
            if (Session["cart"] == null)
            {
                tbl = new DataTable();
                tbl.Columns.Add("CatNo");
                tbl.Columns.Add("ProID");
                tbl.Columns.Add("ProName");
                tbl.Columns.Add("Price");
                tbl.Columns.Add("Qunatity");
                tbl.Columns.Add("SubTotal");
            }
            else
                tbl = (DataTable)Session["cart"];
            DataRow row = tbl.NewRow();
            row[0]= LblCat.Text;
            row[1]= LblProID.Text;
            row[2] = LblProName.Text;
            row[3] = LblPrice.Text;
            row[4] = LblQty.Text;
            row[5] = int.Parse(LblQty.Text)*double.Parse(LblPrice.Text);
            tbl.Rows.Add(row);
            Session["cart"] = tbl;
            Response.Redirect("AllCat.aspx");
        }
    }
}