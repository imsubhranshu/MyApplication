using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyApplication
{
    public partial class About : Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\DELL\\Documents\\MyApplication.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Click(object sender, EventArgs e)
        {
            string Query = "INSERT INTO dept(name, floor) VALUES('" + txtDeptName.Text + "', " + txtDeptFloor.Text + ")";
            conn.Open();
            SqlCommand comm = new SqlCommand(Query, conn);
            comm.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("~/Department");

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            string Query = "UPDATE dept SET name = '" + txtDeptName.Text + "', floor = " + txtDeptFloor.Text + " WHERE Id = " + txtDeptId.Text;
            conn.Open();
            SqlCommand comm = new SqlCommand(Query, conn);
            comm.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("~/Department");
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            string Query = "DELETE dept WHERE Id = " + txtDeptId.Text;
            conn.Open();
            SqlCommand comm = new SqlCommand(Query, conn);
            comm.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("~/Department");
        }
    }
}