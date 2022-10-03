using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectLeaderWebsite
{
    public partial class wucSignUp : System.Web.UI.UserControl
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Member M = new Member();
            lblMsg.Text = M.Register(TxtUser.Text, TxtPass.Text, TxtName.Text, TxtEmail.Text, TxtPhone.Text, TxtCo.Text, rblGender.SelectedValue,Convert.ToDateTime(TxtBDate.Text), TxtQuestion.Text, TxtAnswer.Text);

        }
    }
}