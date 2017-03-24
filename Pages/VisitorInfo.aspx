<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VisitorInfo.aspx.cs" Inherits="Pages_VisitorInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 style="font-family: 'Comic Sans MS'; font-size: large; font-weight: bold; color: #CC0000">Discover a world full of fun and adventure!</h2>

    <p>Casela Nature Park is much more than a fun-filled, stimulating day out for all the family... it’s a place to learn about wild animals, especially those which are endangered. The Park is a registered charity – your visit will help maintain Casela Nature Park to a high standard, improve the Park and contribute to conservation programmes.  

    Located in the Phoenix Park in the heart of Dublin city, Casela Nature Park is Ireland’s most popular family attraction, and welcomed over one million visitors last year. 

    As one of the world’s oldest, yet popular parks, the 28 hectare park in the heart of Dublin is home to some 400 animals in safe environment where education and conservation combine for an exciting and unforgettable experience!</p>

    <h2 style="font-family: 'Comic Sans MS'; font-size: large; font-weight: bold; color: #CC0000">Open Daily 9am - 5pm</h2>

    <h2 style='font-size: x-large; font-weight: bold; font-family: "Comic Sans MS"; font-style: normal; font-variant: normal; color: #CC0000'>Book your Visit</h2>
     <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/tiger3.jpg" />
    <p>Avoid the queues by booking your entry tickets online now - it's quick, easy and secure. Your booking number will be emailed to you upon completion - print it, present it at the ticket desk and enjoy your day!</p>

    <table>
    <tr>
            <td style="width: 182px"><asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label></td>
            <td style="width: 347px"><asp:TextBox ID="txtFirstName" runat="server" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstName" 
                runat="server" ControlToValidate="txtFirstName" 
                ErrorMessage="First Name is required"
                Text="*"
                ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator></td>
                
    </tr>
    <tr>
            <td style="width: 182px"><asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label></td>
            <td style="width: 347px"><asp:TextBox ID="txtLastName" runat="server" Width="160px"></asp:TextBox>
           <asp:RequiredFieldValidator ID="rfvLastName" 
            runat="server" ControlToValidate="txtLastName" 
            ErrorMessage="Last Name is required" 
            Text="*"
            ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>

            </td>
    </tr>
    <tr>
            <td style="width: 182px"><asp:Label ID="lblAddressLine1" runat="server" Text="Address Line1"></asp:Label></td>
            <td style="width: 347px"><asp:TextBox ID="txtAddressLine1" runat="server" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAddressLine1" 
            runat="server" ControlToValidate="txtAddressLine1" 
            ErrorMessage="Address Line1 is required" 
            Text="*"
            ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
            <td style="width: 182px"><asp:Label ID="lblAddressLine2" runat="server" Text="Address Line2"></asp:Label></td>
            <td style="width: 347px"><asp:TextBox ID="txtAddressLine2" runat="server" Width="159px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAddressLine2" 
            runat="server" ControlToValidate="txtAddressLine2" 
            ErrorMessage="Address Line2 is required" 
            Text="*"
            ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
    </tr>
    
    <tr>
            <td style="width: 182px"><asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label></td>
            <td style="width: 347px"><asp:DropDownList ID="ddlCountry" runat="server" Width="160px">
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
            <td><asp:TextBox ID="txtEmail" runat="server" Width="159px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" 
            runat="server" ControlToValidate="txtEmail" 
            Display="Dynamic"
            ErrorMessage="Email is required" 
            Text="*"
            ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>

    <tr>
            <td style="width: 182px"><asp:Label ID="lblTicketType" runat="server" Text="Ticket Type"></asp:Label></td>
            <td style="width: 347px"><asp:DropDownList ID="ddlTicketType" runat="server" Width="161px">
                <asp:ListItem Text="Please Select" Value="-1"></asp:ListItem>
                <asp:ListItem Text="Single Child €12.00" Value="Single Child €12.00"></asp:ListItem>
                <asp:ListItem Text="Single Adult €16.00" Value="Single Adult €16"></asp:ListItem>
                <asp:ListItem Text="Student €13.00" Value="Student €13.00"></asp:ListItem>
                <asp:ListItem Text="Family €47.00" Value="Family €47.00"></asp:ListItem>
                <asp:ListItem Text="Group of 10 €140.00" Value="Group of 10 €140.00"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvTicketType" 
            runat="server" ControlToValidate="ddlTicketType" 
            ErrorMessage="Ticket Type is required" 
            Text="*"
            ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
    </tr>
        <tr>
            <td style="width: 182px"><asp:Label ID="LblDate" runat="server" Text="Date"></asp:Label></td>
            <td style="width: 347px"><asp:TextBox ID="txtDate" runat="server" Width="120px"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" Height="27px" ImageUrl="~/Images/calendar.jpg" OnClick="ImageButton1_Click" Width="29px" />
            <asp:RequiredFieldValidator ID="rfvDate" 
            runat="server" ControlToValidate="txtDate" 
            ErrorMessage="Date is required" 
            Text="*"
            ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged" NextMonthText="&gt;&gt;" PrevMonthText="&lt;&lt;" DayNameFormat="Shortest" CellPadding="1">
                <DayHeaderStyle BackColor="#99CCCC" Height="1px" ForeColor="#336666" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" BorderColor="#3366CC" BorderWidth="1px" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>

        </tr>

        
        <tr>
            <td colspan="8">
                <asp:ValidationSummary HeaderText="Please enter below details:" ForeColor="Red" ID="ValidationSummary1" runat="server" Font-Size="Small" />
            </td>

        </tr>


    <tr>
        <td colspan="8" align="left" style="height: 31px">
            <asp:ImageButton ID="btnBooknow" runat="server" Text="Book Now" OnClick="btnBooknow_Click" BorderStyle="None" Font-Bold="True" Height="51px" ImageUrl="~/Images/booknow.png" />
         

          </td>
    </tr>
</table>

</asp:Content>

