using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectLeaderWebsite.WebControl
{
    public partial class ShoppingCard : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                RefereshData();
            if(Session["cart"]== null)
            {
                hlkCheckout.Visible = false;
            }else
                hlkCheckout.Visible = true;

        }
        private void RefereshData()
        {
            grdCart.DataSource = (DataTable)Session["cart"];
            grdCart.DataBind();
            double total = 0;
            int x = 0;
            for (x = 0; x < grdCart.Rows.Count; x++)
                total += double.Parse(grdCart.Rows[x].Cells[5].Text);
            lblTotal.Text = "Total of order equal  " + total.ToString() + " of " + x.ToString() + " Products";
        }

        protected void grdCart_SelectedIndexChanged(object sender)
        {

        }

        protected void grdCart_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable tbl;
            if(Session["cart"] != null)
            {
                tbl = (DataTable)Session["cart"];
                string[] PK = { grdCart.Rows[e.RowIndex].Cells[0].Text, grdCart.Rows[e.RowIndex].Cells[1].Text};
                DataRow row = tbl.Rows.Find(PK);
                if(row != null)
                    row.Delete();
                Session["cart"] = tbl;
                RefereshData();
                //grdCart.DataSource = tbl;
                //grdCart.DataBind ();
            }

        }

        protected void grdCart_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdCart.EditIndex = e.NewEditIndex;
            RefereshData();
            DataBind();
        }

        protected void grdCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdCart.EditIndex = -1;
            RefereshData();
            DataBind();
        }

        protected void grdCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox txtQty = (TextBox)grdCart.Rows[e.RowIndex].Cells[4].Controls[0];
            if(Session["cart"] != null)
            {
                //DataTable tbl = (DataTable) Session["cart"];
                DataTable tbl = (DataTable)Session["cart"];
                string[] PK = { grdCart.Rows[e.RowIndex].Cells[0].Text, grdCart.Rows[e.RowIndex].Cells[1].Text };
                DataRow row = tbl.Rows.Find(PK);
                row[4] = txtQty.Text;
                row[5] = Convert.ToInt32( txtQty.Text) *double.Parse(row[3].ToString());
                //tbl.Rows = row; 
                Session["cart"] = tbl;
                RefereshData();
                grdCart.EditIndex = -1;
                DataBind();
                //Response.Redirect("Cart.aspx");
            }
            
        }
    }
}