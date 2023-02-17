<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 60%;
            border-left-style: solid;
            border-left-width: 1px;
            border-right: 1px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 1px;
            border-bottom: 1px solid #C0C0C0;
            background-color: #008080;
        }
    </style>
</head>
<body background="Images/photo-background-images-11.jpg">
    <form id="form1" runat="server">
    <div>
        <table style="font-size: 30px; color: Yellow; font-weight: bolder;" width="100%"
            background="Images/125.jpg">
            <tr>
                <td>
                    REGISTERED USERS INFORMATION
                </td>
            </tr>
        </table>
        <hr size="10" color="blue" />
        <a href="homepage.aspx">HOME</a>
        <hr size="10" color="blue" />
        &nbsp;<table align="right" class="style1" 
            style="background-image: url('Images/background-blur-1.jpg')">
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="regid"
                        DataSourceID="SqlDataSource1">
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="regid" HeaderText="regid" ReadOnly="True" SortExpression="regid" />
                            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                            <asp:BoundField DataField="cnumber" HeaderText="cnumber" SortExpression="cnumber" />
                            <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                            <asp:BoundField DataField="profession" HeaderText="profession" SortExpression="profession" />
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        DeleteCommand="DELETE FROM [register] WHERE [regid] = @regid" InsertCommand="INSERT INTO [register] ([regid], [fname], [lname], [cnumber], [place], [profession]) VALUES (@regid, @fname, @lname, @cnumber, @place, @profession)"
                        SelectCommand="SELECT * FROM [register]" UpdateCommand="UPDATE [register] SET [fname] = @fname, [lname] = @lname, [cnumber] = @cnumber, [place] = @place, [profession] = @profession WHERE [regid] = @regid">
                        <DeleteParameters>
                            <asp:Parameter Name="regid" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />
                            <asp:Parameter Name="cnumber" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
                            <asp:Parameter Name="profession" Type="String" />
                            <asp:Parameter Name="regid" Type="Int32" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="regid" Type="Int32" />
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />
                            <asp:Parameter Name="cnumber" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
                            <asp:Parameter Name="profession" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
                        DataKeyNames="regid" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None"
                        Height="50px" OnItemInserted="DetailsView1_ItemInserted" Width="125px">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <Fields>
                            <asp:BoundField DataField="regid" HeaderText="regid" ReadOnly="True" SortExpression="regid" />
                            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                            <asp:BoundField DataField="cnumber" HeaderText="cnumber" SortExpression="cnumber" />
                            <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                            <asp:BoundField DataField="profession" HeaderText="profession" SortExpression="profession" />
                        </Fields>
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        DeleteCommand="DELETE FROM [register] WHERE [regid] = @regid" InsertCommand="INSERT INTO [register] ([regid], [fname], [lname], [cnumber], [place], [profession]) VALUES (@regid, @fname, @lname, @cnumber, @place, @profession)"
                        SelectCommand="SELECT * FROM [register] WHERE ([regid] = @regid)" UpdateCommand="UPDATE [register] SET [fname] = @fname, [lname] = @lname, [cnumber] = @cnumber, [place] = @place, [profession] = @profession WHERE [regid] = @regid">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="regid" PropertyName="SelectedValue"
                                Type="Int32" />
                        </SelectParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="regid" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />
                            <asp:Parameter Name="cnumber" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
                            <asp:Parameter Name="profession" Type="String" />
                            <asp:Parameter Name="regid" Type="Int32" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="regid" Type="Int32" />
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />
                            <asp:Parameter Name="cnumber" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
                            <asp:Parameter Name="profession" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
