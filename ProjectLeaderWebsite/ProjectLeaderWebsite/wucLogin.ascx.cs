using ProjectLeaderWebsite.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectLeaderWebsite
{
    public partial class wucLogin : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user =  Utility.ReadFromCookie("login", "User", Request);
            if(user != null)
            {
                Redirect(user);
            }
         
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Member m = new Member();
            if (m.Login(TxtUser.Text, TxtPass.Text))
            {
               
                Utility.CreateCookie("login", new string[] { "User", "Pass" }, new string[] { TxtUser.Text, TxtPass.Text }, !chkRem.Checked, Response);
                Redirect(TxtUser.Text);        

            }
                    else
              {
                lblMsg.Text = "Username/Password Incorrect";
                 }
            
             }

        private void Redirect(string username)
        {
            if (username == "Admin")
                Response.Redirect("Admin/Admin.aspx");
            else
            {
                MultiView1.ActiveViewIndex = 1;
                lblWelcome.Text = "Welcome Back : " + username;
            }
        }

        protected void Lbnlogout_Click(object sender, EventArgs e)
        {
            Utility.RemoveCookie("login",Response);
            Response.Redirect("Default.aspx");
        }
    }
}