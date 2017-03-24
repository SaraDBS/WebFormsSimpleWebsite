<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Books.aspx.cs" Inherits="Pages_Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <h2 style='font-weight: bold; font-family: "Comic Sans MS"; color: #CC0000; font-size: x-large;'>Books</h2>

  <table style="width: 100%;">
        
        <tr>
            <td style="font-size: small; font-weight: bold; font-family: 'Arial'; color: black;">
                <asp:Image ID="Image1" runat="server" BorderStyle="Outset" Height="200px" ImageUrl="~/Images/book1.jpg" Width="185px" />
                <br />Giraffe Can't Dance<br /> <br />€12.95  <br />        
                <asp:CheckBox ID="CheckBox1" runat="server" />
            
            </td>
            <td style="font-size: small; font-weight: bold; font-family: 'Arial'; color: black;">
                <asp:Image ID="Image2" runat="server" BorderStyle="Outset" Height="200px" ImageUrl="~/Images/book2.JPG" Width="185px" />
                <br />Possum Magic Baby Book <br /> <br />€24.95 <br /> 
                <asp:CheckBox ID="CheckBox2" runat="server" />
            </td>
            <td style="font-size: small; font-weight: bold; font-family: 'Arial'; color: black;">
                <asp:Image ID="Image3" runat="server" BorderStyle="Outset" Height="200px" ImageUrl="~/Images/book3.JPG" Width="185px" />
                <br />Possum Magic Book <br /> <br />€12.00  <br /> 
                <asp:CheckBox ID="CheckBox3" runat="server" />
            </td>
        </tr>
        
        <tr>
            <td style="font-size: small; font-weight: bold; font-family: 'Arial'; color: black;">
                <asp:Image ID="Image4" runat="server" BorderStyle="Outset" Height="200px" ImageUrl="~/Images/book4.JPG" Width="185px" />
                <br />Edward the Emu<br /> <br />€15.95  <br /> 
                <asp:CheckBox ID="CheckBox4" runat="server" />
                </td>
            
            <td style="font-size: small; font-weight: bold; font-family: 'Arial'; color: black;">
                <asp:Image ID="Image5" runat="server" BorderStyle="Outset" Height="200px" ImageUrl="~/Images/book5.JPG" Width="185px" />
                <br />Guess Who At the Park<br /> <br />€12.95  <br /> 
                <asp:CheckBox ID="CheckBox5" runat="server" />
                </td>
            
            <td style="font-size: small; font-weight: bold; font-family: 'Arial'; color: black;">
                <asp:Image ID="Image6" runat="server" BorderStyle="Outset" Height="200px" ImageUrl="~/Images/book6.JPG" Width="185px" />
                <br />ABC Softcover Book<br /> <br />€14.95  <br /> 
                <asp:CheckBox ID="CheckBox6" runat="server" />
                </td>
        </tr>
          </table>
          
           
    <table>
            <tr>
            <td style="height: 30px"><asp:Label ID="LblEmail" runat="server" Text="Email Address" Font-Size="Medium" Font-Bold="True"></asp:Label></td>
            <td style="height: 30px"><asp:TextBox ID="txtEmail" runat="server" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" 
            runat="server" ControlToValidate="txtEmail" 
            Display="Dynamic"
            ErrorMessage="Email is required" 
            Text="*"
            ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>

            </td>
            </tr>

           <tr>
            <td><asp:Label ID="MobileNumber" runat="server" Text="Mobile Number" Font-Size="Medium" Font-Bold="True"></asp:Label></td>
            <td><asp:TextBox ID="txtMobileNumber" runat="server" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvMobileNumber" 
            runat="server" ControlToValidate="txtMobileNumber" 
            ErrorMessage="Mobile Number is required" 
            Text="*"
            ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>

            </td>
    </tr>
            <tr>
            <td colspan="2">
                <asp:ValidationSummary HeaderText="Please enter below details:" ForeColor="Red" ID="ValidationSummary1" runat="server" Font-Size="Small" />
            </td>

        </tr>

        <tr>
        
            <td colspan="2" align="left">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/reserve.png"/>
        </td>
    </tr>
      </table>

</asp:Content>

