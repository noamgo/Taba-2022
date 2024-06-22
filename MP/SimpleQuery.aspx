<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="SimpleQuery.aspx.cs" Inherits="MP.SimpleQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .tavla {
            text-align: center;
            margin: 0px auto;
            border-spacing: 0px;
            width:40%;
        }
    .tableDB {border: 1px solid black;margin:0px auto}
    .tblTH{text-align:center;border:1px solid black;}
    .tblTD1{border:1px solid black;text-align:center;}
    .tblTD2{border:1px solid black;}
    .tblTD3{border:1px solid black;text-align:left;}
    </style>

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align:center">הצגת נתונים לפי חתך</h1>
    <form style="text-align:center" id="Form1" method="post" runat="Server">
        <select name="field" id="field" onclick="detectField();">
            <option value="lName" selected>שם משפחה</option>
            <option value="fName">שם פרטי</option>
            <option value="email">דוא'ל</option>
            <option value="gender">מגדר</option>
            <option value="YearBorn">שנת לידה</option>
            <option value="prefix">קידומת טלפון</option>
            <option value="phone">טלפון</option>
            <option value="city">עיר</option>
            <option value="hobby">תחביב</option>
        </select>

        <div id="query"></div>
        <br /><br />
        <input type="submit" name="submit" value="חפש" />
    </form>

        <br /><br />
        <h2 style="text-align:center" dir="ltr"><%= sql %></h2>
        <table class="tavla" style ="border:1px solid black;margin:0px auto;">
            <%= st %>
        </table>
        <h3 style="text-align:center"><%=msg %></h3>
</asp:Content>
