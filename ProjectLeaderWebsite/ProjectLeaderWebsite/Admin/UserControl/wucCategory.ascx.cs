using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectLeaderWebsite.Admin.UserControl
{
    public partial class wucCategory : System.Web.UI.UserControl
    {
        Category categorie = new Category();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
           grd.DataSource= categorie.Search(rdoField.SelectedValue,txtSearch.Text);
            grd.DataBind();
            LblMsg.Text = "";
            btnRemove.Enabled = false;
            btnUpdate.Enabled = false;
            grd.SelectedIndex = -1;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            txtCatNo.Text = "";
            txtCatName.Text = "";
            txtDesc.Text = "";
            img.Visible = false;
            txtCatNo.Text = categorie.GetTextCatNo();
            //txtCatNo.ReadOnly = true;

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            txtCatNo.Text = grd.SelectedRow.Cells[1].Text;
            txtCatName.Text = grd.SelectedRow.Cells[2].Text;
            txtDesc.Text = grd.SelectedRow.Cells[3].Text;
            txtCatNo.ReadOnly = true;
            img.Visible = true;
            img.ImageUrl = "../../CatImgs/"+ txtCatNo.Text+".jpg";
            
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
           if(categorie.RemoveCategory(grd.SelectedRow.Cells[1].Text))
            {
                LblMsg.Text = "Category deleted Successfully";
            }
           else
                LblMsg.Text = "Category not deleted may  have products";
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
            categorie.CatNo = txtCatNo.Text;
            categorie.CatName = txtCatName.Text;
            categorie.Description = txtDesc.Text;
            if (txtCatNo.ReadOnly)
                if (categorie.Update())
                {
                    LblMsg.Text = "Category Updated Successfully";
                    MultiView1.ActiveViewIndex = 0; 
                }
                else
                    lblEditMsg.Text = "Category not Updated";

            else
                if (categorie.Add())
            {
                LblMsg.Text = "Category Added Successfully";
                MultiView1.ActiveViewIndex = 0;
            }
            else
                lblEditMsg.Text = "Category not Added , please change Category";
            LblMsg.Text = Server.MapPath("../CatImgs") + "\\" + txtCatNo.Text + ".jpg";
            if (fup.HasFile)
            {
                fup.SaveAs(Server.MapPath("../CatImgs") + "\\" + txtCatNo.Text + ".jpg");
                LblMsg.Text += " <br/> Image Uploaded Successfully";

            }
        }
    }
}