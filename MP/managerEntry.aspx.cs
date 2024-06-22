using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MP
{
    public partial class managerEntry : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlAdmin = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string name = Request.Form["mName"];
                string pw = Request.Form["pw"];
                string fileName = "usersDB.mdf";

                sqlAdmin = "SELECT * FROM managerTbl WHERE (mName = '" + name + "' AND pw = '" + pw + "')";

                DataTable table = Helper.ExecuteDataTable(fileName, sqlAdmin);

                int lenght = table.Rows.Count;
                if (lenght == 0)
                {
                    msg = "<div style='text-align: center;'>";
                    msg += "<h3>אינך מנהל, אנא התחבר בהתחברות משתמשים</h3>";
                    msg += "[<a href='login.aspx'>המשך</a>]";
                    msg += "</div>";
                }
                else
                {
                    Application["counter"] = (int)Application["counter"] + 1;
                    Session["uName"] = "מנהל";
                    Session["admin"] = "yes";
                    Response.Redirect("Marvel.aspx");

                }
            }
        }
    }
}