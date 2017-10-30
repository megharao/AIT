<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StoreData.aspx.cs" Inherits="OnlineGrocerySystem.StoreData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('/o-GROCERY-SHOPPING-facebook.jpg'); background-position: center center; background-attachment: fixed; background-size:1366px; background-position-y:0px; background-repeat: no-repeat;">
    <form id="form1" runat="server">
    <div align="center">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <h1 style="color:green">Store Data</h1>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" ForeColor="White" Font-Bold="true"  BackColor="#3399FF" Height="45px" Width="90px" Text="Manufacturer" OnClick="Button1_Click" /> &nbsp; &nbsp;
        <asp:Button ID="Button2" runat="server" ForeColor="White" Font-Bold="true"  BackColor="#3399FF" Height="45px" Width="90px" Text="Employee" OnClick="Button2_Click" /> &nbsp; &nbsp;
        <asp:Button ID="Button3" runat="server" ForeColor="White" Font-Bold="true"  BackColor="#3399FF" Height="45px" Width="90px" Text="Van" OnClick="Button3_Click" /> &nbsp; &nbsp;
        <asp:Button ID="Button4" runat="server" ForeColor="White" Font-Bold="true"  BackColor="#3399FF" Height="45px" Width="90px" Text="Farmer" OnClick="Button4_Click" /><br /><br />
        <asp:Button ID="Button5" runat="server" ForeColor="White" Font-Bold="true" BackColor="#3399FF" Height="45px" Width="150px" Text="Set Inventory Level" OnClick="Button5_Click" /><br /><br />
        <asp:Button ID="Button6" runat="server" ForeColor="White" Font-Bold="true" BackColor="#3399FF" Height="45px" Width="150px" Text="View Data" OnClick="Button6_Click" />
    </div>
    </form>
</body>
</html>
