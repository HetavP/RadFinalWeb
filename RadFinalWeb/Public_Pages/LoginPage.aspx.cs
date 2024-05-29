using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RadFinalWeb.Public_Pages
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Check the entered username and password
            string enteredUsername = txtUsername.Text.Trim();
            string enteredPassword = txtPassword.Text.Trim();

            // Hardcoded values for demonstration purposes
            string validUsername = "Admin";
            string validPassword = "Admin123";

            // Check if the entered username and password match the valid credentials
            if (enteredUsername == validUsername && enteredPassword == validPassword)
            {
                // Successful login, you can redirect to another page or perform other actions
                Response.Redirect("/HomePage.aspx");
            }
            else
            {
                // Invalid credentials, you can display an error message or perform other actions
                Response.Write("Invalid username or password");
            }
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

    }
}