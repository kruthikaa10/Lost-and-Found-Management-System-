using System;
using System.Configuration;
using System.Data.SqlClient;

namespace LostAndFound
{
    public partial class ReportFound : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnReportFound_Click(object sender, EventArgs e)
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["LostFoundDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"INSERT INTO FoundItems
                                (UserEmail, ItemName, Category, Description, LocationFound, DateFound, Contact)
                                VALUES
                                (@UserEmail, @ItemName, @Category, @Description, @LocationFound, @DateFound, @Contact)";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    string email = "";

                    if (Session["Email"] != null)
                    {
                        email = Session["Email"].ToString();
                    }

                    cmd.Parameters.AddWithValue("@UserEmail", email);
                    cmd.Parameters.AddWithValue("@ItemName", txtItemName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Category", ddlCategory.SelectedValue);
                    cmd.Parameters.AddWithValue("@Description", txtDescription.Text.Trim());
                    cmd.Parameters.AddWithValue("@LocationFound", txtLocation.Text.Trim());
                    cmd.Parameters.AddWithValue("@DateFound", txtDate.Text);
                    cmd.Parameters.AddWithValue("@Contact", txtContact.Text.Trim());

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            Response.Redirect("FoundItems.aspx", false);
        }
    }
}