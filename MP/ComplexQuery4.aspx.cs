using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MP
{
    public partial class ComplexQuery4 : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlSelect = "";
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
                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";
                sqlSelect = "SELECT * FROM " + tableName + " WHERE YearBorn between 2000 and 2006 AND prefix='055'";

                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

                int length = table.Rows.Count;
                if (length == 0)
                    msg = "אין נרשמים";
                else
                {
                    st += "<tr>";

                    st += "<th>שם משתמש</th>";
                    st += "<th>שם פרטי</th>";
                    st += "<th>שפ משפחה</th>";
                    st += "<th>אימייל</th>";
                    st += "<th>שנת לידה</th>";
                    st += "<th>מין</th>";
                    st += "<th>טלפון</th>";
                    st += "<th>עיר</th>";
                    st += "<th>סרטים</th>";
                    st += "<th>לשחק במחשב</th>";
                    st += "<th>קומיקסים</th>";
                    st += "<th>סדרות</th>";
                    st += "<th>ספרים</th>";
                    st += "<th>סיסמא</th>";
                    st += "</tr>";

                    for (int i = 0; i < length; i++)
                    {
                        st += "<tr>";

                        st += $"<td class='alignCenter'> {table.Rows[i]["uName"]} </td>";
                        st += $"<td class='alignRight'> {table.Rows[i]["fName"]} </td>";
                        st += $"<td class='alignRight'> {table.Rows[i]["lName"]} </td>";
                        st += $"<td class='alignLeft'> {table.Rows[i]["email"]} </td>";
                        st += $"<td class='alignCenter'> {table.Rows[i]["YearBorn"]} </td>";
                        st += $"<td class='alignCenter'> {table.Rows[i]["gender"]} </td>";
                        st += $"<td class='alignCenter' style='width: 100px;'> {table.Rows[i]["prefix"]}-{ table.Rows[i]["phone"]} </ td >";
                        st += $"<td class='alignRight'> {table.Rows[i]["city"]} </td>";
                        st += $"<td class='alignCenter'> {table.Rows[i]["hob1"]} </td>";
                        st += $"<td class='alignCenter'> {table.Rows[i]["hob2"]}  </td>";
                        st += $"<td class='alignCenter'> {table.Rows[i]["hob3"]} </td>";
                        st += $"<td class='alignCenter'> {table.Rows[i]["hob4"]} </td>";
                        st += $"<td class='alignCenter'> {table.Rows[i]["hob5"]} </td>";
                        st += $"<td class='alignCenter'> {table.Rows[i]["pw"]} </td>";

                        st += "</tr>";
                    }

                    msg = "מתאימים להגדרה: " + length + " אנשים";
                }
            }
        }
    }
}