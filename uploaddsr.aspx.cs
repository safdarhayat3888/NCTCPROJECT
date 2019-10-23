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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=safdar.database.windows.net;Initial Catalog=NCTCportal_2019-10-21T09 -53Z;User ID=safdar;Password=sH*#678978;Connect Timeout=30;Encrypt=false;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Label2.Text = "" + Session["E_Id"];
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
            protected void Button1_Click(object sender, EventArgs e)
        {
          

            con.Open();

            String query = " insert into dsr (Date, E_Id, Topic, Learned, Assigined, Status, Hours) values ('" + TextBox1.Text + "','" + Label2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedItem.Value + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            lbldsr.Text= "DSR Entry is Sucessful" ;
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            DropDownList1.SelectedItem.Value = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            con.Close();
        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    Panel1.Visible = false;
        //    Panel2.Visible = true;
        //    con.Open();
        //    String query = "SELECT E_Id FROM dsr where  dt.Rows[0][3]" ;
        //    SqlDataAdapter sda = new SqlDataAdapter(query, con);
        //    DataTable dt = new DataTable();
        //    sda.Fill(dt);



        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //    con.Close();



        //    GridView1.Visible = true;

        //}
    }
}