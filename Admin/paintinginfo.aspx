<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paintinginfo.aspx.cs" Inherits="paintinginfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 55%;
            border: 1px solid #00FFFF;
            background-color: #808080;
        }
    </style>
</head>
<body background="Images/save_my_love_for_loneliness-wallpaper-1366x768.jpg">
    <form id="form1" runat="server">
    <div>
        <table style="font-size: 30px; color: Yellow; font-weight: bolder;" width="100%"
            background="Images/125.jpg">
            <tr>
                <td>
                    PAINTING INFORMATION
                </td>
            </tr>
        </table>
        <hr size="10" color="blue" />
        <a href="homepage.aspx">HOME</a>
        <hr size="10" color="blue" />
        &nbsp;<table align="right" class="style1">
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4"
                        DataKeyNames="paintingId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" 
                                ShowEditButton="True" />
                            <asp:BoundField DataField="paintingId" HeaderText="paintingId" ReadOnly="True" SortExpression="paintingId" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="details" HeaderText="details" SortExpression="details" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:BoundField DataField="painterid" HeaderText="painterid" SortExpression="painterid" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        DeleteCommand="DELETE FROM [paintinginfo] WHERE [paintingId] = @paintingId" InsertCommand="INSERT INTO [paintinginfo] ([paintingId], [name], [details], [price], [painterid], [date], [description]) VALUES (@paintingId, @name, @details, @price, @painterid, @date, @description)"
                        SelectCommand="SELECT * FROM [paintinginfo]" UpdateCommand="UPDATE [paintinginfo] SET [name] = @name, [details] = @details, [price] = @price, [painterid] = @painterid, [date] = @date, [description] = @description WHERE [paintingId] = @paintingId">
                        <DeleteParameters>
                            <asp:Parameter Name="paintingId" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="details" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="painterid" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="description" Type="String" />
                            <asp:Parameter Name="paintingId" Type="Int32" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="paintingId" Type="Int32" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="details" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="painterid" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="description" Type="String" />
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
                        DataKeyNames="paintingId" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None"
                        Height="50px" OnItemInserting="DetailsView1_ItemInserting" Width="125px">
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <Fields>
                            <asp:BoundField DataField="paintingId" HeaderText="paintingId" ReadOnly="True" SortExpression="paintingId" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="details" HeaderText="details" SortExpression="details" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:BoundField DataField="painterid" HeaderText="painterid" SortExpression="painterid" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        DeleteCommand="DELETE FROM [paintinginfo] WHERE [paintingId] = @paintingId" InsertCommand="INSERT INTO [paintinginfo] ([paintingId], [name], [details], [price], [painterid], [date], [description]) VALUES (@paintingId, @name, @details, @price, @painterid, @date, @description)"
                        SelectCommand="SELECT * FROM [paintinginfo] WHERE ([paintingId] = @paintingId)"
                        UpdateCommand="UPDATE [paintinginfo] SET [name] = @name, [details] = @details, [price] = @price, [painterid] = @painterid, [date] = @date, [description] = @description WHERE [paintingId] = @paintingId">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="paintingId" PropertyName="SelectedValue"
                                Type="Int32" />
                        </SelectParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="paintingId" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="details" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="painterid" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="description" Type="String" />
                            <asp:Parameter Name="paintingId" Type="Int32" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="paintingId" Type="Int32" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="details" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="painterid" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="description" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="548px" 
            ImageAlign="Left" ImageUrl="~/Images/Mona_Lisa.jpg" style="margin-top: 30px; margin-right: 0px;" 
            Width="244px" 
            PostBackUrl="~/aboutimg.aspx" BorderStyle="Ridge" />
    <asp:ImageButton ID="ImageButton2" runat="server" Height="340px" 
        ImageUrl="~/Images/Picasso.jpg" 
        style="margin-left: 2px; margin-right: 0px; margin-top: 14px; margin-bottom: 0px" 
        Width="350px" />
    <asp:ImageButton ID="ImageButton3" runat="server" Height="281px" 
        ImageUrl="~/Images/john william waterhouse - Copy.jpg" 
        style="margin-right: 0px" Width="341px" />
    <asp:ImageButton ID="ImageButton5" runat="server" Height="333px" 
        ImageUrl="~/Images/Starry_Night-1024x811 - Copy.jpg" style="margin-right: 0px" 
        Width="518px" />
    </form>
</body>
</html>
