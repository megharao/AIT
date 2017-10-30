<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="OnlineGrocerySystem.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <br />
    <br />
    <br />
    <h1 style="color:green" align="center">Cart</h1>
    <div style="background-color:ThreeDHighlight">
        <br />
        <br />
        <br />
        <br />

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" 
ImageUrl='<%# Eval("Image") %>' Height="100" Width="200"/><br />
                <asp:Label ID="Label3" runat="server" Visible="false" Text='<%# Eval("Image") %>' /><br />
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' ></asp:Label><br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label><br />
            </ItemTemplate>
        </asp:DataList>
        <asp:Button ID="Button1" runat="server" Text="Checkout" ForeColor="White" Font-Bold="true"  BackColor="#3399FF" Height="45px" Width="100px" OnClick="Button1_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="select * from Cart" ConnectionString="Data Source=(localdb)\ProjectsV13;Initial Catalog=master;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"></asp:SqlDataSource>

</asp:Content>
