<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="JoeSimon.aspx.cs" Inherits="MP.JohnByrne" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <title>ג'ו סימון</title>

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
    <h1 style="color: dimgray; text-align: center"> ג'ו סימון </h1>
    <hr />
    
    <div>
    <img src="MARVEL Pics/JoeSimonPage.jpg" alt="ג'ו סימון" title="ג'ו סימון" style="width:250px; float:left; margin:20px" />
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
