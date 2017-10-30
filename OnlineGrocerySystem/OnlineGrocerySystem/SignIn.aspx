<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="OnlineGrocerySystem.WebForm2" %>
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
    <div class="transbox" style="width:550px">
        <div class="onemore">
            <h1 style="color:green">Sign In</h1>
            <table>
                <tr>
                    <td style="width:100px"><strong>Email ID</strong></td>
                    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="r1" runat="server" ForeColor="Red" ControlToValidate="TextBox1" ErrorMessage="Please enter User name"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td><strong>Password</strong></td>
                    <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="r2" runat="server" ForeColor="Red" ControlToValidate="TextBox2" ErrorMessage="Please enter password"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td></td>
                    <td align="left"><asp:Button ID="Button1" runat="server" Text="Log In" ForeColor="White" Font-Bold="true"  BackColor="#3399FF" Height="45px" Width="75px" OnClick="Button1_Click" /></td>
                    <td></td>
                </tr>
            </table>
            </div>
        </div>
</div>
        </form>
    </body>
    </html>
