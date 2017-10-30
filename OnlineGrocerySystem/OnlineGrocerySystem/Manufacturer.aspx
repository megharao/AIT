<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manufacturer.aspx.cs" Inherits="OnlineGrocerySystem.Manufacturer" %>

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
    <div >
        <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="transbox">
        <div class="onemore">
            <br />
            <asp:Table ID="Table1" runat="server" align="center">
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label1" runat="server" Text="Name" Width="222px" Font-Bold="true" ForeColor="Black"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="TextBox1" runat="server" Width="222px"></asp:TextBox></asp:TableCell>
                    <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter Name" Width="200px" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label2" runat="server" Text="Contact Number" Width="222px" Font-Bold="true" ForeColor="Black"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="TextBox2" runat="server" Width="222px"></asp:TextBox></asp:TableCell>
                    <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter Contact Number" Width="200px" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label3" runat="server" Width="222px" Text="Address" Font-Bold="true" ForeColor="Black"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="TextBox3" runat="server" Width="222px" TextMode="MultiLine"></asp:TextBox></asp:TableCell>
                    <asp:TableCell><asp:RequiredFieldValidator ID="ReuiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter address" Width="200px" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label4" runat="server" Width="222px" Text="Product" Font-Bold="true" ForeColor="Black"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="TextBox4" runat="server" Width="222px"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label5" runat="server" Width="222px" Text="Category" Font-Bold="true" ForeColor="Black"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="TextBox5" runat="server" Width="222px" TextMode="Number"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                </asp:TableRow>
            </asp:Table>
            
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" Width="100px" Height="30px" Font-Bold="true" BorderColor="White" Font-Size="Large" ForeColor="White"  BackColor="#3399FF" BorderStyle="Solid" />
        </div>
    </div>
    </div>
    </form>
</body>
</html>
