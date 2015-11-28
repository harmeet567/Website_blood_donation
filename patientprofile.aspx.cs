using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class patientprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["usrnam"].ToString();
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        if (Session["mycod"] != null)
        {
            Session.Clear();
            Response.Write("<script language=javascript>var wnd=window.open('','newWin','height=1,width=1,left=900,top=700,status=no,toolbar=no,menubar=no,scrollbars=no,maximize=false,resizable=1');</script>");
            Response.Write("<script language=javascript>wnd.close();</script>");
            Response.Write("<script language=javascript>window.open('patientlog.aspx','_parent',replace=true);</script>");
        }
    }
}