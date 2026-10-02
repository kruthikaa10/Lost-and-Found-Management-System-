using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LostAndFound
{
    public partial class FoundItems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadFoundItems();
            }
        }

        private void LoadFoundItems()
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["LostFoundDB"].ConnectionString;

            string query = @"
                SELECT
                    ItemName,
                    Category,
                    Description,
                    LocationFound,
                    DateFound,
                    Contact
                FROM dbo.FoundItems
                ORDER BY DateFound DESC";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();

                        da.Fill(dt);

                        gvFoundItems.DataSource = dt;
                        gvFoundItems.DataBind();
                    }
                }
            }
        }
    }
}