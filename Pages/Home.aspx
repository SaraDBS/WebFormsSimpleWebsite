<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Pages_Home" %>

<%-- Add content controls here --%>

       
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">           
    
  
    <h2 style="font-family: 'Comic Sans MS'; font-size: large; font-weight: bold; color: #CC0000">Welcome and Get ready for a new World of Adventures!</h2>


  <p>

    Whether you are looking for an adrenaline rush or a gentle escapade, Casela has something in store to challenge your senses!

    Team up with your family and friends to discover one of the island’s most preserved setting and get ready to live some awe inspiring moments. The changing landscape around is an invitation to the Adventurer in you and it does not really matter if you choose to stay a whole day or just a few hours… At Casela World of Adventures, each moment counts.

  </p>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

        <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick"></asp:Timer>
        <asp:Image ID="Image1" Height="380px" Width="460px" runat="server" />

        </ContentTemplate>
        </asp:UpdatePanel>

 </asp:Content>