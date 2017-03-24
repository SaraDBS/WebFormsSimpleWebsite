<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ArtistPaints.aspx.cs" Inherits="Pages_ArtistPaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <h2 style='font-weight: bold; font-family: "Comic Sans MS"; color: #CC0000; font-size: x-large;'>Artist Paints</h2>

 <table style="width: 100%;">
        
        <tr>
            <td style="font-size: small; font-weight: bold; font-family: 'Arial'; color: black;">
                <asp:Image ID="Image1" runat="server" BorderStyle="Outset" Height="200px" ImageUrl="~/Images/paint1.jpg" Width="185px" />
                <br /> Shooting Star<br /> <br />€150.00  <br />        
                <asp:CheckBox ID="CheckBox1" runat="server" />
            
            </td>
            <td style="font-size: small; font-weight: bold; font-family: 'Arial'; color: black;">
                <asp:Image ID="Image2" runat="server" BorderStyle="Outset" Height="200px" ImageUrl="~/Images/paint2.JPG" Width="185px" />
                <br />Tango Art<br /> <br />€115.00 <br /> 
                <asp:CheckBox ID="CheckBox2" runat="server" />
            </td>
            <td style="font-size: small; font-weight: bold; font-family: 'Arial'; color: black;">
                <asp:Image ID="Image3" runat="server" BorderStyle="Outset" Height="200px" ImageUrl="~/Images/paint3.JPG" Width="185px" />
                <br />Southern Star<br /> <br />€120.00  <br /> 
                <asp:CheckBox ID="CheckBox3" runat="server" />
            </td>
        </tr>
        
        <tr>
            <td style="font-size: small; font-weight: bold; font-family: 'Arial'; color: black;">
                <asp:Image ID="Image4" runat="server" BorderStyle="Outset" Height="200px" ImageUrl="~/Images/paint4.JPG" Width="185px" />
                <br />Mauve on Over <br /> <br />€135.00  <br /> 
                <asp:CheckBox ID="CheckBox4" runat="server" />
                </td>
            
            <td style="font-size: small; font-weight: bold; font-family: 'Arial'; color: black;">
                <asp:Image ID="Image5" runat="server" BorderStyle="Outset" Height="200px" ImageUrl="~/Images/paint5.JPG" Width="185px" />
                <br />Tinkerbelle<br /> <br />€112.00  <br /> 
                <asp:CheckBox ID="CheckBox5" runat="server" />
                </td>
            
            <td style="font-size: small; font-weight: bold; font-family: 'Arial'; color: black;">
                <asp:Image ID="Image6" runat="server" BorderStyle="Outset" Height="200px" ImageUrl="~/Images/paint6.JPG" Width="185px" />
                <br />Light Way<br /> <br />€145.00  <br /> 
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

