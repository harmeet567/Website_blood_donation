using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class updatecity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            show_data();
        }

    }
    public void show_data()
    {
        SqlDataAdapter adp = new SqlDataAdapter("select cityid,cityname from tbcity", ConfigurationManager.ConnectionStrings["demo"].ConnectionString);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        ListBox1.DataTextField = "cityname";
        ListBox1.DataValueField = "cityid";
        ListBox1.DataSource = ds;
        ListBox1.DataBind();
    }


    protected void add_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["demo"].ConnectionString);
        SqlCommand cmd = new SqlCommand("Insert into tbcity(cityname)values(@cityname)", con);

        cmd.Parameters.Add("@cityname", SqlDbType.VarChar, 50).Value = txtname.Text;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        show_data();
        txtname.Text = String.Empty;




    }
    protected void update_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["demo"].ConnectionString);
        SqlCommand cmd = new SqlCommand("update tbcity set cityname=@cityname where cityid=@cityid", con);

        cmd.Parameters.Add("@cityid", SqlDbType.Int).Value = Convert.ToInt32(ListBox1.SelectedValue);
        cmd.Parameters.Add("@cityname", SqlDbType.VarChar, 50).Value = txtname.Text;
        {
            con.Open();
        }

        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        show_data();
        txtname.Text = String.Empty;


    }
    protected void delete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["demo"].ConnectionString);
        SqlCommand cmd = new SqlCommand("delete tbcity where cityid=@cityid", con);

        cmd.Parameters.Add("@cityid", SqlDbType.Int).Value = Convert.ToInt32(ListBox1.SelectedValue);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        show_data();
        txtname.Text = String.Empty;

    }
    protected void cancel_Click(object sender, EventArgs e)
    {
        txtname.Text = String.Empty;
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtname.Text = ListBox1.SelectedItem.Text;


    }
}
