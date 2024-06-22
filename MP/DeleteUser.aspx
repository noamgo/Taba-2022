<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="MP.DeleteUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style> 
        h2 {text-align: center; direction: ltr; }
        h3 {text-align: center; }
        th {text-align: center; width: 70px; }

        .alignCenter {text-align: center;}
        .alignRight {text-align: right;}
        .alignLeft{text-align: left;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1 style ="text-align: center; color: red;">מחיקת משתמשים</h1>

    <h2><%= sqlSelect %></h2>

    <table border="1" align="center">
        <%= st %>
    </table>

    <h3>
        <%= msg %>
    </h3>
</asp:Content>
