<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Faq.aspx.cs" Inherits="Pages_Faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    	<link rel="stylesheet" href="style.css" type="text/css" />
    
    <style type="text/css">
        label { float: left;
      display: block;
	  width: 8em;
	  text-align: right;
	  padding-right: 0.5em;
	  font-weight: normal;
      font-size: xx-small;
}
input, textarea { display: block;
              margin-bottom: 1em;
}
#mySubmit { margin-left: 10em; }
    </style>

   
			
			<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		    <style type="text/css">
			.accordion { border: 1px solid #666; border-radius: 5px; padding: 1px; width: 750px; }
			.accord-header { background: #ECFFB6; }
			.accord-header:hover { cursor: pointer; }
			.accord-content { display: none; }

            	</style>
     
    <script type="text/javascript">
        $(document).ready(function () {
            $(".accordion .accord-header").click(function () {
                if ($(this).next("div").is(":visible")) {
                    $(this).next("div").slideUp("slow");
                } else {
                    $(".accordion .accord-content").slideUp("slow");
                    $(this).next("div").slideToggle("slow");
                }
            });
        });
    </script>
    
    <h2 style="font-family: 'Comic Sans MS'; font-size:x-large; color: #CC0000">FAQs</h2>
	   
    <div class="accordion">
    <div class="accord-header">Q1. How do I get to Casela Nature Park?</div>
    <div class="accord-content">Casela Nature Park is situated in Phoenix Park in the City of Dublin. The City is easily accessible from all over Ireland by Bus and Train. You can catch a number of buses from the City Centre and from the central train stations. Casela Nature Park is a 20 minute walk from Heuston Station and from the LUAS Red Line stop. For more details see How to get Here.</div>
    <div class="accord-header">Q2. Is there car parking in Casela Nature Park?</div>
    <div class="accord-content">There is no car parking in Casela Nature Park, although there are car parking spaces around the Phoenix Park which include the Lord’s Walk car park and at the Cricket Grounds car park.
                                The Lord's Walk car park is located beside Dublin Zoo on Chesterfield Avenue and has capacity for approximately 260 cars. The Cricket Grounds car park is located opposite the Park on Chesterfield Avenue and has capacity for approximately 120 cars. Both car parks open daily from 10am.</div>
    <div class="accord-header">Q3. How much time does it take to get around the Park?</div>
    <div class="accord-content">Obviously you can take all day to enjoy the Nature Park. We do suggest though that you need at least three hours to see everything.</div>
    <div class="accord-header">Q4. What is the entrance cost?</div>
    <div class="accord-content">A full adult ticket is €16.80 and child is €12.00. For all other prices, including concessions see the Prices Page.</div>
    <div class="accord-header">Q5. Are you open all year round?</div>
    <div class="accord-content">Yes we only close on Christmas Day and St Stephen's Day.</div>
    <div class="accord-header">Q6. How big is the Park?</div>
    <div class="accord-content">Casela Nature Park now covers 28 hectares.</div>
    <div class="accord-header">Q7. Is Casela Nature Park accessible for people with disabilities?</div>
    <div class="accord-content">Most of Casela Nature Park is accessible for people with disabilities. We have some wheelchairs available at the front gate. See our Accessibility page for full details.</div>
    <div class="accord-header">Q8. Can I bring my dog to the Park?</div>
    <div class="accord-content">Casela Nature Park does not allow dogs into the main area of the park but we do have a sitting area at a location in the Park which provides temporary accommodation for assistance dogs while their owners visit the Park. Assistance dogs will be kept in comfortable accommodation for the duration of the visit and will be provided with fresh drinking water.</div>
    <div class="accord-header">Q9. Can my children come to the Zoo without an adult?</div>
    <div class="accord-content">All children under the age of 16 must be accompanied by an adult for access into the Park.</div>
    <div class="accord-header">Q10. Do you have an Annual Pass Scheme?</div>
    <div class="accord-content">Yes we do. You can become a Casela Nature Park annual pass holder for just €115 for an individual pass or €172 for a family pass. This will not only give you entry for a year to Casela Nature Park but also to Fota Wildlife Park in Cork, Edinburgh Zoo, Colchester, Twycross, Paignton Zoo's in the UK. See more details</div>
    <div class="accord-header">Q11. Is there a cash point at the Zoo?</div>
    <div class="accord-content">We do not have a cash point on site, but we can provide cash-back at the Meerkat Restaurant.</div>
    <div class="accord-header">Q12. Are we allowed to bring in food to have a picnic?</div>
    <div class="accord-content">Casela Nature Park has a number of superb catering outlets that offer a range of delicious hot and cold meals and snacks. If you wish to bring a picnic there are lawns and picnic tables around the Park.</div>
      </div>
  
          
  <div>
      <fieldset style="width: 350px">

        <legend style="font-family: 'Comic Sans MS'; font-size:x-large; color: #CC0000">Send us a Query</legend>
        <table>

            <tr>
                <td style="vertical-align:top">
                    Name:
                    </td>
                <td>
                <asp:TextBox ID="txtName" Width="200px" runat="server"></asp:TextBox>
                </td>
                    
                    <td>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                        ErrorMessage="Name is required"
                        ControlToValidate ="txtName"
                        text="*" ForeColor="Red">
               </asp:RequiredFieldValidator>
                </td>
                 </tr>
                
            <tr>
                 <td style="vertical-align:top">
                    Email:

                </td>
                <td><asp:TextBox ID="txtEmail" Width="200px" runat="server"></asp:TextBox></td>
                
                <td>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                        ErrorMessage="Email is required" 
                        ControlToValidate ="txtEmail"
                        Display="Dynamic"
                        text="*" ForeColor="Red">
                       </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid Email" Display="Dynamic" Font-Size="Small" ControlToValidate="txtEmail" Text="*"></asp:RegularExpressionValidator>
                </td>
                
               
                      </tr>
            <tr>
            <td style="vertical-align:top">
                    Subject:

                </td>

            
                <td><asp:TextBox ID="txtSubject" Width="200px" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvSubject" runat="server" 
                        ErrorMessage="Subject is required"
                        ControlToValidate ="txtSubject"
                        text="*" ForeColor="Red">
               </asp:RequiredFieldValidator>
                </td>
                
                </tr>
                
            <tr>
            <td style="vertical-align:top">
                    Comments:

                </td>

            
                <td><asp:TextBox ID="txtComments" Width="200px" runat="server" Height="80px" TextMode="MultiLine" Rows="5"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvComments" runat="server" 
                        ErrorMessage="Comments are required"
                        ControlToValidate ="txtComments"
                        text="*" ForeColor="Red">
               </asp:RequiredFieldValidator>
                </td>
                
                </tr>
                
                <tr>
                    <td colspan ="3" style="font-size: small">
                    <asp:ValidationSummary ForeColor="Red" font-size="Small" HeaderText="Please enter below informations:" ID="ValidationSummary1" runat="server" />
                    
                    </td>
                </tr>
                
            <tr>

                <td colspan="3">

                    <asp:Label ID="Label1" runat="server" font-bold="true"></asp:Label>
                </td>
            </tr>
               
            <tr>
                <td colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Submit" />

                </td>

            </tr>

       </table>
        
      </fieldset>

      

  </div>
       

</asp:Content>

