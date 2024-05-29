<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="RadFinalWeb.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        form {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
        }

        .navbar {
            background-color: #3498db;
            overflow: hidden;
            border-radius: 5px;
        }

            .navbar a {
                float: left;
                display: block;
                color: #fff;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 16px;
            }

                .navbar a:hover {
                    background-color: #2980b9;
                }

        .link-container {
            margin-top: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 15px;
            background-color: #fff;
        }

            .link-container a {
                display: block;
                margin-bottom: 10px;
                padding: 10px;
                text-decoration: none;
                background-color: #3498db;
                color: #fff;
                border-radius: 5px;
                transition: background-color 0.3s ease;
            }

                .link-container a:hover {
                    background-color: #2980b9;
                }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar">
                <!-- Navigation Links -->
                <a href="HomePage.aspx">Home</a>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Customers/Customer.aspx">Customers</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Employees/Employee.aspx">Employees</asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Orders/Order.aspx">Orders</asp:HyperLink>
                <asp:HyperLink ID="lnkLogout" runat="server" NavigateUrl="~/Default.aspx" Style="float: right;">Logout</asp:HyperLink>
            </div>

            <h2>Welcome to the Home Page</h2>
            <div class="link-container">
                <!-- Link to Page1.aspx -->
                <asp:HyperLink ID="lnkPage1" runat="server" NavigateUrl="~/Customers/Customer.aspx">Go to  Customers Page</asp:HyperLink>

                <br />

                <!-- Link to Page2.aspx -->
                <asp:HyperLink ID="lnkPage2" runat="server" NavigateUrl="~/Employees/Employee.aspx">Go to Employees Page</asp:HyperLink>

                <br />

                <!-- Link to Page3.aspx -->
                <asp:HyperLink ID="lnkPage3" runat="server" NavigateUrl="~/Orders/Order.aspx">Go to Orders Page</asp:HyperLink>
            </div>
        </div>

    </form>
</body>
</html>
