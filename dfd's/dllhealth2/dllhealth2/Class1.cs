using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace dlladminreg
{
    interface intdemo
    {
     Int32 p_userid
        {
            get;
            set;
        }
        String p_name
        {
            get;
            set;
        }
        
       
    }
    public class clsusr : intdemo
    { 
    private Int32 userid;
    private String Name;
    

    public Int32 p_userid
    {
        get
        {
            return userid;
        }
        set
        {
            userid = value;
        }
    }
    public String p_name
    {
        get 
        {
            return Name;

        }
        set 
        {
            Name = value;
        }
    }
    

    
}
    abstract public class clscon
    {
        protected SqlConnection con = new SqlConnection();
        public clscon()
        {

            con.ConnectionString = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;

        }
    }
    public class clsprp : clscon
    {
        public Int32 insrt_usr(clsusr usr)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_adminreg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@p_name", SqlDbType.VarChar, 50).Value = usr.p_name;
            
            Int32 i = cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            return i;



        }

    }
    
    }



