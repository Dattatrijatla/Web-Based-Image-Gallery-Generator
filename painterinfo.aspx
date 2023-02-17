<%@ Page Language="C#" AutoEventWireup="true" CodeFile="painterinfo.aspx.cs" Inherits="painterinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 60%;
            border: 1px solid #FF00FF;
            background-color: #C0C0C0;
        }
        .style6
        {
            width: 107px;
            font-size: large;
        }
    </style>
</head>
<body background="Images/wc1801880.jpg">

    <form id="form1" runat="server">
    <div>
        <table style="font-size: 30px; color: Yellow; font-weight: bolder;" width="100%"
            background="Images/125.jpg">
            <tr>
                <td>
                    <span class="style6">Web Based Image Gallery Generator&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>PAINTER INFORMATION
                </td>
            </tr>
        </table>
        <hr size="10" color="blue" />
        <a href="homepage.aspx">HOME</a>
        <hr size="10" color="blue" />
        &nbsp;<table align="right" class="style1">
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow"
                        BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="paintinerid"
                        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="paintinerid" HeaderText="paintinerid" ReadOnly="True"
                                SortExpression="paintinerid" />
                            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                            <asp:BoundField DataField="contactno" HeaderText="contactno" SortExpression="contactno" />
                            <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                            <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                            <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        DeleteCommand="DELETE FROM [painterinfo] WHERE [paintinerid] = @paintinerid"
                        InsertCommand="INSERT INTO [painterinfo] ([paintinerid], [fname], [lname], [contactno], [emailid], [address], [place], [country]) VALUES (@paintinerid, @fname, @lname, @contactno, @emailid, @address, @place, @country)"
                        SelectCommand="SELECT * FROM [painterinfo]" UpdateCommand="UPDATE [painterinfo] SET [fname] = @fname, [lname] = @lname, [contactno] = @contactno, [emailid] = @emailid, [address] = @address, [place] = @place, [country] = @country WHERE [paintinerid] = @paintinerid">
                        <DeleteParameters>
                            <asp:Parameter Name="paintinerid" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />
                            <asp:Parameter Name="contactno" Type="String" />
                            <asp:Parameter Name="emailid" Type="String" />
                            <asp:Parameter Name="address" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
                            <asp:Parameter Name="country" Type="String" />
                            <asp:Parameter Name="paintinerid" Type="Int32" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="paintinerid" Type="Int32" />
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />
                            <asp:Parameter Name="contactno" Type="String" />
                            <asp:Parameter Name="emailid" Type="String" />
                            <asp:Parameter Name="address" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
                            <asp:Parameter Name="country" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>

            <tr>
                <td>
                    &nbsp;
                </td>
                <td style="background-image: url('Images/Colorful (15)14.jpg')">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White"
                        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="paintinerid"
                        DataSourceID="SqlDataSource2" GridLines="Horizontal" Height="50px" OnItemInserted="DetailsView1_ItemInserted"
                        Width="125px">
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <Fields>
                            <asp:BoundField DataField="paintinerid" HeaderText="paintinerid" ReadOnly="True"
                                SortExpression="paintinerid" />
                            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                            <asp:BoundField DataField="contactno" HeaderText="contactno" SortExpression="contactno" />
                            <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                            <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                            <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                        </Fields>
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        DeleteCommand="DELETE FROM [painterinfo] WHERE [paintinerid] = @paintinerid"
                        InsertCommand="INSERT INTO [painterinfo] ([paintinerid], [fname], [lname], [contactno], [emailid], [address], [place], [country]) VALUES (@paintinerid, @fname, @lname, @contactno, @emailid, @address, @place, @country)"
                        SelectCommand="SELECT * FROM [painterinfo] WHERE ([paintinerid] = @paintinerid)"
                        UpdateCommand="UPDATE [painterinfo] SET [fname] = @fname, [lname] = @lname, [contactno] = @contactno, [emailid] = @emailid, [address] = @address, [place] = @place, [country] = @country WHERE [paintinerid] = @paintinerid">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="paintinerid" PropertyName="SelectedValue"
                                Type="Int32" />
                        </SelectParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="paintinerid" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />
                            <asp:Parameter Name="contactno" Type="String" />
                            <asp:Parameter Name="emailid" Type="String" />
                            <asp:Parameter Name="address" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
                            <asp:Parameter Name="country" Type="String" />
                            <asp:Parameter Name="paintinerid" Type="Int32" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="paintinerid" Type="Int32" />
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />
                            <asp:Parameter Name="contactno" Type="String" />
                            <asp:Parameter Name="emailid" Type="String" />
                            <asp:Parameter Name="address" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
                            <asp:Parameter Name="country" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <asp:Image ID="Image1" runat="server" Height="542px" ImageAlign="Left" 
            ImageUrl="~/Images/PaintingBig.jpg" Width="527px" />
    </div>
    </form>
</body>
</html>
