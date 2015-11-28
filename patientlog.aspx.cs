using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using dllpatientlog;

public partial class patientlog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click1(object sender, EventArgs e)
    {
        clsusr1 objprp = new clsusr1();
        clsprp1 objlog = new clsprp1();
        objprp.p_username = txtusr.Text;
        objprp.p_password = txtpass.Text;
        Int32 login = objlog.logincheck(objprp);
        if (login == 1)
        {
            Int32 cod = objlog.logincheckcod(objprp);
            Session["mycod"] = cod;
            Session["usrnam"] = txtusr.Text;
            Response.Redirect("patientprofile.aspx");

        }
        else if (login == -1)
            Label1.Text = "invalid username and password";
    }
}