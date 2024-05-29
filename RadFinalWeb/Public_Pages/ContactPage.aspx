<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="RadFinalWeb.Public_Pages.ContactPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us - Emma Small Engine Company</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        form {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
        }

        p {
            color: #555;
        }

        .back-button {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Contact Emma Small Engine Company</h2>
            
            <p>
                Thank you for your interest in Emma Small Engine Company. You can reach out to us through the following contact details:
            </p>

            <p>
                <strong>Email:</strong> info@emmaengine.com<br />
                <strong>Phone:</strong> (123) 456-7890<br />
                <strong>Address:</strong> 123 Engine Street, Smallville
            </p>

            <!-- Additional contact information or a contact form can be added here -->

            <!-- Back button -->
            <div class="back-button">
                <asp:Button ID="btnBack" runat="server" OnClick="Back_Click" Text="Go Back" />
            </div>
        </div>
    </form>
</body>
</html>
