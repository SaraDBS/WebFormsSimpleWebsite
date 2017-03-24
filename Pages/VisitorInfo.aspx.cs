using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data;
using System.Data.SqlClient;


public partial class Pages_VisitorInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtDate.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }

    static void Main()
    {
        string dateString = "Mon 16 Jun 8:30 AM 2008"; // Modified from MSDN
        string format = "ddd dd MMM h:mm tt yyyy";

        DateTime dateTime = DateTime.ParseExact(dateString, format,
        CultureInfo.InvariantCulture);
        Console.WriteLine(dateTime);
    }

    protected void btnBooknow_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            //1 Declare variable to store connection string
            string dbConnection = "Data Source=SRV09\\MSSQLSTUDENT;Initial Catalog=10033717;Integrated Security=true";

            //2 Declare a SqlConnection object
            SqlConnection sqlConnection;

            //3 Instantiate SqlConnection object with connection string
            sqlConnection = new SqlConnection(dbConnection);

            //4 Open Connection
            sqlConnection.Open();

            //5 Declare Command object
            SqlCommand sqlCommand = new SqlCommand();

            //6 Set Command Connection
            sqlCommand.Connection = sqlConnection;

            //7 Set Command Text
            sqlCommand.CommandText = "INSERT INTO Booking (FirstName, LastName, AddressLine1, AddressLine2, Country, Email, TicketType, Date) VALUES (@FirstName, @LastName, @AddressLine1, @AddressLine2, @Country, @Email, @TicketType, @Date)";

            //8 Declare Parameters and their types
            sqlCommand.Parameters.Add("@FirstName", SqlDbType.VarChar, 50);
            sqlCommand.Parameters.Add("@LastName", SqlDbType.VarChar, 50);
            sqlCommand.Parameters.Add("@AddressLine1", SqlDbType.VarChar, 50);
            sqlCommand.Parameters.Add("@AddressLine2", SqlDbType.VarChar, 50);
            sqlCommand.Parameters.Add("@Country", SqlDbType.VarChar, 50);
            sqlCommand.Parameters.Add("@Email", SqlDbType.VarChar, 50);
            sqlCommand.Parameters.Add("@TicketType", SqlDbType.VarChar, 50);
            sqlCommand.Parameters.Add("@Date", SqlDbType.Date);


            //9 Set Command Parameters Values
            sqlCommand.Parameters["@FirstName"].Value = txtFirstName.Text;
            sqlCommand.Parameters["@LastName"].Value = txtLastName.Text;
            sqlCommand.Parameters["@AddressLine1"].Value = txtAddressLine1.Text;
            sqlCommand.Parameters["@AddressLine2"].Value = txtAddressLine2.Text;
            sqlCommand.Parameters["@Country"].Value = ddlCountry.Text;
            sqlCommand.Parameters["@Email"].Value = txtEmail.Text;
            sqlCommand.Parameters["@TicketType"].Value = ddlTicketType.Text;
            sqlCommand.Parameters["@Date"].Value = txtDate.Text;

                       
              //10 Execute Command
            sqlCommand.ExecuteNonQuery();
                         
                      
          
            //11 Close Connection
            sqlConnection.Close();

            
             

            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "jsAlert", "alert('Successfully Booked');", true);
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "jsClearForm", "document.getElementById('form1').reset();", true);

            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtAddressLine1.Text = "";
            txtAddressLine2.Text = "";
            ddlCountry.Text = "-1";
            txtEmail.Text = "";
            ddlTicketType.Text = "-1";
            txtDate.Text = "";

        }

    }
 }