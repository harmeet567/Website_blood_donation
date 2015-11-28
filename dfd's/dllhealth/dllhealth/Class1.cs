using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace dlldonorreg
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
        String p_bloodgrp
        {
            get;
            set;
        }
        String p_gender
        {
            get;
            set;
        }
        String p_dob
        {
            get;
            set;
        }
        String p_mobile
        {
            get;
            set;
        }
        String p_landline
        {
            get;
            set;
        }
        String p_state
        {
            get;
            set;
        }
        String p_city
        {
            get;
            set;
        }
        String p_email
        {
            get;
            set;
        }
        String p_address
        {
            get;
            set;
        }
        String p_username
        {
            get;
            set;
        }
        String p_password
        {
            get;
            set;
        }
    }
    public class clsusr : intdemo
    { 
    private Int32 userid;
    private String Name;
    private String Blood_Group;
    private String Gender;
    private String Date_Of_Birth;
    private String Mobile_No;
    private String Landline_No;
    private String State;
    private String City;
    private String Email;
    private String Permanent_Address;
    private String username;
    private String password;

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
    public String p_bloodgrp
    {
        get
        {
            return Blood_Group;

        }
        set
        {
            Blood_Group = value;
        }
    }

    public String p_gender
    {
        get
        {
            return Gender;

        }
        set
        {
            Gender = value;
        }
    }

    public String p_dob
    {
        get
        {
            return Date_Of_Birth;

        }
        set
        {
            Date_Of_Birth = value;
        }
    }

    public String p_mobile
    {
        get
        {
            return Mobile_No;

        }
        set
        {
            Mobile_No = value;
        }
    }

    public String p_landline
    {
        get
        {
            return Landline_No;

        }
        set
        {
            Landline_No = value;
        }
    }

    public String p_state
    {
        get
        {
            return State;

        }
        set
        {
            State = value;
        }
    }

    public String p_city
    {
        get
        {
            return City;

        }
        set
        {
            City = value;
        }
    }

    public String p_email
    {
        get
        {
            return Email;

        }
        set
        {
            Email = value;
        }
    }

    public String p_address
    {
        get
        {
            return Permanent_Address;

        }
        set
        {
            Permanent_Address = value;
        }
    }

    public String p_username
    {
        get
        {
            return username;

        }
        set
        {
            username = value;
        }
    }

    public String p_password
    {
        get
        {
            return password;

        }
        set
        {
            password = value;
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
            SqlCommand cmd = new SqlCommand("sp_insrtreg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@p_name", SqlDbType.VarChar, 50).Value = usr.p_name;
            cmd.Parameters.Add("@p_bloodgrp", SqlDbType.VarChar,50).Value = usr.p_bloodgrp;
            cmd.Parameters.Add("@p_gender", SqlDbType.VarChar,50).Value = usr.p_gender;
            cmd.Parameters.Add("@p_dob", SqlDbType.VarChar,50).Value = usr.p_dob;
            cmd.Parameters.Add("@p_mobile", SqlDbType.VarChar, 50).Value = usr.p_mobile;
            cmd.Parameters.Add("@p_landline", SqlDbType.VarChar, 50).Value = usr.p_landline;
            cmd.Parameters.Add("@p_state", SqlDbType.VarChar, 50).Value = usr.p_state;
            cmd.Parameters.Add("@p_city", SqlDbType.VarChar, 50).Value = usr.p_city;
            cmd.Parameters.Add("@p_email", SqlDbType.VarChar, 50).Value = usr.p_email;
            cmd.Parameters.Add("@p_address", SqlDbType.VarChar, 50).Value = usr.p_address;
            Int32 i = cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            return i;



        }

    }

}

