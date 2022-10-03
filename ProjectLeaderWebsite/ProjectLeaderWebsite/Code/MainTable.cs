using System.Collections;
using System.Data;
using System.Data.SqlClient;
using ProjectLeaderWebsite.Code;

namespace ProjectLeaderWebsite
{
    public abstract class MainTable
    {
        protected string ProcedureName;
        protected DB db = new DB();
        protected virtual bool LoadProperties2List(string TypeOfOperation )
        {
            return false;

        }
        public bool Add()
        {
            return LoadProperties2List("a");
        }

        public bool Delete()
        {
            return LoadProperties2List("d");
        }

        public bool Update()
        {
            return LoadProperties2List("u");
        }

        public DataTable Search(string Query)
        {
            try
            {
                return db.RunQuery(Query);
            }
            catch
            {
                return new DataTable();
            }

        }
    }
}