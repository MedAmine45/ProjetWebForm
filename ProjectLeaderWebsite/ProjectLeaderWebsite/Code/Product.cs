using ProjectLeaderWebsite.Code;
using System;
using System.Collections;
using System.Data;

namespace ProjectLeaderWebsite
{
    public class Product : MainTable
    {
        private string _CatNo;
        private string _ProdID;
        private string _ProName;
        private double _Price;
        private int _AvQty;
        private DateTime? _WritingDate;
        private string _Description;
       

        public string CatNo
        {
            get => _CatNo;
            set
            {
                _CatNo = value;
            }
        }

        public  bool Find(string CatNo, string ProID)
        {
            string query = String.Format( "select * from product where CatNo= {0}  and ProdID= {1}", CatNo , ProID);
            DataTable tbl = Search(query);
            if(tbl.Rows.Count == 0)
            {
                return false;
            }else
            {
                this.CatNo = tbl.Rows[0][0].ToString();
                this.ProdID = tbl.Rows[0][1].ToString();
                this.ProdName = tbl.Rows[0][2].ToString();
                this.Price = double.Parse(tbl.Rows[0][3].ToString());
                this.AvQty = int.Parse(tbl.Rows[0][4].ToString());
                //this.WritingDate = tbl.Rows[0][5].ToString();
                this.Description = tbl.Rows[0][6].ToString();
                return true;
            }
        }

        public string ProdID
        {
            get => _ProdID;
            set
            {
                _ProdID = value;
            }
        }

        public string ProdName
        {
            get => _ProName;
            set
            {
                _ProName = value;
            }
        }

        public double Price
        {
            get => _Price;
            set
            {
                _Price = value;
            }
        }

        public int AvQty
        {
            get => _AvQty;
            set
            {
                _AvQty = value;
            }
        }

        public DateTime WritingDate
        {
            get =>  DateTime.Now;
          
        }

        public string Description
        {
            get => _Description;
            set
            {
                _Description= value;
            }
        }

        public void Find(string ProdID)
        {
            throw new System.NotImplementedException();
        }

        protected override bool LoadProperties2List(string TypeOfOperation)
        {
            SortedList SL = new SortedList();
            SL.Add("@check", TypeOfOperation);
            SL.Add("@CatNo", CatNo);
            SL.Add("@ProdID", ProdID);
            SL.Add("@ProName", ProdName);
            SL.Add("@Price", Price);
            SL.Add("@AvQty", AvQty);
            SL.Add("@WritingDate", WritingDate.ToString("MM/dd/yyyy"));
            SL.Add("@Description", Description);

            ProcedureName = "ManageProduct";
           if( db.RunProcedure(ProcedureName, SL) ==1)
                return true;
           else 
                return false;

        }

        public string GetNextProID()
        {
            string query = "select Max(ProdID)+1 from Product";
            return Search(query).Rows[0][0].ToString();
        }

        public DataTable Search(string Field, string Value)
        {
            string query = String.Format("select  * from Product where {0} like '%{1}%'", Field, Value);
            //username, name, email, phone, company ,gender , birthdate
            return Search(query); ;
        }

        public bool RemoveProduct(string ProID , string CatNo)
        {
            this.ProdID = ProID;
            this.CatNo = CatNo;
            return Delete();

        }

        public int CountProducts()
        {
           DataTable tbl = db.RunQuery("Select Count(*) From Product");
            return int.Parse(tbl.Rows[0][0].ToString());
        }
        public double MaxPriceProducts()
        {
            DataTable tbl = db.RunQuery("Select Max(Price) From Product");
            return double.Parse(tbl.Rows[0][0].ToString());
        }
        public string  MaxPriceProductName()
        {
            DataTable tbl = db.RunQuery("Select ProName From Product where Price=" + MaxPriceProducts());
            return tbl.Rows[0][0].ToString();
        }
    }
}
