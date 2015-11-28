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

public partial class changepass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*txtpass.Enabled = true;
        txtnewpass.Enabled = false;
        txtconfirm.Enabled = false;
         */
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        clsusr1 objusr = new clsusr1();
        clsprp1 objnam = new clsprp1();
        objusr.p_password = txtpass.Text;
        Int32 j = objnam.search(objusr);
        if (j != 1)
        {
            
            objusr.p_userid = Convert.ToInt32(Session["mycod"].ToString());
            objusr.p_password = txtnewpass.Text;
            Int32 k = objnam.update(objusr);
            if (k == 1)
            {
                Label1.Text = "password change successfully";
            }
            //txtnewpass.Enabled = true;
            //txtconfirm.Enabled = true;
        }
        else
        {
            Label1.Text = "sorry password doesn't change";
        }
     


    }
}