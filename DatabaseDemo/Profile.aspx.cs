using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseDemo
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int i = MyDataSource.Update();
            if (i == 1)
            {
                message.Text = "Profile Updated Successfully !";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataView dataView = (DataView)MyDataSource.Select(DataSourceSelectArguments.Empty);
            DataTable table = dataView.ToTable();
            TextBox1.Text = table.Rows[0].ItemArray[1].ToString();
            TextBox2.Text = table.Rows[0].ItemArray[2].ToString();
            TextBox3.Text = table.Rows[0].ItemArray[3].ToString();
            TextBox4.Text = table.Rows[0].ItemArray[5].ToString();
            TextBox5.Text = table.Rows[0].ItemArray[4].ToString();
            TextBox6.Text = table.Rows[0].ItemArray[6].ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int i = MyDataSource.Delete();
            if (i == 1)
            {
                message.Text = "Profile Deleted Successfully !";
            }
        }
    }
}