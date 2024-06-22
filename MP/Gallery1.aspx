<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Gallery1.aspx.cs" Inherits="MP.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .imgCell {width: 120px; height: 120px; border: 1px solid gray;}
        .bigPicImg {width: 250px; height: 250px; border: 1px solid gray;}
    </style>

    <script>
        function picShow(pic)
        {
            bigPic.src = pic
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="margin: 0px auto;">
        <tr>
            <td><img class="imgCell" src="Gallery/p11.jpg" onmouseover="picShow('Gallery/p11.jpg')" /></td>
            <td><img class="imgCell" src="Gallery/p12.jpg" onmouseover="picShow('Gallery/p12.jpg')" /></td>
            <td><img class="imgCell" src="Gallery/p13.png" onmouseover="picShow('Gallery/p13.png')" /></td>
            <td><img class="imgCell" src="Gallery/p14.jpeg" onmouseover="picShow('Gallery/p14.jpeg')" /></td>
        </tr>

        <tr>
        <td><img class="imgCell" src="Gallery/p21.jpg" onmouseover="picShow('Gallery/p21.jpg')" /></td>
        <td rowspan = "2" colspan = "2">
            <img class="bigPicImg" id="bigPic" src="Gallery/p11.jpg" />
        </td>
        <td><img class="imgCell" src="Gallery/p24.jpg" onmouseover="picShow('Gallery/p24.jpg')" /></td>
        </tr>

        <tr>
            <td><img class="imgCell" src="Gallery/p31.jpg" onmouseover="picShow('Gallery/p31.jpg')" /></td>
            <td><img class="imgCell" src="Gallery/p34.jpg" onmouseover="picShow('Gallery/p34.jpg')" /></td>
        </tr>

        <tr>
            <td><img class="imgCell" src="Gallery/p41.png" onmouseover="picShow('Gallery/p41.png')" /></td>
            <td><img class="imgCell" src="Gallery/p42.jpg" onmouseover="picShow('Gallery/p42.jpg')" /></td>
            <td><img class="imgCell" src="Gallery/p43.jpg" onmouseover="picShow('Gallery/p43.jpg')" /></td>
            <td><img class="imgCell" src="Gallery/p44.jpg" onmouseover="picShow('Gallery/p44.jpg')" /></td>
        </tr>
    </table>
</asp:Content>
