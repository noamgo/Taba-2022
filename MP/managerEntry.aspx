<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="managerEntry.aspx.cs" Inherits="MP.managerEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form method="post" runat="server">
        <h1 style="text-align:center">כניסת מנהל</h1>
        <table id="table1" dir="rtl" align="center">
            <tr>
                <td>שם מנהל:</td>
                <td><input type="text" name="mName" id="mName" /></td>
            </tr>
            <tr>
                <td>סיסמה:</td>
                <td><input type="password" name="pw" id=pw" /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <br />
                    <input type="submit" name="submit" value=" התחבר " />
                </td>
            </tr>
            <%= msg %>
        </table>
    </form>
</asp:Content>
