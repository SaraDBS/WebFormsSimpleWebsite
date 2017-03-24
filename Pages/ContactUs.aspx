<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Pages_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p>You can contact Casela Nature Park either directly through the form on this page or through any of the following communication channels:</p>

    <p>Phone: +353 (0)1 4748900</p>

    <p>Fax: +353 (0)1 6771660</p>

    <p>Email: info@caselanaturepark.ie</p>

    <p>Address: Phoenix Park, Dublin 8</p>

    <p>Get directions to Casela Nature Park.</p>

   <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d38100.62454797484!2d-6.303749!3d53.355982!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sus!4v1426022714462" width="350" height="350" frameborder="0" style="border:medium outset #FFFFFF"></iframe>
    
        

    <h2 style='font-family: "Comic Sans MS"; font-size: x-large; font-weight: bold; color: #CC0000; '>Register & Become A Member</h2>
    
    <table>
    <tr>
            <td><asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label></td>
            <td><asp:TextBox ID="txtFirstName" runat="server" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstName" 
                runat="server" ControlToValidate="txtFirstName" 
                ErrorMessage="First Name is required" 
                Text="*"
                ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
    </tr>
    <tr>
            <td><asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label></td>
            <td><asp:TextBox ID="txtLastName" runat="server" Width="160px"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvLastName" 
            runat="server" ControlToValidate="txtLastName" 
            ErrorMessage="Last Name is required" 
            Text="*"
            ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
            <td><asp:Label ID="lblAddressLine1" runat="server" Text="Address Line1"></asp:Label></td>
            <td><asp:TextBox ID="txtAddressLine1" runat="server" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAddressLine1" 
            runat="server" ControlToValidate="txtAddressLine1" 
            ErrorMessage="Address Line1 is required" 
            Text="*"
            ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
            <td><asp:Label ID="lblAddressLine2" runat="server" Text="Address Line2"></asp:Label></td>
            <td><asp:TextBox ID="txtAddressLine2" runat="server" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAddressLine2" 
            runat="server" ControlToValidate="txtAddressLine2" 
            ErrorMessage="Address Line2 is required" 
            Text="*"
            ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
    </tr>
    
    <tr>
            <td><asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label></td>
            <td><asp:DropDownList ID="ddlCountry" runat="server" Width="160px" Height="22px">
                    <asp:ListItem Text="Please Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Ireland" Value="Ireland"></asp:ListItem>
                    <asp:ListItem Text="UK" Value="UK"></asp:ListItem>
                    <asp:ListItem Text="USA" Value="USA"></asp:ListItem>
                    <asp:ListItem Text="France" Value="France"></asp:ListItem>
                    <asp:ListItem Text="Spain" Value="Spain"></asp:ListItem>
                    <asp:ListItem Text="Poland" Value="Poland"></asp:ListItem>
                    <asp:ListItem Text="Switzerland" Value="Switzerland"></asp:ListItem>
                    <asp:ListItem Text="Italy" Value="Italy"></asp:ListItem>
                    <asp:ListItem Text="Austria" Value="Austria"></asp:ListItem>
                    <asp:ListItem Text="Germany" Value="Germany"></asp:ListItem>
                    <asp:ListItem Text="Amsterdam" Value="Amsterdam"></asp:ListItem>
                    <asp:ListItem Text="Belgium" Value="Belgium"></asp:ListItem>
                    <asp:ListItem Text="Hungry" Value="Hungry"></asp:ListItem>
                    <asp:ListItem Text="Australia" Value="Australia"></asp:ListItem>
                    <asp:ListItem Text="New Zealand" Value="New Zealand"></asp:ListItem>               
                   
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvCountry" 
             runat="server" ControlToValidate="ddlCountry" 
             ErrorMessage="Country is required" InitialValue="-1" 
             Text="*"
             ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
    </tr>

         <tr>
            <td><asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label></td>
            <td><asp:TextBox ID="txtEmail" runat="server" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" 
            runat="server" ControlToValidate="txtEmail" 
            Display="Dynamic"
            ErrorMessage="Email is required" 
            Text="*"
            ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>

            </td>
    </tr>

        <tr>
            <td colspan="6">
                <asp:ValidationSummary HeaderText="Please enter below details:" ForeColor="Red" ID="ValidationSummary1" runat="server" Font-Size="Small" />
            </td>

        </tr>
        
       <tr>
        <td colspan="6" align="left">
            <asp:ImageButton ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"  ImageUrl="~/Images/SubmitButton.png" />
        </td>
    </tr>
</table>
 
   
</asp:Content>
