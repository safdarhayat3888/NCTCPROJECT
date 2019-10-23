using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace NCTCUI
{
    public partial class adminleave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] != null)
                {

                }
                else
                {
                    Response.Redirect("login.aspx");
                }
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox status = (row.Cells[3].FindControl("CheckBox1") as CheckBox);
                string E_Id = Convert.ToString(row.Cells[1].Text);
                if (status.Checked)
                {
                    updaterow(E_Id, "A");
                }
                else
                {
                    updaterow(E_Id, "N");

                }



            }
            Label2.Text = "Applications Has Been Approved Successfully";
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }


        private void updaterow(String E_Id, String Approval)
        {
            String mycon = "Data Source=safdar.database.windows.net;Initial Catalog=NCTCportal_2019-10-21T09 -53Z;User ID=safdar;Password=sH*#678978;Connect Timeout=30;Encrypt=false;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            String updatedata = "Update leave set Approval='" + Approval + "' where E_Id= '"+E_Id+"' ";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }
    }
}