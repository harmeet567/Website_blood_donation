using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using dlldonorlog;
using dlldonorreg;

public partial class donor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        clsusr objusr = new clsusr();
        clsprp objprp = new clsprp();

        clsusr1 objusr1 = new clsusr1();
        clsprp1 objprp1 = new clsprp1();

        objusr.p_name = txtname.Text;
        objusr.p_bloodgrp = drpbldgrp.Text;
        objusr.p_gender = drpgndr.Text;
        objusr.p_dob = txtdob.Text;
        objusr.p_mobile = txtmob.Text;
        objusr.p_landline = txtland.Text;
        objusr.p_state = drpstate.Text;
        objusr.p_city = drpcity.Text;
        objusr.p_email = txtemail.Text;
        objusr.p_address = txtadd.Text;

        objusr1.p_username = txtusr.Text;
        objusr1.p_password = txtpass.Text;

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
        Response.Redirect("donorlog.aspx");
        

    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtname.Text = String.Empty;
        
        txtdob.Text = String.Empty;
        txtmob.Text = String.Empty;
        txtland.Text = String.Empty;
        
        txtemail.Text = String.Empty;
        txtadd.Text = String.Empty;

        
    }
    protected void txtusr_TextChanged(object sender, EventArgs e)
    {

    }
    //protected void check_Click(object sender, EventArgs e)
    //{
    //    clsusr objusr = new clsusr();
    //    clsprp objnam = new clsprp();
    //    objusr.p_name = username.Text;
    //    Int32 j = objnam.search(objusr);
    //    if (j != 1)
    //    {
    //        lb2.Text = "";
    //        password.Enabled = true;
    //        confirm.Enabled = true;
    //        email.Enabled = true;
    //        mob.Enabled = true; ;
    //        age.Enabled = true;
    //        Address.Enabled = true;
    //        city.Enabled = true;
    //        state.Enabled = true;
    //        country.Enabled = true;
    //    }
    //    else
    //    {
    //        lb2.Text = "Already taken";
    //    }
    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
        clsusr1 objusr = new clsusr1();
            clsprp1 objnam = new clsprp1();
            objusr.p_username = txtusr.Text;
            Int32 j= objnam.search(objusr);
            if (j!= 1)
            {
                Label1.Text = "Now enter Password";
            }
            else
            {
                Label1.Text = "already taken";
            }
    }
}