using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using dllpatientreg;
using dllpatientlog;

public partial class patientreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
       /* SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["demo"].ConnectionString);
        SqlCommand cmd = new SqlCommand("Insert into tbpatientreg(name,blood_group,age,number_of_units,mobile_no,landline_no,city,state,permanent_address,purpose) values(@txtname,@drpbloodgrp,@txtage,@txtunits,@txtmob,@txtland,@drpcity,@drpstate,@txtaddress,@txtpurpose)",con);
        cmd.Parameters.Add("@txtname", SqlDbType.VarChar, 50).Value =txtname.Text;
        cmd.Parameters.Add("@drpbloodgrp", SqlDbType.VarChar, 50).Value = drpbloodgrp.Text;
        cmd.Parameters.Add("@txtage", SqlDbType.VarChar, 50).Value =txtage.Text;
        cmd.Parameters.Add("@txtdate", SqlDbType.VarChar, 50).Value = txtdate.Text;
        cmd.Parameters.Add("@txtunits", SqlDbType.VarChar, 50).Value = txtunits.Text;
        cmd.Parameters.Add("@txtmob", SqlDbType.VarChar, 50).Value = txtmob.Text;
        cmd.Parameters.Add("@txtland", SqlDbType.VarChar, 50).Value = txtland.Text;
        cmd.Parameters.Add("@drpcity", SqlDbType.VarChar, 50).Value = drpcity.Text;
        cmd.Parameters.Add("@drpstate", SqlDbType.VarChar, 50).Value = drpstate.Text;
        cmd.Parameters.Add("@txtaddress", SqlDbType.VarChar, 50).Value = txtaddress.Text;
        cmd.Parameters.Add("@txtpurpose", SqlDbType.VarChar, 50).Value = txtpurpose.Text;
        con.Open();
        Int32 i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            comment.Text = "Successfully Registered";
        }
        else
        {
            comment.Text = "Try Again";

        }*/
        clsusr objusr = new clsusr();
        clsprp objprp = new clsprp();

        clsusr1 objusr1 = new clsusr1();
        clsprp1 objprp1 = new clsprp1();

        objusr.p_name = txtname.Text;
        objusr.p_bloodgrp = drpbloodgrp.Text;
        objusr.p_age = txtage.Text;
        objusr.p_date = txtdate.Text;
        objusr.p_units = txtunits.Text;
        objusr.p_mobile = txtmob.Text;
        objusr.p_landline = txtland.Text;
        objusr.p_state = drpstate.Text;
        objusr.p_city = drpcity.Text;
        objusr.p_address = txtaddress.Text;
        objusr.p_purpose = txtpurpose.Text;

        objusr1.p_username = txtusrname.Text;
        objusr1.p_password = txtpassword.Text;

        Int32 i = objprp.insrt_usr(objusr);
        if (i > 0)
        {
            comment.Text = "registered";

        }
        else
        {
            comment.Text = "not registered";
        }

        Int32 j = objprp1.insrt_usr(objusr1);
        if (j > 0)
        {
            comment.Text = "registered";

        }
        else
        {
            comment.Text = "not registered";
        }
        Response.Redirect("patientlog.aspx");
    }
}