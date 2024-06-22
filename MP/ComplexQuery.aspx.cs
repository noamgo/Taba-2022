using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MP
{
    public partial class ComplexQuery : System.Web.UI.Page
    {
            public string msg = "";
            protected void Page_Load(object sender, EventArgs e)
            {
                if (Session["admin"] == "no")
                {
                    msg = "<div align = center><h3>";
                    msg += "אינך מנהל, ";
                    msg += "אין לך הרשאות להיכנס לדף זה";
                    msg += "</h3>";
                    msg += "[<a href = 'First.aspx'>חזור</a>]";
                    msg += "</div>";
                }
                else
                {
                    msg  = "<h3><a href = 'ComplexQuery1.aspx'>[אנשים שאוהבים סרטים או לשחק במחשב]</a></h3>";
                    msg += "<h3><a href = 'ComplexQuery2.aspx'>[אנשים זכרים שגרים במודיעין]</a></h3>";
                    msg += "<h3><a href = 'ComplexQuery3.aspx'>[אנשים שגרים במודיעין או בירושלים]</a></h3>";
                    msg += "<h3><a href = 'ComplexQuery4.aspx'>[אנשים שנולדו בין 2000 ל2006 והקידומת שלהם היא 055]</a></h3>";
            }
        }
    }
}