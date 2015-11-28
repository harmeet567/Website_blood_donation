using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace dllpatientreg
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
        String p_age
        {
            get;
            set;
        }
        String p_date
        {
            get;
            set;
        }
        String p_units
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
        
        String p_address
        {
            get;
            set;
        }
       
        String p_purpose
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
        private String age;
        private String date;
        private String units;
        private String Mobile_No;
        private String Landline_No;
        private String State;
        private String City;
        private String Permanent_Address;
       
        private String purpose;
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

        public String p_age
        {
            get
            {
                return age;

            }
            set
            {
                age = value;
            }
        }

        public String p_date
        {
            get
            {
                return date;

            }
            set
            {
                date= value;
            }
        }

        public String p_units
        {
            get
            {
                return units;

            }
            set
            {
                units = value;
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

        
        public String p_purpose
        {
            get
            {
                return purpose;

            }
            set
            {
                purpose = value;
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
            SqlCommand cmd = new SqlCommand("sp_patientreg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@p_name", SqlDbType.VarChar, 50).Value = usr.p_name;
            cmd.Parameters.Add("@p_bloodgrp", SqlDbType.VarChar, 50).Value = usr.p_bloodgrp;
            cmd.Parameters.Add("@p_age", SqlDbType.VarChar, 50).Value = usr.p_age;
            cmd.Parameters.Add("@p_date", SqlDbType.VarChar, 50).Value = usr.p_date;
            cmd.Parameters.Add("@p_units", SqlDbType.VarChar, 50).Value = usr.p_units;
            cmd.Parameters.Add("@p_mobile", SqlDbType.VarChar, 50).Value = usr.p_mobile;
            cmd.Parameters.Add("@p_landline", SqlDbType.VarChar, 50).Value = usr.p_landline;
            cmd.Parameters.Add("@p_state", SqlDbType.VarChar, 50).Value = usr.p_state;
            cmd.Parameters.Add("@p_city", SqlDbType.VarChar, 50).Value = usr.p_city;
            cmd.Parameters.Add("@p_address", SqlDbType.VarChar, 50).Value = usr.p_address;
            cmd.Parameters.Add("@p_purpose", SqlDbType.VarChar, 50).Value = usr.p_purpose;
            Int32 i = cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            return i;



        }

    }
}
