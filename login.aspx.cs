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
    public partial class login2 : System.Web.UI.Page

    {

        static String decryptedpwd;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void loginbutton_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(@"Data Source=safdar.database.windows.net;Initial Catalog=NCTCportal;User ID=safdar;Password=sH*#678978;Connect Timeout=30;Encrypt=false;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            //con.Open();
            //SqlCommand cmd = new SqlCommand("select * from login where Username =@Username and Password=@Password", con);
            //cmd.Parameters.AddWithValue("@Username", username.Text);
            ////cmd.Parameters.AddWithValue("@E_Id", empid.Text);
            //cmd.Parameters.AddWithValue("@Password", password.Text);

            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //if (dt.Rows.Count > 0)
            //{
            //    Session["role"] = dt.Rows[0][2];
            //    Session["E_Id"] = dt.Rows[0][3];

            //    if (Session["role"].ToString() == "Admin")
            //    {
            //        Response.Write("Login Sucessful");
            //        Session["user"] = username.Text;
            //        Response.Redirect("~/admindash.aspx");

            //    }
            //    else
            //    {
            //        Response.Write("Login Sucessful");
            //        Session["user"] = username.Text;
            //        Response.Redirect("~/dashboard.aspx");

            //    }

            //}
            //else
            //{
            //    Response.Write("<script>alert('Invalid Username or Password')</script>");



            //}


            String mycon = "Data Source=safdar.database.windows.net;Initial Catalog=NCTCportal_2019-10-21T09 -53Z;User ID=safdar;Password=sH*#678978;Connect Timeout=30;Encrypt=false;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from login where Username='" + username.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);

            String pass;

            if (dt.Rows.Count > 0)
            {
                //uname = dt.Tables[0].Rows[0]["username"].ToString();
                pass = dt.Rows[0]["Password"].ToString();
                Session["role"] = dt.Rows[0][2];
                Session["E_Id"] = dt.Rows[0][3];

                scon.Close();
                decryptpwd(pass);
                if (Session["role"].ToString() == "Admin" && decryptedpwd == password.Text)
                {
                    Response.Write("Login Sucessful");
                    Session["user"] = username.Text;
                    Response.Redirect("~/admindash.aspx");
                }
                else
                {
                    Response.Write("Login Sucessful");
                    Session["user"] = username.Text;
                    Response.Redirect("~/dashboard.aspx");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password')</script>");
            }


        }
        private void decryptpwd(String encrytpwd)
        {
            string decryptpwd = string.Empty;
            UTF8Encoding encodepwd = new UTF8Encoding();
            Decoder Decode = encodepwd.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encrytpwd);
            int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            decryptpwd = new String(decoded_char);
            decryptedpwd = decryptpwd;

        }

    }
}