using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectLeaderWebsite.Code
{
    public class Card : MainTable
    {
        private string _cartType;
        private string _cartNumber;
        private int _month;
        private int _year;
        private string _nameInCard;
        private string _username;

        public string CartType
        {
            get => _cartType;
            set
            {
                this._cartType = value;
            }
        }

        public string CartNumber
        {
            get => _cartNumber;
            set
            {
            }
        }

        public int Month
        {
            get => _month;
            set
            {
                this._month = value;
            }
        }

        public int Year
        {
            get => _year;
            set
            {
                this._year = value; 
            }
        }

        public string NameInCard
        {
            get => _nameInCard;
            set
            {
                this._nameInCard = value;
            }
        }

        public string Username
        {
            get => _username;
            set
            {
                this._username = value;
            }
        }

        protected override bool LoadProperties2List(string TypeOfOperation)
        {
            SortedList SL = new SortedList();
            SL.Add("@Check", TypeOfOperation);
            SL.Add("@CardType", CartType);
            SL.Add("@CardNumber", CartNumber);
            SL.Add("@Month", Month);
            SL.Add("@Year", Year);
            SL.Add("@NameInCard", NameInCard);
            SL.Add("@username", Username);
            

            ProcedureName = "ManageCard";
            if (db.RunProcedure(ProcedureName, SL) == 1)
                return true;
            else
                return false;

        }
    }
}