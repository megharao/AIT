<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="OnlineGrocerySystem.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <h1 style="color:green" align="center">Check Out</h1>
    <div class="transbox">
        <div class="onemore">
            <br />
            
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label1" runat="server" Text="Time slot"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:DropDownList ID="d1" runat="server">
                        <asp:ListItem>09:00AM</asp:ListItem>
                        <asp:ListItem>12:30PM</asp:ListItem>
                        <asp:ListItem>4:00PM</asp:ListItem>
                        <asp:ListItem>7:00PM</asp:ListItem>
                    </asp:DropDownList></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>
        </div>
            <asp:Button ID="b1" runat="server" Text="Confirm Order" Width="200px" Height="30px" Font-Bold="true" BorderColor="White" Font-Size="Large" ForeColor="White"  BackColor="#3399FF" BorderStyle="Solid" OnClick="b1_Click" />
</asp:Content>
