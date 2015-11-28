using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class viewprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblname.Text = Session["usrnam"].ToString();

    }
    protected void btnedit_Click(object sender, EventArgs e)
    {

    }
    protected void btnview_Click(object sender, EventArgs e)
    {

    }
    protected void lnksign_Click(object sender, EventArgs e)
    {
        if (Session["mycod"] != null)
        {
            Session.Clear();
            Response.Write("<script language=javascript>var wnd=window.open('','newWin','height=1,width=1,left=900,top=700,status=no,toolbar=no,menubar=no,scrollbars=no,maximize=false,resizable=1');</script>");
            Response.Write("<script language=javascript>wnd.close();</script>");
            Response.Write("<script language=javascript>window.open('donorlog.aspx','_parent',replace=true);</script>");
        }
         
      
    }
}
        /*Session.Abandon();
        Session.Remove("mycod");
        Response.Redirect("donorlog.aspx");
    
       */
   

    
