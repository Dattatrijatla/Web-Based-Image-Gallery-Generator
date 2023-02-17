<%@ Page Language="C#" AutoEventWireup="true" CodeFile="auction.aspx.cs" Inherits="auction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 50%;
            border-left-style: solid;
            border-left-width: 2px;
            border-right: 2px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 2px;
            border-bottom: 2px solid #C0C0C0;
            background-color: #FF33CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="font-size:30px; color:Yellow; font-weight:bolder;" width="100%" background="Images/125.jpg">
            <tr>
                <td>
                    AUCTIONING INFORMATION
                </td>
            </tr>
        </table>
        <hr size="10" color="blue" />
        
        <a href="homepage.aspx">HOME</a>
        
        <hr size="10" color="blue" />
        <asp:Image ID="Image1" runat="server" Height="522px" ImageAlign="Left" 
            ImageUrl="~/Images/Rstumpf__VisitDenver_IMG_6826_web_2x1-1024x512.jpg" 
            style="margin-top: 0px" Width="657px" />
        &nbsp;<table align="right" class="style1" 
            style="background-image: url('../Images/31038.jpg')">
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84"
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
                        DataKeyNames="auctionid" DataSourceID="SqlDataSource1">
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" 
                                ShowEditButton="True" />
                            <asp:BoundField DataField="auctionid" HeaderText="auctionid" ReadOnly="True" SortExpression="auctionid" />
                            <asp:BoundField DataField="paintingid" HeaderText="paintingid" SortExpression="paintingid" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:BoundField DataField="startdate" HeaderText="startdate" SortExpression="startdate" />
                            <asp:BoundField DataField="enddate" HeaderText="enddate" SortExpression="enddate" />
                            <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        DeleteCommand="DELETE FROM [auction] WHERE [auctionid] = @auctionid" InsertCommand="INSERT INTO [auction] ([auctionid], [paintingid], [name], [price], [startdate], [enddate], [place]) VALUES (@auctionid, @paintingid, @name, @price, @startdate, @enddate, @place)"
                        SelectCommand="SELECT * FROM [auction]" UpdateCommand="UPDATE [auction] SET [paintingid] = @paintingid, [name] = @name, [price] = @price, [startdate] = @startdate, [enddate] = @enddate, [place] = @place WHERE [auctionid] = @auctionid">
                        <DeleteParameters>
                            <asp:Parameter Name="auctionid" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="paintingid" Type="Int32" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="startdate" Type="String" />
                            <asp:Parameter Name="enddate" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
                            <asp:Parameter Name="auctionid" Type="Int32" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="auctionid" Type="Int32" />
                            <asp:Parameter Name="paintingid" Type="Int32" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="startdate" Type="String" />
                            <asp:Parameter Name="enddate" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84"
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
                        DataKeyNames="auctionid" DataSourceID="SqlDataSource2" Height="50px" OnItemInserted="DetailsView1_ItemInserted"
                        Width="125px">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <Fields>
                            <asp:BoundField DataField="auctionid" HeaderText="auctionid" ReadOnly="True" SortExpression="auctionid" />
                            <asp:BoundField DataField="paintingid" HeaderText="paintingid" SortExpression="paintingid" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:BoundField DataField="startdate" HeaderText="startdate" SortExpression="startdate" />
                            <asp:BoundField DataField="enddate" HeaderText="enddate" SortExpression="enddate" />
                            <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        DeleteCommand="DELETE FROM [auction] WHERE [auctionid] = @auctionid" InsertCommand="INSERT INTO [auction] ([auctionid], [paintingid], [name], [price], [startdate], [enddate], [place]) VALUES (@auctionid, @paintingid, @name, @price, @startdate, @enddate, @place)"
                        SelectCommand="SELECT * FROM [auction] WHERE ([auctionid] = @auctionid)" UpdateCommand="UPDATE [auction] SET [paintingid] = @paintingid, [name] = @name, [price] = @price, [startdate] = @startdate, [enddate] = @enddate, [place] = @place WHERE [auctionid] = @auctionid">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="auctionid" PropertyName="SelectedValue"
                                Type="Int32" />
                        </SelectParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="auctionid" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="paintingid" Type="Int32" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="startdate" Type="String" />
                            <asp:Parameter Name="enddate" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
                            <asp:Parameter Name="auctionid" Type="Int32" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="auctionid" Type="Int32" />
                            <asp:Parameter Name="paintingid" Type="Int32" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="startdate" Type="String" />
                            <asp:Parameter Name="enddate" Type="String" />
                            <asp:Parameter Name="place" Type="String" />
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
