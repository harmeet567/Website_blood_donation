using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using dlladminreg;
using dlladminlog;


public partial class admin_adminreg : System.Web.UI.Page
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
        

        objusr1.p_username = txtusrname.Text;
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
        Response.Redirect("adminlogin.aspx");
    }
}