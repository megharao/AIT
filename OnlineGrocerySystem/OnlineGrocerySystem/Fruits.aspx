<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Fruits.aspx.cs" Inherits="OnlineGrocerySystem.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div style="background-color:ThreeDHighlight">
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="Right" Height="50px" ImageUrl="~/Images/Shoppingcart.png" OnClick="ImageButton2_Click" />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" 
ImageUrl='<%# Eval("Image") %>' Height="100" Width="200"/><br />
                <asp:Label ID="Label3" runat="server" Visible="false" Text='<%# Eval("Image") %>' /><br />
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' ></asp:Label><br />
                <asp:Label ID="Label2" runat="server" Text='<%# "Rs. " + Eval("Price")+ " per kg" %>'></asp:Label><br />
                <asp:Button ID="Button1" ForeColor="White" Font-Bold="true"  BackColor="#3399FF" Height="45px" Width="100px" runat="server" Text="Add to Cart" OnClick="Button1_Click" />
             </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="select * from Product where Category='1'" ConnectionString="Data Source=(localdb)\ProjectsV13;Initial Catalog=master;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"></asp:SqlDataSource>
    <br />
        <br />
        <br />
        <br />    
    </div>   
</asp:Content>
