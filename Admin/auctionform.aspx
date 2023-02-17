<%@ Page Language="C#" AutoEventWireup="true" CodeFile="auctionform.aspx.cs" Inherits="auctionform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 50%;
            border: 1px solid #800080;
            background-color: #66FF66;
        }
        .style4
        {
            width: 107px;
        }
        .style5
        {
            text-align: center;
        }
    </style>

    <script language="javascript" type="text/javascript">
<!--

        function Reset1_onclick() {


        }

// -->
    </script>

</head>
<body background="../Images/ponte_arrabida___porto___portugal-wallpaper-1366x768.jpg">
    <form id="form1" runat="server">
    <div>
        <table style="font-size: 30px; color: Yellow; font-weight: bolder;" width="100%"
            background="Images/125.jpg">
            <tr>
                <td>
                    AUCTIONING INFORMATION SUBMISSION
                </td>
            </tr>
        </table>
        <hr size="10" color="blue" />
        <a href="homepage.aspx">HOME</a> &nbsp;<a href="auction.aspx">UPDATE INFO</a>
        <hr size="10" color="blue" />
        &nbsp;<table align="right" class="style1" 
            style="background-image: url('../Images/images (16).jpg')">
            <tr>
                <td class="style4">
                    <span lang="en-us">auctionid</span>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="required auction id"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <span lang="en-us">paintingid</span>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="Required painting id"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <span lang="en-us">name</span>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                        ErrorMessage="Required name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <span lang="en-us">price</span>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
                        ErrorMessage="Required price"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <span lang="en-us">startdate</span>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5"
                        ErrorMessage="Required startdate"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <span lang="en-us">enddate</span>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6"
                        ErrorMessage="Required enddate"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <span lang="en-us">place</span>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7"
                        ErrorMessage="Required place"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5" colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" Style="height: 26px" />
                    <input id="Reset1" type="reset" value="reset" onclick="return Reset1_onclick()" />
                </td>
            </tr>
            <tr>
                <td class="style5" colspan="3">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
