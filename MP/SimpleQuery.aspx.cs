using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MP
{
    public partial class SimpleQuery : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sql = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
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
                if (Request.Form["submit"] != null)
                {
                    string field = Request.Form["field"];
                    string value = Request.Form["value"];

                    string fileName = "usersDB.mdf";
                    string tableName = "usersTbl";

                    if (field == "gender" || field == "prefix")
                    {
                        sql = "SELECT * FROM " + tableName + " WHERE (" + field + " = '" + value + "');";
                    }
                    else
                    {
                        if (field == "YearBorn")
                        {
                            sql = "SELECT * FROM " + tableName + " WHERE (" + field + " = " + value + ");";
                        }
                        else
                        {
                            if (field == "hobby")
                            {
                                var val = int.Parse(value);
                                switch (val)
                                {
                                    case 1: field = "hob1"; break;
                                    case 2: field = "hob2"; break;
                                    case 3: field = "hob3"; break;
                                    case 4: field = "hob4"; break;
                                    case 5: field = "hob5"; break;
                                }
                                sql = "SELECT * FROM " + tableName + " WHERE (" + field + " = 'T');";
                            }
                            else
                            {
                                if (field == "email")
                                {
                                    sql = "SELECT * FROM " + tableName + " WHERE (" + field + " like '%" + value + "%');";
                                }
                                else
                                {
                                    sql = "SELECT * FROM " + tableName + " WHERE (" + field + " like N'%" + value + "%');";
                                }
                            }
                        }
                    }

                    DataTable table = Helper.ExecuteDataTable(fileName, sql);

                    int lenght = table.Rows.Count;
                    if (lenght == 0)
                        msg = "לא נמצאו רשומות תואמות לחיפוש";
                    else
                    {
                        st += "<tr>";
                        st += "<th class = 'tblTH' style = 'width: 100px;'>שם משתמש</th>";
                        st += "<th class = 'tblTH' style = 'width: 80px;'>שם משפחה</th>";
                        st += "<th class = 'tblTH' style = 'width: 60px;'>שם פרטי</th>";
                        st += "<th class = 'tblTH' style = 'width: 140px;'>דואל</th>";
                        st += "<th class = 'tblTH' style = 'width: 60px;'>מגדר</th>";
                        st += "<th class = 'tblTH' style = 'width: 100px;'>ישוב מגורים</th>";
                        st += "<th class = 'tblTH'>שנת לידה</th>";
                        st += "<th class = 'tblTH' style = 'width: 100px;'>טלפון</th>";
                        st += "<th class = 'tblTH'>סרטים</th>";
                        st += "<th class = 'tblTH'>לשחק במחשב</th>";
                        st += "<th class = 'tblTH'>קומיקסים</th>";
                        st += "<th class = 'tblTH'>סדרות</th>";
                        st += "<th class = 'tblTH'>ספרים</th>";
                        //st += "<th class = 'tblTH' style = 'width: 100px;'>סיסמה</th>";
                        st += "</tr>";

                        for (int i = 0; i < lenght; i++)
                        {
                            st += "<tr>";
                            st += "<td class = 'tblTD1'>" + table.Rows[i]["uName"] + "</td>";
                            st += "<td class = 'tblTD2'>" + table.Rows[i]["fName"] + "</td>";
                            st += "<td class = 'tblTD2'>" + table.Rows[i]["lName"] + "</td>";
                            st += "<td class = 'tblTD3' style = 'width: 60px;'>";
                            st += table.Rows[i]["email"] + "</td>";
                            st += "<td class = 'tblTD1'>" + table.Rows[i]["gender"] + "</td>";
                            st += "<td class = 'tblTD1'>" + table.Rows[i]["city"] + "</td>";
                            st += "<td class = 'tblTD1'>" + table.Rows[i]["YearBorn"] + "</td>";
                            st += "<td class = 'tblTD1'>" + table.Rows[i]["prefix"] + "-";
                            st += table.Rows[i]["phone"] + "</td>";
                            st += "<td class = 'tblTD1'>" + table.Rows[i]["hob1"] + "</td>";
                            st += "<td class = 'tblTD1'>" + table.Rows[i]["hob2"] + "</td>";
                            st += "<td class = 'tblTD1'>" + table.Rows[i]["hob3"] + "</td>";
                            st += "<td class = 'tblTD1'>" + table.Rows[i]["hob4"] + "</td>";
                            st += "<td class = 'tblTD1'>" + table.Rows[i]["hob5"] + "</td>";
                            //st += "<td class = 'tblTD1'>" + table.Rows[i]["pw"] + "</td>";
                            st += "</tr>";
                        }
                        msg = lenght + " אנשים עונים לחיפוש";
                    }
                }
            }
        }
    }
}