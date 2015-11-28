using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class searchblood : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter adp = new SqlDataAdapter("select Name,Blood_Group,Mobile_No,Email,City,Permanent_Address,State from tbdonorreg where Blood_Group=@bloodgrp and State=@state", ConfigurationManager.ConnectionStrings["demo"].ConnectionString);
        adp.SelectCommand.Parameters.Add("@bloodgrp", SqlDbType.VarChar).Value =Convert.ToString( DropDownList1.SelectedItem.Text);
        adp.SelectCommand.Parameters.Add("@city", SqlDbType.VarChar).Value =Convert.ToString( DropDownList2.SelectedItem.Text);
        adp.SelectCommand.Parameters.Add("@state", SqlDbType.VarChar).Value =Convert.ToString( DropDownList3.SelectedItem.Text);
        DataSet ds = new DataSet();
        adp.Fill(ds);
      
        
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    
}