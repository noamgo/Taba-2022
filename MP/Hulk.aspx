<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Hulk.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Hulk(הענק הירוק)</title>

    <style>
          p {
            color: black;
            font-weight: normal bold;
            font-size: 14pt;
        }
        hr {
            width: 60%
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color: green; text-align: center"> Hulk(הענק הירוק) </h1>
    <hr />
    
    <div>
    <img src="MARVEL Pics/HulkPage.jpg" alt="הענק הירוק" title="הענק הירוק" style="width:250px; float:left; margin:20px" />
    </div>

    <div>
    <p style="font-size: 40pt; text-align:center">
       העמוד בבנייה
    </p>

    <p style="text-align:center">
        <a href="Marvel.aspx"><img src="SitePICS/backButton.png" style="height:95px;"/></a>
    </p>
        </div>
</asp:Content>