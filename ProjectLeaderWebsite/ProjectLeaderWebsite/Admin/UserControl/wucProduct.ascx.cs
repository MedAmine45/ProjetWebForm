using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectLeaderWebsite.Admin.UserControl
{
    public partial class wucProduct : System.Web.UI.UserControl
    {
        ProjectLeaderWebsite.Product Pro = new ProjectLeaderWebsite.Product();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
           grd.DataSource= Pro.Search(rdoField.SelectedValue,txtSearch.Text);
            grd.DataBind();
            LblMsg.Text = "";
            btnRemove.Enabled = false;
            btnUpdate.Enabled = false;
            grd.SelectedIndex = -1;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            txtProID.Text = "";
            txtProName.Text = "";
            txtPrice.Text = "";
            txtAvQty.Text = "";
            txtDesc.Text = "";
            txtProID.ReadOnly = false;
            img.Visible = false;
            txtProID.Text = Pro.GetNextProID();
            //txtCatNo.ReadOnly = true;

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            ddlCat.SelectedValue = grd.SelectedRow.Cells[1].Text;
            txtProID.Text = grd.SelectedRow.Cells[2].Text;
            txtProName.Text = grd.SelectedRow.Cells[3].Text;
            txtPrice.Text = grd.SelectedRow.Cells[4].Text;
            txtAvQty.Text = grd.SelectedRow.Cells[5].Text;
            txtDesc.Text = grd.SelectedRow.Cells[7].Text;
            txtProID.ReadOnly = true;
            img.Visible = true;
            img.ImageUrl = "../../ProImgs/"+ txtProID.Text+".jpg";
            
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
           if(Pro.RemoveProduct(grd.SelectedRow.Cells[2].Text, grd.SelectedRow.Cells[1].Text))
            {
                LblMsg.Text = "Product deleted Successfully";
            }
           else
                LblMsg.Text = "Product not deleted ";
            grd.DataBind();
            btnRemove.Enabled=false;
            btnUpdate.Enabled=false;
        }

        protected void grd_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnRemove.Enabled = true;
            btnUpdate.Enabled = true;
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            Pro.CatNo = ddlCat.SelectedValue;
            Pro.ProdID  = txtProID.Text;
            Pro.ProdName = txtProName.Text;
            Pro.Price = Convert.ToDouble( txtPrice.Text);
            Pro.AvQty = Convert.ToInt32(txtAvQty.Text);
            Pro.Description = txtDesc.Text;

            if (txtProID.ReadOnly)
                if (Pro.Update())
                {
                    LblMsg.Text = "Product Updated Successfully";
                    MultiView1.ActiveViewIndex = 0;
                }
                else
                    lblEditMsg.Text = "Product not Updated";

            else
                if (Pro.Add())
            {
                LblMsg.Text = "Product Added Successfully";
                MultiView1.ActiveViewIndex = 0;
            }
            else
                lblEditMsg.Text = "Product not Added , please change Category";
            LblMsg.Text = Server.MapPath("../ProImgs") + "\\" + txtProID.Text + ".jpg";
            if (fup.HasFile)
            {
                fup.SaveAs(Server.MapPath("../ProImgs") + "\\" + txtProID.Text + ".jpg");
                LblMsg.Text += " <br/>Image Uploaded Successfully";

            }
            grd.DataBind();
        }
    }
}