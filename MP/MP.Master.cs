using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MP
{
    public partial class MP : System.Web.UI.MasterPage
    {
        public string myTime;
        public string loginMsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            myTime = DateTime.Now.ToString();

            loginMsg = "<h3> שלום ";
            loginMsg += Session["uName"];
            loginMsg += "<h3>";

            if (Session["uName"] == "אורח")
            {
                loginMsg += "[<a href = 'login.aspx'>התחבר</a>]<br />";
                loginMsg += "[<a href = 'sign up.aspx'>הרשם</a>]<br />";
                loginMsg += "[<a href = 'managerEntry.aspx'>כניסת מנהל</a>]<br />";
            }
            else
            if (Session["admin"] == "yes")
            {
                loginMsg += "[<a href = 'managerPage.aspx'>דף ניהול</a>]<br />";
                loginMsg += "[<a href = 'logout.aspx'>התנתק</a>]<br />";
            }
            else
            {
                loginMsg += "[<a href = 'logout.aspx'>התנתק</a>]<br />";
            }
        }
    }
}