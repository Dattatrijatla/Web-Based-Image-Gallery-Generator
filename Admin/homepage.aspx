<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-weight: bold;
            border: 1px solid #800000;
            background-color: #C0C0C0;
        }
        .style2
        {
            font-family: "Arial Black";
            font-size: xx-large;
        }
        .style3
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td class="style3">
                    <span class="style2" lang="en-us">ADMINISTRATIVE WEB CONTROLL</span>
                </td>
            </tr>
        </table>
        <hr size="10" color="blue" />
        <table cellpadding="10" align="center">
            <tr>
                <td>
                    <a href="../homepage.aspx">HOME</a>
                </td>
                <td>
                    <a href="auctionform.aspx">AUCTIONING</a>
                </td>
                <td>
                    <a href="painterinfo.aspx">PAINTER</a>
                </td>
                <td>
                    <a href="paintinginfo.aspx">PAINTING</a>
                </td>
                <td>
                    <a href="register.aspx">REGISTERED</a>
                </td>
                <td>
                    <a href="sold.aspx">SOLD</a>
                </td>
            </tr>
        </table>
        <hr size="10" color="blue" />
        
        <img src="../Images/real1.jpg" />
    </div>
    </form>
</body>
</html>
