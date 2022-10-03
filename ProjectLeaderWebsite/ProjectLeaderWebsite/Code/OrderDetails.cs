using ProjectLeaderWebsite.Code;
using System.Collections;

namespace ProjectLeaderWebsite
{
    public class OrderDetails : MainTable
    {
        private string _CatNo;
        private string _ProdID;
        private int _OrderNo;
        private int _Quantity;
        private double _SellPrice;
        private double _Discount;
        private Product _Pro;
        public string CatNo
        {
            get => _CatNo;
            set
            {
                _CatNo = value;
            }
        }

        public string ProdID
        {
            get => _ProdID;
            set
            {
                _ProdID=value;
            }
        }

        public int OrderNo
        {
            get => _OrderNo;
            set
            {
                _OrderNo = value;
            }
        }

        public int Quantity
        {
            get => _Quantity;
            set
            {
                _Quantity = value;
            }
        }

        public double SellPrice
        {
            get => _SellPrice;
            set
            {
                _SellPrice = value;
            }
        }

        public double Discount
        {
            get => _Discount;
            set
            {
                _Discount = value;
            }
        }

        public Product Product
        {
            get => _Pro;
            set
            {
                _Pro = value;
            }
        }
        protected override bool LoadProperties2List(string TypeOfOperation)
        {
            SortedList SL = new SortedList();
            SL.Add("@check", TypeOfOperation);
            SL.Add("@CatNo", CatNo);
            SL.Add("@ProdID", ProdID);
            SL.Add("@OrderNo", OrderNo);
            SL.Add("@SellPrice", SellPrice);
            SL.Add("@Quantity", Quantity);
            SL.Add("@Discount", Discount);

            ProcedureName = "ManageOrderDetails";
            if (db.RunProcedure(ProcedureName, SL) == 1)
                return true;
            else
                return false;

        }
    }
}