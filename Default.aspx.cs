using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyApplication
{
    public partial class _Default : Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\DELL\\Documents\\MyApplication.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Click(object sender, EventArgs e)
        {
            string Query = "INSERT INTO student(rollNo, name, address, department) VALUES('" + txtRoll.Text + "', '" + txtName.Text + "', '" + txtAddress.Text + "', " + txtDept.Text + ")";

            conn.Open();
            SqlCommand comm = new SqlCommand(Query, conn);
            comm.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("~/");
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            string Query = "UPDATE student SET name = '" + txtName.Text + "', address = '" + txtAddress.Text + "', department = " + txtDept.Text + " WHERE rollNo = '" + txtRoll.Text + "'";

            conn.Open();
            SqlCommand comm = new SqlCommand(Query, conn);
            comm.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("~/");
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            string Query = "DELETE student WHERE rollNo = '" + txtRoll.Text + "'";

            conn.Open();
            SqlCommand comm = new SqlCommand(Query, conn);
            comm.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("~/");
        }
    }
}