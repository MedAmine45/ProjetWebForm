using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectLeaderWebsite.Admin.UserControl
{
    public partial class MemberSearch : System.Web.UI.UserControl
    {
        Member M = new Member();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            grd.DataSource= M.Search(rdoField.SelectedValue, txtSearch.Text);
            grd.DataBind();
            grd.SelectedIndex = -1;
            btnRemove.Enabled = false;
            LblMsg.Text = "";
        }

        protected void grd_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnRemove.Enabled = true;

        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            M.Unsubscrible(grd.SelectedRow.Cells[1].Text);
            btnRemove.Enabled = false;
            LblMsg.Text = "User Deleted Successfully";
            grd.DataSource = M.Search(rdoField.SelectedValue, txtSearch.Text);
            grd.DataBind();
        }
    }
}