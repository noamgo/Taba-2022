using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MP
{
    public partial class sign_up : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlMsg = "";
        public string yrBorn = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                string uName = Request.Form["uName"];
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string mail = Request.Form["email"];
                string gender = Request.Form["gender"];
                string city = Request.Form["city"];

                string yearBorn = Request.Form["yearBorn"];
                int years = int.Parse(yearBorn);

                string hobby = Request.Form["hobby"] + "";
                string prefix = Request.Form["prefix"];
                string phoneNum = Request.Form["phoneNum"];
                string password = Request.Form["nPw"];

                char hob1 = 'F';
                char hob2 = 'F';
                char hob3 = 'F';
                char hob4 = 'F';
                char hob5 = 'F';

                if (hobby.Contains('1')) hob1 = 'T';
                if (hobby.Contains('2')) hob2 = 'T';
                if (hobby.Contains('3')) hob3 = 'T';
                if (hobby.Contains('4')) hob4 = 'T';
                if (hobby.Contains('5')) hob5 = 'T';

                //בדיקה אם המשתמש קיים
                string sqlSelect = $"SELECT * FROM {tableName} WHERE uName = '{uName}'";

                if (Helper.IsExist(fileName, sqlSelect))
                {
                    msg = "user name has been taken";
                    sqlMsg = sqlSelect;
                }
                else
                {
                    string sqlInsert = $"insert into {tableName} ";
                    sqlInsert += $"values ('{uName}', N'{fName}', N'{lName}', ";
                    sqlInsert += $"'{mail}', {yearBorn}, '{gender}', '{prefix}', '{phoneNum}', N'{city}', ";
                    sqlInsert += $"'{hob1}', '{hob2}', '{hob3}', '{hob4}', '{hob5}','{password}')";

                    sqlMsg = sqlInsert;
                    Helper.DoQuery(fileName, sqlInsert);
                    msg = "Succes";
                }
            }
        }
    }
}