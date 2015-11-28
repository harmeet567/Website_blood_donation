using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



    }

    protected void Button1_Click(object sender, EventArgs e)
    {SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["demo"].ConnectionString);
        SqlCommand cmd = new SqlCommand("insert into tbpic (picurl,uploadedby)values(@picurl,@uploadedby)", con);
        cmd.Parameters.Add("@picurl", SqlDbType.VarChar, 50).Value = "images/" + FileUpload1.FileName;
        cmd.Parameters.Add("@uploadedby", SqlDbType.VarChar, 50).Value = TextBox1.Text;
        con.Open();
        Int32 i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            if (FileUpload1.HasFile)
            {
                string fileExt =
                    System.IO.Path.GetExtension(FileUpload1.FileName);

                if (fileExt == ".jpg")
                {
                       string curntfilnam = FileUpload1.FileName;
                        string crntflepath;
                        crntflepath = Server.MapPath("images/");
                        crntflepath += curntfilnam;
                        FileUpload1.SaveAs(crntflepath);
                        Label1.Text = "successful";
                }

                else
                {
                    Label1.Text = "only jpg files are allowed";
                }
            }
        }
        else
        {
            Label1.Text = "sorry try again";
        }
    }
}

/*
 string imagefolder = "images";
    string savepath;
    string savefile;
    if (FileUpload1.HasFile)
    {
        string fileExt =
          System.IO.Path.GetExtension(FileUpload1.FileName);
        if (fileExt == ".jpg")
        {

            savepath = Path.Combine(Request.PhysicalApplicationPath, imagefolder);
            savefile = Path.Combine(savepath, FileUpload1.FileName);
            FileUpload1.SaveAs(savefile);
            SqlDataSource1.Insert();
            Label1.Text = "success";
        }
        else
        {
            Label1.Text = "only .jpg please";
        }
    }
        
 */

/* if (FileUpload1.HasFile)
 {
     string fileExt = 
        System.IO.Path.GetExtension(FileUpload1.FileName);

     if (fileExt == ".mp3")
     {
         try
         {
             FileUpload1.SaveAs("C:\\Uploads\\" + 
                FileUpload1.FileName);
             Label1.Text = "File name: " +
                 FileUpload1.PostedFile.FileName + "<br>" +
                 FileUpload1.PostedFile.ContentLength + " kb<br>" +
                 "Content type: " +
                 FileUpload1.PostedFile.ContentType;
         }
         catch (Exception ex)
         {
             Label1.Text = "ERROR: " + ex.Message.ToString();
         }
     }
     else
     {
         Label1.Text = "Only .mp3 files allowed!";
     }
 }
 else
 {
     Label1.Text = "You have not specified a file.";
 }
}
*/

    