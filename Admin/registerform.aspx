<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registerform.aspx.cs" Inherits="registerform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 60%;
            border: 1px solid #800080;
            background-color: #66FF66;
        }
        .style3
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
<body background="Images/photo-background-images-11.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table style="font-size:30px; color:Yellow; font-weight:bolder;" width="100%" background="Images/125.jpg">
            <tr>
                <td>
                    REGISTER FORM
                </td>
            </tr>
        </table>
        <hr size="10" color="blue" />
        
        <a href="homepage.aspx">HOME</a>
        
        <hr size="10" color="blue" />
        &nbsp;<table align="center" class="style1" 
            style="background-image: url('Images/images (16).jpg')">
        <tr>
            <td>
                <span lang="en-us">regid</span></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required regid"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <span lang="en-us">fname</span></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="requied fname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <span lang="en-us">lname</span></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Required lname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <span lang="en-us">cnumber</span></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Required cnumber"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <span lang="en-us">place</span></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Required place"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <span lang="en-us">prifession</span></td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Required profession"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                <asp:Button ID="Button1" runat="server" Text="submit" onclick="Button1_Click" />
                <input id="Reset1" type="reset" value="reset" onclick="return Reset1_onclick()" /></td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
