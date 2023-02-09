using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectLeaderWebsite.Code
{
    public class Utility
    {
        
        public static void CreateCookie(string CookieName , string[] Keys, string[] Values , bool Expired , HttpResponse res)
        {
            HttpCookie c = new HttpCookie(CookieName);
            if(Keys != null)
            {
                for (int x = 0; x < Keys.Length; x++)
                    c.Values.Add(Keys[x], Values[x]);
                if (!Expired)
                    c.Expires = DateTime.Now.AddYears(5);                
            } else
                c.Expires = DateTime.Now.AddYears(-15);

            res.Cookies.Add(c);



        }

        public static string ReadFromCookie(string cookieName , string Key , HttpRequest req)
        {
            try
            {

                //string cookie =  req.Cookies[cookieName][Key].ToString();

                string cookie = null;
                if (req.Cookies.Get(cookieName) != null)
                {
                     cookie = req.Cookies.Get(cookieName).Values[Key];
                }
               

                if (cookie == null) return null;
                return cookie;

                //return cookie;
            }
            catch 
            {
                return null;
            }
        }

        public static void RemoveCookie(string CookieName, HttpResponse res)
        {
            CreateCookie(CookieName, null, null, false, res);

        }


    }
}