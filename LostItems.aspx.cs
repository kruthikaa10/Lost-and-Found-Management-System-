using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace LostAndFound
{
    public partial class LostItems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadLostItems();
            }
        }

        private void LoadLostItems()
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["LostFoundDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"
                    SELECT
                        ItemName,
                        Category,
                        Description,
                        Location,
                        DateLost,
                        Contact
                    FROM LostItems
                    ORDER BY DateLost DESC";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();

                        da.Fill(dt);

                        gvLostItems.DataSource = dt;
                        gvLostItems.DataBind();
                    }
                }
            }
        }
    }
}