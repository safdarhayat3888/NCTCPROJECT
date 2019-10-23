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
    public partial class leave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Label1.Text= "" + Session["E_Id"];
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            Panel1.Visible = false;
            Panel2.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=safdar.database.windows.net;Initial Catalog=NCTCportal_2019-10-21T09 -53Z;User ID=safdar;Password=sH*#678978;Connect Timeout=30;Encrypt=false;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

            con.Open();

            String query = " insert into leave (E_Id, Leave_Type, LeaveFrom, LeaveTo, Reason, Approval) values ('" + Label1.Text + "','" + DropDownList1.SelectedItem.Value + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','N')";
            
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            lblleave.Text = "Leave is Applied Sucessfully";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            DropDownList1.SelectedItem.Value = "";


            con.Close();
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;

            //Establishing the MySQL Connection
            SqlConnection conn = new SqlConnection(@"Data Source=safdar.database.windows.net;Initial Catalog=NCTCportal_2019-10-21T09 -53Z;User ID=safdar;Password=sH*#678978;Connect Timeout=30;Encrypt=false;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

            string query;
            SqlCommand SqlCommand;
            SqlDataReader reader;

            SqlDataAdapter adapter = new SqlDataAdapter();
            //Open the connection to db
            conn.Open();

            //Generating the query to fetch the contact details
            query = "select * from leave where E_Id = '" + Session["E_Id"] + "'";

            SqlCommand = new SqlCommand(query, conn);
            adapter.SelectCommand = new SqlCommand(query, conn);
            //execute the query
            reader = SqlCommand.ExecuteReader();
            //Assign the results 
            GridView1.DataSource = reader;

            //Bind the data
            GridView1.DataBind();

          

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}