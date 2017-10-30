<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewData.aspx.cs" Inherits="OnlineGrocerySystem.ViewData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .transbox{
            margin:30px;
            background-color:#ffffff;
            opacity:0.8;
            filter:alpha(opacity=100);
            width:500px;
            margin-left:450px;
        }
        .onemore{
            margin:5%;
            font-weight:bold;
            color:black;
        }
    </style>
</head>
<body style="background-image: url('/o-GROCERY-SHOPPING-facebook.jpg'); background-position: center center; background-attachment: fixed; background-size:1366px; background-position-y:0px; background-repeat: no-repeat;"">
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <h1 style="color:green" align="center">View Data</h1>
        <br />
        <br />
        <br />
        <div align="center">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Employee</asp:ListItem>
        <asp:ListItem>Farmer</asp:ListItem>
        <asp:ListItem>Manufacturer</asp:ListItem>
        <asp:ListItem>Van</asp:ListItem>
        </asp:DropDownList>
            </div>
        <div class="transbox" align="center">
        <div class="onemore">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Visible="False" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\ProjectsV13;Initial Catalog=master;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Name], [ContactNumber] FROM [Employee]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" Visible="False" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Product" HeaderText="Product" SortExpression="Product" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(localdb)\ProjectsV13;Initial Catalog=master;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Name], [ContactNumber], [Address], [Product], [Category] FROM [Farmer]"></asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" Visible="False" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Product" HeaderText="Product" SortExpression="Product" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=(localdb)\ProjectsV13;Initial Catalog=master;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Name], [ContactNumber], [Address], [Product], [Category] FROM [Manufacturer]"></asp:SqlDataSource>
        <asp:GridView ID="GridView4" runat="server" Visible="False" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="VanNumber" HeaderText="VanNumber" SortExpression="VanNumber" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=(localdb)\ProjectsV13;Initial Catalog=master;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [VanNumber], [Model] FROM [Van]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
    </div>
            </div>
    </form>
</body>
</html>
