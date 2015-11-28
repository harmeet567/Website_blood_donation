using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace dlldonorlog
{
    interface intdemo1
    {
        Int32 p_userid
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

    public class clsusr1 : intdemo1
    {
        private Int32 userid;
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
    abstract public class clscon1
    {
        protected SqlConnection con = new SqlConnection();
        public clscon1()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;

        }

    }
    public class clsprp1 : clscon1
    {
        public Int32 insrt_usr(clsusr1 usr)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_insrtlog", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@p_username", SqlDbType.VarChar, 50).Value = usr.p_username;
            cmd.Parameters.Add("@p_password", SqlDbType.VarChar, 50).Value = usr.p_password;
            Int32 j = cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            return j;

        }
        public Int32 logincheck(clsusr1 usr)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_match", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@p_username", SqlDbType.VarChar, 50).Value = usr.p_username;
            cmd.Parameters.Add("@p_password", SqlDbType.VarChar, 50).Value = usr.p_password;
            cmd.Parameters.Add("@p_userid", SqlDbType.Int).Direction = ParameterDirection.Output;

            SqlParameter log = new SqlParameter("@set", SqlDbType.Int);
            log.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(log);
            cmd.ExecuteNonQuery();
            Int32 a;
            a = Convert.ToInt32(cmd.Parameters["@set"].Value);
            cmd.Dispose();
            con.Close();
            return a;

        }
        public Int32 logincheckcod(clsusr1 usr)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_match", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@p_username", SqlDbType.VarChar, 50).Value = usr.p_username;
            cmd.Parameters.Add("@p_password", SqlDbType.VarChar, 50).Value = usr.p_password;
            cmd.Parameters.Add("@p_userid", SqlDbType.Int).Direction = ParameterDirection.Output;



            cmd.ExecuteNonQuery();
            Int32 cod;
            cod = Convert.ToInt32(cmd.Parameters["@p_userid"].Value);
            cmd.Dispose();
            con.Close();
            return cod;

        }
        public Int32 search(clsusr1 usr)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_search", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@p_password", SqlDbType.VarChar, 50).Value = usr.p_password;

            Int32 j = cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            return j;

        }

        public Int32 update(clsusr1 usr)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("sp_update", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@p_userid", SqlDbType.Int).Value = usr.p_userid;
            cmd.Parameters.Add("@p_password", SqlDbType.VarChar, 50).Value = usr.p_password;
            
            Int32 k = cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            return k;

        }

    }
}


