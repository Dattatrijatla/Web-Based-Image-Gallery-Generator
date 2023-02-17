using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class registerform : System.Web.UI.Page
{
    SqlConnection Con=new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand Cmd=new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
    Con.Open();
    Cmd.Connection = Con;
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Cmd.CommandText = "Insert into register values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
        Cmd.ExecuteNonQuery();
        Label1.Text="value sent successfully";
    }
}
