using ProjectLeaderWebsite.Code;
using System;
using System.Collections;
using System.Data;

namespace ProjectLeaderWebsite
{
    public class Category : MainTable 
    {
        private string _CatNo;
        private string _CatName;
        private string _Description;
        private Product _Product;
        public string CatNo
        {
            get => _CatNo;
            set
            {
                _CatNo = value;
            }
        }

        public string CatName
        {
            get => _CatName;
            set
            {
                _CatName = value;
            }
        }

        public string Description
        {
            get => _Description;
            set
            {
                _Description = value;
            }
        }

        public Product Product
        {
            get => new Product();
            set
            {
                _Product = value;
            }
        }

        protected override bool LoadProperties2List(string TypeOfOperation)
        {
            SortedList SL = new SortedList();
            SL.Add("@check", TypeOfOperation);
            SL.Add("@CatNo", CatNo);
            SL.Add("@CatName", CatName);
            SL.Add("@Description", Description);
            ProcedureName = "ManageCategory";
            if (db.RunProcedure(ProcedureName, SL) == 1)
                return true;
            else
                return false;

        }

        public  string GetTextCatNo()
        {
            string query = "select Max(CatNo)+1 from Category";
            return Search(query).Rows[0][0].ToString();
        }

        public DataTable Search(string Field, string Value)
        {
            string query = String.Format("select  * from category where {0} like '%{1}%'", Field, Value);
            //username, name, email, phone, company ,gender , birthdate
            return Search(query); ;
        }

        public bool RemoveCategory(string CatNo)
        {
            this.CatNo = CatNo;
            return Delete();

        }
    }
}