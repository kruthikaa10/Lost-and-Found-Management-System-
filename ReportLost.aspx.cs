using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LostAndFound
{
    public partial class ReportLost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnReportLost_Click(object sender, EventArgs e)
        {
            string connectionString =
        ConfigurationManager.ConnectionStrings["LostFoundDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"INSERT INTO LostItems
                        (UserEmail, ItemName, Category, Description, Location, DateLost, Contact)
                        VALUES
                        (@UserEmail, @ItemName, @Category, @Description, @Location, @DateLost, @Contact)";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    if (Session["UserID"] == null)
                    {
                        Response.Redirect("Login.aspx");
                        return;
                    }

                    cmd.Parameters.AddWithValue("@UserEmail",
                        Session["Email"] != null ? Session["Email"].ToString() : "");

                    cmd.Parameters.AddWithValue("@ItemName",
                        txtItemName.Text.Trim());

                    cmd.Parameters.AddWithValue("@Category",
                        ddlCategory.SelectedValue);

                    cmd.Parameters.AddWithValue("@Description",
                        txtDescription.Text.Trim());

                    cmd.Parameters.AddWithValue("@Location",
                        txtLocation.Text.Trim());

                    cmd.Parameters.AddWithValue("@DateLost",
                        txtDateLost.Text);

                    cmd.Parameters.AddWithValue("@Contact",
                        txtContact.Text.Trim());

                    con.Open();

                    cmd.ExecuteNonQuery();

                    Response.Redirect("LostItems.aspx", false);
                }
            }
        }
    }
}