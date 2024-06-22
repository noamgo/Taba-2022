using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MP
{
    public partial class managerPage : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == "no")
            {
                msg = "<div align = center><h3>";
                msg += "אינך מנהל, ";
                msg += "אין לך הרשאות להיכנס לדף ניהול";
                msg += "</h3>";
                msg += "[<a href = 'First.aspx'>חזור</a>]";
                msg += "</div>";
            }
            else
            {
                msg = "<h3><a href = 'ShowTable1.aspx'>[הצגת טבלה]</a></h3>";
                msg += "<h3><a href = 'DeleteUser.aspx'>[מחיקת משתמשים]</a></h3>";
                msg += "<h3><a href = 'SimpleQuery.aspx'>[שאילתה פשוטה]</a></h3>";
                msg += "<h3><a href = 'ComplexQuery.aspx'>[שאילתה מורכבת]</a></h3>";
            }
            }
    }
}