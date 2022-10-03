using ProjectLeaderWebsite.Code;
using System;
using System.Collections;

namespace ProjectLeaderWebsite
{
    public class Order : MainTable
    {
        private int _OrderNo;
        private DateTime _OrderDate;
        private string _ShipName;
        private string _ShipCity;
        private string _ShipAddress;
        private string  _ShipArea;
        private string _Username;
        private OrderDetails _OrdDet;

        public int OrderNo
        {
            get => _OrderNo;
            set
            {
                _OrderNo = value;
            }
        }

        public DateTime OrderDate
        {
            get => _OrderDate;
            set
            {
                _OrderDate = value; 
            }
        }

        public string ShipName
        {
            get => _ShipName;
            set
            {
                _ShipName = value;
            }
        }

        public string ShipCity
        {
            get => _ShipCity;
            set
            {
                _ShipCity = value;
            }
        }

        public string ShipAddress
        {
            get => _ShipAddress;
            set
            {
                _ShipAddress = value;

            }
        }

        public string ShipArea
        {
            get => _ShipArea;
            set
            {
                _ShipArea = value;
            }
        }

        public string Username
        {
            get => _Username;
            set
            {
                _Username = value;
            }
        }

        public OrderDetails OrderDetails
        {
            get => _OrdDet;
            set
            {
                _OrdDet = value;
            }
        }

        protected override bool LoadProperties2List(string TypeOfOperation)
        {
            SortedList SL = new SortedList();
            SL.Add("@check", TypeOfOperation);
            SL.Add("@OrderNo",OrderNo );
            SL.Add("@OrderDate", OrderDate);
            SL.Add("@ShipName", ShipName);
            SL.Add("@ShipCity", ShipCity);
            SL.Add("@ShipArea", ShipArea);
            SL.Add("@ShipAddress", ShipAddress);
            SL.Add("@Member", Username);
        
            ProcedureName = "ManageOrder";
            if (db.RunProcedure(ProcedureName, SL) == 1)
                return true;
            else
                return false;

        }
    }
}