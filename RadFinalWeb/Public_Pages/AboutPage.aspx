<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutPage.aspx.cs" Inherits="RadFinalWeb.Public_Pages.AboutPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us - Emma Small Engine Company</title>
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
            <h2>About Emma Small Engine Company</h2>

            <p>
                Emma Small Engine Company is a leading provider of high-quality small engines for various applications.
                With a commitment to excellence and customer satisfaction, we have been serving our customers for over [XX] years.
            </p>

            <p>
                <strong>Our Mission:</strong> To deliver reliable and efficient small engines that power the equipment you depend on.
            </p>

            <p>
                <strong>Company Values:</strong>
                <ul>
                    <li>Quality - We uphold the highest standards in the production of our small engines.</li>
                    <li>Customer Satisfaction - Your success is our priority, and we strive to exceed your expectations.</li>
                    <li>Innovation - Embracing new technologies to improve our products and services.</li>
                </ul>
            </p>

            <p>
                Explore our website to learn more about our products, meet our dedicated team, and discover how Emma Small Engine Company can meet your needs.
            </p>
            <div class="back-button">
                <asp:Button ID="btnBack" runat="server" OnClick="Back_Click" Text="Go Back" />
            </div>
        </div>
    </form>
</body>
</html>
