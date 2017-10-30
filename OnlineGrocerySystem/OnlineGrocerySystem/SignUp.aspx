<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="OnlineGrocerySystem.SignUp" %>
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
    <div class="transbox">
        <div class="onemore">
            <br />
            <h1 style="color:green">Sign Up</h1>
    <asp:Table ID="Table1" runat="server" align="Center" >
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label1" runat="server" Text="User Name" Width="222px" Font-Bold="true" ForeColor="Black"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox1" runat="server" Width="222px"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="Please enter User Name" ForeColor="Red" Width="200px" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label2" runat="server" Text="Email ID" Width="222px" Font-Bold="true"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox2" runat="server" Width="222px"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter vaild Email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter Email ID" ForeColor="Red"></asp:RequiredFieldValidator>
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label3" runat="server" Text="Contact Number" Width="222px" Font-Bold="true"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox3" runat="server" Width="222px"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter Contact Number" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label4" runat="server" Text="Address" Width="222px" Font-Bold="true"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox4" runat="server" Width="222px" TextMode="MultiLine"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter Address" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label5" runat="server" Text="Password" Width="222px" Font-Bold="true"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox5" runat="server" Width="222px" TextMode="Password"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter Password" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label6" runat="server" Text="Confirm Password" Width="222px" Font-Bold="true"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox6" runat="server" Width="222px" TextMode="Password"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please confirm Password" ForeColor="Red"></asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox6" ControlToCompare="TextBox5" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <asp:Button ID="Button3" runat="server" Text="Sign Up" OnClick="Button3_Click" Width="100px" Height="30px" Font-Bold="true" BorderColor="White" Font-Size="Large" ForeColor="White"  BackColor="#3399FF" BorderStyle="Solid"/>
        <br />
        </div>
        </div>
    </div>
        </form>
    </body>
    </html>
