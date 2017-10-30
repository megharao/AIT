<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Set.aspx.cs" Inherits="OnlineGrocerySystem.Set" %>

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
            width:680px;
            margin-left:450px;
        }
        .onemore{
            margin:5%;
            font-weight:bold;
            color:black;
        }
    </style>
</head>
<body style="background-image: url('/o-GROCERY-SHOPPING-facebook.jpg'); background-position: center center; background-attachment: fixed; background-size:1366px; background-position-y:0px; background-repeat: no-repeat;">
    <form id="form1" runat="server">
    <div>
    <div>
        <br />
    <br />
        <h1 style="color:green" align="center">Set Inventory Level</h1>
    <br />
    <br />
    <br />
    <br />
    <div class="transbox">
        <div class="onemore">
            <br />
            <asp:DropDownList ID="d1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" ></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\ProjectsV13;Initial Catalog=master;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Name] FROM [Product]"></asp:SqlDataSource> &nbsp; &nbsp;
            <asp:TextBox ID="t1" runat="server" Width="222px"></asp:TextBox><br />
            <br />
            <div align="center">
            <asp:Button ID="b1" runat="server" ForeColor="White" Text="Update" Font-Bold="true" Align="center" BackColor="#3399FF" Height="30px" Width="70px" OnClick="b1_Click" />
                </div>
            </div>
        </div>
        </div>
    </div>
    </form>
</body>
</html>
