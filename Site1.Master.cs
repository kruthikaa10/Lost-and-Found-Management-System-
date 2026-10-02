using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LostAndFound
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CheckUserSession();
            }
        }

        private void CheckUserSession()
        {
            if (Session["UserID"] != null)
            {
                lnkLogin.Visible = false;
                lnkRegister.Visible = false;
                lnkLogout.Visible = true;

                if (Session["UserType"] != null && Session["UserType"].ToString() == "Admin")
                {
                    lnkAdminDash.Visible = true;
                }
                else
                {
                    lnkAdminDash.Visible = false;
                }
            }
            else
            {
                lnkLogin.Visible = true;
                lnkRegister.Visible = true;
                lnkLogout.Visible = false;
                lnkAdminDash.Visible = false;
            }
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}