<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="Pages_Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 style="font-family: 'Comic Sans MS'; font-size: large; font-weight: bold; color: #CC0000">Welcome to Casela Nature Park Online Shop!</h2>

    <p>This online shop features an array of fascinating gifts and treats from around the world. You will find exclusive merchandise featuring our animals, Soft Toys, Books, Paints, Decorations, Gifts, Jewelleries and much more.

    Gifts can be reseve online and collect at our Shop!</p>

    
        <table>
           
               <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/softtoys.jpg" Height="200px" Width="185px" BorderStyle="Outset" NavigateUrl="~/Pages/SoftToys.aspx"></asp:HyperLink>
                      
               <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Images/Books.jpg" Height="200px" Width="185px" BorderStyle="Outset" NavigateUrl="~/Pages/Books.aspx">HyperLink</asp:HyperLink>
                        
               <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Images/Paint.jpg" Height="200px" Width="185px" BorderStyle="Outset" NavigateUrl="~/Pages/ArtistPaints.aspx">HyperLink</asp:HyperLink>
                                 
               <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl="~/Images/Decorations.jpg" Height="200px" Width="185px" BorderStyle="Outset" NavigateUrl="~/Pages/Decorations.aspx">HyperLink</asp:HyperLink>
                       
               <asp:HyperLink ID="HyperLink5" runat="server" ImageUrl="~/Images/gift.jpg" Height="200px" Width="185px" BorderStyle="Outset" NavigateUrl="~/Pages/Gifts.aspx">HyperLink</asp:HyperLink>
                       
               <asp:HyperLink ID="HyperLink6" runat="server" ImageUrl="~/Images/Jewellery.jpg" Height="200px" Width="185px" BorderStyle="Outset" NavigateUrl="~/Pages/Jewelleries.aspx">HyperLink</asp:HyperLink>
           
       
        </table>      
       
       
       

    

</asp:Content>

