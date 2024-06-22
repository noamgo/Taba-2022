using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MP
{
    public partial class DeleteRecord : System.Web.UI.Page
    {
        public string msg= "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "usersDB.mdf";
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
                string uName = Request.QueryString["uName"].ToString();
                string sqlDelete = "DELETE FROM usersTbl WHERE uName ='" + uName + "'";
                Helper.DoQuery(fileName, sqlDelete);
            }

            Response.Redirect("DeleteUser.aspx");
            }
    }
}