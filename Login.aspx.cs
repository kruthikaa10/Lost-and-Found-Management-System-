using System;
using System.Configuration;
using System.Data.SqlClient;

namespace LostAndFound
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["LostFoundDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT UserID, Name, UserType FROM Users WHERE Email=@Email AND Password=@Password";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

                    try
                    {
                        con.Open();

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                Session["UserID"] = reader["UserID"];
                                Session["UserName"] = reader["Name"];
                                Session["UserType"] = reader["UserType"];
                                Session["Email"] = txtEmail.Text.Trim();

                                if (reader["UserType"].ToString() == "Admin")
                                {
                                    Response.Redirect("AdminDashboard.aspx", false);
                                }
                                else
                                {
                                    Response.Redirect("Default.aspx", false);
                                }
                            }
                            else
                            {
                                lblMessage.Text = "Invalid Email or Password!";
                                lblMessage.ForeColor = System.Drawing.Color.Red;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        lblMessage.Text = "Error: " + ex.Message;
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }
    }
}