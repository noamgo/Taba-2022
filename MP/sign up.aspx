<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="sign up.aspx.cs" Inherits="MP.sign_up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
        body{
            text-align:center
        }
        table{
            margin: 0px auto;
            text-align:right
        }
        input{
            text-align:center
        }
    </style>

    <script>
        function chkForm() {
            //---בדיקת תקינות שם משתמש---
            var uName = document.getElementById("uName").value;
            //alert("uName= " + uName);
            if (uName.length < 2) {
                document.getElementById("mUName").value = "שם משתמש קצר מדי או לא קיים";
                document.getElementById("mUName").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mUName").style.display = "none";


            //---בדיקת תקינות שם פרטי---
            var fName = document.getElementById("fName").value;
            //alert("fName= " + fName);
            if (fName.length < 2) {
                document.getElementById("mFName").value = "שם פרטי קצר מדי או לא קיים";
                document.getElementById("mFName").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mFName").style.display = "none";

            //---בדיקת תקינות שם משפחה---
            var lName = document.getElementById("lName").value;
            //alert("lName= " + lName);
            if (lName.length < 2) {
                document.getElementById("mLName").value = "שם משפחה קצר מדי או לא קיים";
                document.getElementById("mLName").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mLName").style.display = "none";

            //---בדיקת תקינות אימייל---
            var email = document.getElementById("email").value;
            //alert("email= " + email);
            if (email.length < 2) {
                document.getElementById("mEmail").value = "אימייל קצר מדי או לא קיים";
                document.getElementById("mEmail").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mEmail").style.display = "none";

            //בדיקת תקינות עיר מגורים
            var city = document.getElementById("city").value;

            //האם נבחרה האפשרות הראשונה
            if (city == "other") {
                msg = "יש לבחור עיר מגורים";

                document.getElementById("mCity").value = msg;
                document.getElementById("mCity").style.display = "inline";
                msg = "";
                return false;
            }
            else
                document.getElementById("mCity").style.display = "none";

            //בדיקת תקינות שנת לידה
            var yearBorn = document.getElementById("yearBorn").value;
            var msg = "";
            if (isNaN(yearBorn))
                msg = "שנת לידה חייבת להכיל ספרות בלבד";
            else {
                if (yearBorn < 1900 || yearBorn > 2022)
                    msg = "שנת לידה חייבת להיות מספר 4 ספרתי גדול מ-1900 וקטן משנה נוחכית";
            }
            if (msg != "") {
                document.getElementById("mYearBorn").value = msg;
                document.getElementById("mYearBorn").style.display = "inline";
                msg = "";
                return false;
            }
            else
                document.getElementById("mYearBorn").style.display = "none";

            //בדיקת תקינות קידומת
            var prefix = document.getElementById("prefix").value;
            if (prefix == "others") {
                document.getElementById("mPhone").value = "לא נבחרה קידומת";
                document.getElementById("mPhone").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mPhone").style.display = "none";

            //בדיקת תקינות מספר טלפון
            var phone = document.getElementById("phoneNum").value;

            if (phone.length != 7) {
                document.getElementById("mPhone").value = "מספר טלפון חייב להכיל בדיוק 7 ספרות";
                document.getElementById("mPhone").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mPhone").style.display = "none";

            if (isNaN(phone)) {
                document.getElementById("mPhone").value = "מספר טלפון חייב להכיל ספרות בלבד";
                document.getElementById("mPhone").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mPhone").style.display = "none";

            //בדיקת תקינות סיסמא
            var password = document.getElementById("nPw").value

            if (password.length < 6 || password.length > 10) {
                document.getElementById("mPw").value = "סיסמה חייבת להיות באורך של 10-6 תווים";
                document.getElementById("mPw").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mPw").style.display = "none";

            //בדיקת תקינות אימות סיסמא
            var chkPassword = document.getElementById("chkPw").value

            if (chkPassword != password) {
                document.getElementById("mChkPw").value = "אימות סיסמא חייב להיות זהה לסיסמא";
                document.getElementById("mChkPw").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mPw").style.display = "none";

        }


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align:center">טופס רישום</h1>
    <form method="post" runat="server" onsubmit="return chkForm()">
        <table>
            <tr>
                <td>שם משתמש</td>
                <td>
                    <input type="text" id="uName" name="uName" />
                    <input type ="text" id ="mUName" size ="30"
                        style="display:none; background-color: silver; font-weight:bold;"
                                    disabled ="disabled" />
                </td>
            </tr>

            <tr>
                <td>שם פרטי</td>
                <td><input type="text" id="fName" name="fName" />
                    <input type ="text" id ="mFName" size ="30"
                        style="display:none; background-color: silver; font-weight:bold;"
                                    disabled ="disabled" />
                </td>
            </tr>

            <tr>
                <td>שם משפחה</td>
                <td><input type="text" id="lName" name="lName" />
                    <input type ="text" id ="mLName" size ="30"
                        style="display:none; background-color: silver; font-weight:bold;"
                                    disabled ="disabled" />
                </td>
            </tr>

            <tr>
                <td>כתובת דוא"ל</td>
                <td><input type="email" id="email" name="email" />
                    <input type ="text" id ="mEmail" size ="30"
                        style="display:none; background-color: silver; font-weight:bold;"
                                    disabled ="disabled" />
                </td>
            </tr>

            <tr>
                <td>מגדר:</td>
                <td><input type="radio" name="gender" value="male" checked />זכר
                    <input type="radio" name="gender" value="female" />נקבה
                </td>
                <td></td>
            </tr>

            <tr>
                <td>יישוב מגורים:</td>
                <td>
                    <select name="city" id="city">
                        <option value="other" selected>בחר יישוב מגורים</option>
                        <option value="חיפה" >חיפה</option>
                        <option value="תל-אביב" >תל-אביב</option>
                        <option value="ירושלים" >ירושלים</option>
                        <option value="מודיעין" >מודיעין</option>
                        <option value="באר-שבע" >באר-שבע</option>
                        <option value="מטולה" >מטולה</option>
                        <option value="צפון" >צפון</option>
                        <option value="מרכז" >מרכז</option>
                        <option value="דרום" >דרום</option>
                    </select>
                <input type="text" name="mCity" id="mCity" style="display:none;
                        background-color:silver; color:black; font-weight:bold;" disabled="disabled" />
                </td>
            </tr>

            <tr>
                <td>שנת לידה</td>
                <td>
                    <input type="text" id="yearBorn" name="yearBorn" />
                
                    <input type="text" id="mYearBorn" size ="50" 
                        style="display:none; background-color:silver; font-weight:bold;"
                                            disabled="disabled" />
                </td>
            </tr>

            <tr>
                <td>תחביבים</td>
                <td>
                    <table style="width:550px">
                        <tr>
                            <td><input type="checkbox" name="hobby" value="1" checked="checked" />סרטים</td>
                            <td><input type="checkbox" name="hobby" value="2" />לשחק במחשב</td>
                            <td><input type="checkbox" name="hobby" value="3" />קומיקסים</td>
                            <td><input type="checkbox" name="hobby" value="4" />סדרות</td>
                            <td><input type="checkbox" name="hobby" value="5" />ספרים</td>
                        </tr>
                    </table>
                </td>
            </tr>

            <tr>
                <td>מס' טלפון:</td>
                <td dir ="ltr">
                 <input type="text" id="mPhone" size="30"
                           style="display:none; background-color:silver; font-weight:bold;"
                           disabled="disabled" />

                
                    <select name ="prefix" id="prefix">
                        <option value="others">בחר</option>
                        <option value="050">050</option>
                        <option value="052">052</option>
                        <option value="053">053</option>
                        <option value="054">054</option>
                        <option value="055">055</option>
                        <option value="057">057</option>
                        <option value="058">058</option>
                        <option value="02">02</option>
                        <option value="03">03</option>
                        <option value="04">04</option>
                        <option value="08">08</option>
                        <option value="09">09</option>
                        <option value="077">077</option>
                    </select>

                    &nbsp;&nbsp; - &nbsp;&nbsp;

                    <input type="text" name="phoneNum" id="phoneNum" />
                
                   
                </td>
            </tr>

            <tr>
                <td>סיסמא:</td>

                <td>
                    <input type="password" name="nPw" id="nPw" size="10" />
                    <span style="color:red"> * 6-10</span>
                
                    <input type="text" id="mPw" size="30"
                           style="display:none; background-color:silver; font-weight:bold;"
                           disabled="disabled" />
                </td>
            </tr>

            <tr>
                <td>אימות סיסמא:</td>

                <td>
                    <input type="password" name="chkPw" id="chkPw" size="10" />
               
                    <input type="text" id="mChkPw" size="30"
                           style="display:none; background-color:silver; font-weight:bold;"
                           disabled="disabled" />
                </td>
            </tr>

            <tr>
                <td colspan="2" style="text-align :center">
                    <input type="submit" name="submit" value="שלח" />
                </td>
            </tr>
        </table>
    </form>
    <br />
        <h3 style="direction: ltr; text-align:center;"><%= msg %></h3>
        <h3 style="direction: ltr; text-align:center;"><%= sqlMsg %></h3>
</asp:Content>
