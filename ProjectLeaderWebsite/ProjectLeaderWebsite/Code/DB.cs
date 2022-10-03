using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjectLeaderWebsite.Code
{
    public class DB
    {
        SqlConnection conn;
        SqlCommand cmd;
        DataTable tbl;
        private void Initialize(CommandType CT , string DBCall)
        {
            //declare
            conn = new SqlConnection();
            cmd = new SqlCommand();

            //Requirement 
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["LeaderConStr"].ToString();
            cmd.Connection = conn;
            cmd.CommandType = CT;
            cmd.CommandText = DBCall;
            //Db Work
            conn.Open();

        }

        private int RunUpdate()
        {
            try
            {
                int x = cmd.ExecuteNonQuery();
                conn.Close();
                return x;


            }
            catch (SqlException ex)
            {
                conn.Close();
                return ex.Number;
            }
        }
        public int RunProcedure(string ProcedureName , SortedList ParaVal)
        {
            Initialize(CommandType.StoredProcedure, ProcedureName);

            for (int x= 0; x<ParaVal.Count; x++)
            {
                if(ParaVal.GetByIndex(x) != null)
                   cmd.Parameters.AddWithValue(ParaVal.GetKey(x).ToString(), ParaVal.GetByIndex(x).ToString());
            }
            return RunUpdate();
        }
        
        public int RunUpdate(string InsDelUpd)
        {
            Initialize(CommandType.Text, InsDelUpd);
            return RunUpdate();
        }
    
        public DataTable RunQuery(string Select)
        {
            Initialize(CommandType.Text , Select);
            tbl = new DataTable();
            tbl.Load(cmd.ExecuteReader());
            conn.Close();
            return tbl;

        }
    }
}