    <%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MP.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form name ="loginFrm" id="loginFrm" method="post" runat="server">
    <br /><br />
    <h1 style="text-align:center">כניסת משתמש</h1>
    <table id="table1" dir="rtl" align="center">
        <tr>
            <td>שם משתמש</td>
            <td><input type ="text" name="uName" id="uName" /></td>
        </tr>

        <tr>
            <td>סיסמה</td>
            <td><input type ="password" name="pw" id="pw" /></td>
        </tr>
        <tr>
            <td colspan ="2" align ="center">
            <input type="submit" name="submit" value=" התחבר " /></td>
        </tr>
        <div style="text-align:center; font-size:20pt; color:red">
                   <%= msg %>
        </div>
    </table>
</form>
</asp:Content>
