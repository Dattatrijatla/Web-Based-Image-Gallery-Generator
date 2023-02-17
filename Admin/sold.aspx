<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sold.aspx.cs" Inherits="sold" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 60%;
            border: 1px solid #808000;
            background-color: #808080;
        }
    </style>
</head>
<body background="Images/d0228027-a342-4032-93d2-760a9aa110c9.jpg._CB330999873_.jpg">
    <form id="form1" runat="server">
    <div>
     <table style="font-size:30px; color:Yellow; font-weight:bolder;" width="100%" background="Images/125.jpg">
            <tr>
                <td>
                   SOLDOUT INFORMATION
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
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                        CellPadding="2" DataKeyNames="soldid" DataSourceID="SqlDataSource1" 
                        ForeColor="Black" GridLines="None">
                        <Columns>
                            <asp:CommandField 
                                ShowSelectButton="True" ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="soldid" HeaderText="soldid" ReadOnly="True" 
                                SortExpression="soldid" />
                            <asp:BoundField DataField="paintingid" HeaderText="paintingid" 
                                SortExpression="paintingid" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:BoundField DataField="buyername" HeaderText="buyername" 
                                SortExpression="buyername" />
                            <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        DeleteCommand="DELETE FROM [sold] WHERE [soldid] = @soldid" 
                        InsertCommand="INSERT INTO [sold] ([soldid], [paintingid], [price], [date], [buyername], [place]) VALUES (@soldid, @paintingid, @price, @date, @buyername, @place)" 
                        SelectCommand="SELECT * FROM [sold]" 
                        UpdateCommand="UPDATE [sold] SET [paintingid] = @paintingid, [price] = @price, [date] = @date, [buyername] = @buyername, [place] = @place WHERE [soldid] = @soldid">
                        <DeleteParameters>
                            <asp:Parameter Name="soldid" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="paintingid" Type="Int32" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="buyername" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
                            <asp:Parameter Name="soldid" Type="Int32" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="soldid" Type="Int32" />
                            <asp:Parameter Name="paintingid" Type="Int32" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="buyername" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        CellPadding="4" DataKeyNames="soldid" DataSourceID="SqlDataSource2" 
                        ForeColor="#333333" GridLines="None" Height="50px" 
                        oniteminserted="DetailsView1_ItemInserted" Width="125px">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <Fields>
                            <asp:BoundField DataField="soldid" HeaderText="soldid" ReadOnly="True" 
                                SortExpression="soldid" />
                            <asp:BoundField DataField="paintingid" HeaderText="paintingid" 
                                SortExpression="paintingid" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:BoundField DataField="buyername" HeaderText="buyername" 
                                SortExpression="buyername" />
                            <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        DeleteCommand="DELETE FROM [sold] WHERE [soldid] = @soldid" 
                        InsertCommand="INSERT INTO [sold] ([soldid], [paintingid], [price], [date], [buyername], [place]) VALUES (@soldid, @paintingid, @price, @date, @buyername, @place)" 
                        SelectCommand="SELECT * FROM [sold] WHERE ([soldid] = @soldid)" 
                        UpdateCommand="UPDATE [sold] SET [paintingid] = @paintingid, [price] = @price, [date] = @date, [buyername] = @buyername, [place] = @place WHERE [soldid] = @soldid">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="soldid" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="soldid" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="paintingid" Type="Int32" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="buyername" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
                            <asp:Parameter Name="soldid" Type="Int32" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="soldid" Type="Int32" />
                            <asp:Parameter Name="paintingid" Type="Int32" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="buyername" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
