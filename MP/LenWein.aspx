<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="LenWein.aspx.cs" Inherits="MP.JohnByrne" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <title>לן ווין</title>

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
    <h1 style="color: dimgray; text-align: center"> לן ווין </h1>
    <hr />
    
    <div>
    <img src="MARVEL Pics/LenWeinPage.jpg" alt="לן ווין" title="לן ווין" style="width:250px; float:left; margin:20px" />
    </div>

    <div>
    <p style="font-size: 40pt; text-align:center">
       העמוד בבנייה
    </p>

    <p style="text-align:center">
        <a href="Creators.aspx"><img src="SitePICS/backButton.png" style="height:95px;"/></a>
    </p>
        </div>
</asp:Content>
