<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Van.aspx.cs" Inherits="OnlineGrocerySystem.Van" %>

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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="transbox">
        <div class="onemore">
            <br />
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label1" runat="server" Text="Van Number" Width="222px" Font-Bold="true" ForeColor="Black"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="TextBox1" runat="server" Width="222px"></asp:TextBox></asp:TableCell>
                    <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter Name" Width="200px" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label2" runat="server" Text="Model" Width="222px" Font-Bold="true" ForeColor="Black"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="TextBox2" runat="server" Width="222px"></asp:TextBox></asp:TableCell>
                    <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter Contact Number" Width="200px" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
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
