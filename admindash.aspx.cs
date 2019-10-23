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
using System.Text;
using System.Security.Cryptography;


namespace NCTCUI
{
    public partial class admin : System.Web.UI.Page
    {
        String encrypwd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            encryption1();
            string query = " insert into login (Username, Password, Roles, E_Id) values ('" + TextBox2.Text + "','" + encrypwd + "','" + DropDownList1.SelectedItem.Value + "','" + TextBox5.Text + "')";
            SqlConnection con = new SqlConnection(@"Data Source=safdar.database.windows.net;Initial Catalog=NCTCportal_2019-10-21T09 -53Z;User ID=safdar;Password=sH*#678978;Connect Timeout=30;Encrypt=false;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlConnection mycon = new SqlConnection( );
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            lblnewuser.Text = "New Employee Entry is Sucessful";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            con.Close();
        }
        public void encryption1()
        {
            string strmsg = string.Empty;
            byte[] encode = new byte[TextBox3.Text.ToString().Length];
            encode = Encoding.UTF8.GetBytes(TextBox3.Text);
            strmsg = Convert.ToBase64String(encode);
            encrypwd = strmsg;
        }
    }
}