using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MP
{
    public partial class login : System.Web.UI.Page
    {
        public string msg="";
        public string sqlLogin;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {

                string uName = Request.Form["uName"];
                string pw = Request.Form["pw"];

                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";


                sqlLogin = $"SELECT * FROM {tableName} WHERE uName = '{uName}' AND pw = '{pw}'";

                DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);

                int length = table.Rows.Count;
                if (length == 0)
                {
                    msg = "סיסמא או שם משתמש לא נכונים";
                    //Response.Redirect("login.aspx");

                }
                else
                {
                    

                    Session["uName"] = table.Rows[0]["fName"];
                    Session["userFName"] = table.Rows[0]["fName"];
                    Application["counter"] = (int)Application["counter"] + 1;
                    Response.Redirect("First.aspx");



                }


            }

        }
    }
}