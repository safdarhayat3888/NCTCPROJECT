using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Data;

namespace NCTCUI
{
    public partial class userviewdsr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                
            }
            else
            {
                Response.Redirect("login.aspx");
            }

            //Establishing the MySQL Connection
            SqlConnection conn = new SqlConnection(@"Data Source=safdar.database.windows.net;Initial Catalog=NCTCportal_2019-10-21T09 -53Z;User ID=safdar;Password=sH*#678978;Connect Timeout=30;Encrypt=false;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

            string query;
            SqlCommand SqlCommand;
            SqlDataReader reader;

            SqlDataAdapter adapter = new SqlDataAdapter();
            //Open the connection to db
            conn.Open();

            //Generating the query to fetch the contact details
            query = "select * from dsr where E_Id = '" + Session["E_Id"] + "'";

            SqlCommand = new SqlCommand(query, conn);
            adapter.SelectCommand = new SqlCommand(query, conn);
            //execute the query
            reader = SqlCommand.ExecuteReader();
            //Assign the results 
            GridView1.DataSource = reader;

            //Bind the data
            GridView1.DataBind();



        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    SqlConnection con = new SqlConnection();
        //    con.ConnectionString = ConfigurationManager.ConnectionStrings["NCTCportalConnectionString"].ToString();
        //    con.Open();
        //    SqlCommand comm = new SqlCommand();
        //    string sqlQuery = "select * from dsr where E_Id = '" + Session["E_Id"] + "'";
        //    comm.CommandText = sqlQuery;
        //    comm.Connection = con;
        //    DataTable dt = new DataTable();
        //    SqlDataAdapter sda = new SqlDataAdapter(comm);


        //}
    }
}