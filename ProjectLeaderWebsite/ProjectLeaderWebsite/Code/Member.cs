using ProjectLeaderWebsite.Code;
using System;
using System.Collections;
using System.Data;
using System.Web;


namespace ProjectLeaderWebsite
{
    public class Member : MainTable
    {
        #region Fields
        private string _Username;
        private string _password;
        private string _name;
        private string _email;
        private string _phone;
        private string _company;
        private string _gender;
        private DateTime? _birthDate;
        private string _question;
        private string _answer;
        private Order _Ord;
        #endregion

        #region Properties 
        public string Answer
        {
            get => _answer;
            set
            {
                _answer = value;
            }
        }

        public DateTime? Birthdate
        {
            get => _birthDate ;
            set
            {
                _birthDate = value;
            }
        }

        public string Company
        {
            get => _company;
            set
            {
                _company = value;
            }
        }

        public string Email
        {
            get => _email;
            set
            {
                _email = value;
            }
        }

        public string Gender
        {
            get => _gender;
            set
            {
                _gender = value;
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

        public string Password
        {
            get => _password;
            set
            {
                _password = value;
            }
        }

        public string Name
        {
            get => _name;
            set
            {
                _name = value;
            }
        }

        public string Question
        {
            get => _question;
            set
            {
                _question = value;
            }
        }

        public string Phone
        {
            get => _phone;
            set
            {
                _phone = value;
            }
        }


        #endregion

        public Order Order
        {
            get => _Ord;
            set
            {
                _Ord = value;
            }
        }
        protected override bool LoadProperties2List(string TypeOfOperation)
        {
            SortedList SL = new SortedList();
            SL.Add("@check", TypeOfOperation);
            SL.Add("@username", Username);
            SL.Add("@password", Password);
            SL.Add("@name", Name);
            SL.Add("@email", Email);
            SL.Add("@phone", Phone);
            SL.Add("@company", Company);
            SL.Add("@gender", Gender);
            SL.Add("@birthdate", Birthdate);
            SL.Add("@question", Question);
            SL.Add("@answer", Answer);
            ProcedureName = "ManageMember";
            if (db.RunProcedure(ProcedureName, SL) == 1)
                return true;
            else
                return false;
        }

        public string Register()
        {
            if (Add())
                return "User Added Succssffully";
            else
                return "User not Added, Please Chnage username and try again ";
        }

        public string Register(string username, string password, string name, string email, string phone, string company, string gender, DateTime birthdate, string question, string answer)
        {
            this.Username = username;
            this.Password = password;
            this.Name = name;
            this.Email = email;
            this.Phone = phone;
            this.Company = company;
            this.Gender = gender;
            this.Birthdate = birthdate;
            this.Question = question;
            this.Answer = answer;
           return Register();
        }

        public string EditProfile()
        {
            throw new System.NotImplementedException();
        }

        public string EditProfile(string username, string password, string name, string email, string phone, string company, string gender, DateTime birthdate, string question, string answer)
        {
            throw new System.NotImplementedException();
        }

        public bool Login()
        {
           return Login(Username, Password);
        }

        public bool Login(string username, string password )
        {
           string query = String.Format("select * from Member Where Username = '{0}'and Password='{1}'", username,password);
           if(  db.RunQuery(query).Rows.Count==1)
                return true;
           else
                return false;

        }

        public void ChangePassword()
        {
            throw new System.NotImplementedException();
        }

        public bool Unsubscrible(string Username)
        {
            this.Username = Username;
            //DataTable dt = Search("username", this.Username);
           
            return Delete();
        }

        public bool CheckAvalability()
        {
            throw new System.NotImplementedException();
        }

        public DataTable Search(string Field, string Value)
        {
            string query = String.Format("select  * from member where {0} like '%{1}%'", Field, Value); 
            //username, name, email, phone, company ,gender , birthdate
            return Search(query); ;
        }

        public double GenderPer(string MaleOrFemale)
        {
            string queryMF = String.Format(" select count(*) from Member Where gender = '{0}'   ",MaleOrFemale);
            string query = "select count(*) from Member";
            double MF = int.Parse(db.RunQuery(queryMF).Rows[0][0].ToString());
            double All = int.Parse(db.RunQuery(query).Rows[0][0].ToString());
            double per = MF/All;
            return per  ;
        }

       
    }
}