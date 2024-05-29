<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RadFinalWeb.Default" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Emma's Small Engine</title>
    <!-- Add your CSS and Bootstrap links here -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            color: #333;
        }

        p {
            color: #666;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            display: inline;
            margin-right: 10px;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome to Emma's Small Engine</h1>
            <p>Explore our products and services to meet your small engine needs.</p>
            <ul>
                <li><a href="/Public_Pages/AboutPage.aspx">About Us</a></li>
                <li><a href="/Public_Pages/ContactPage.aspx">Contact</a></li>
                <li><a href="/Public_Pages/LoginPage.aspx">Login</a></li>
            </ul>
        </div>
    </form>
</body>
</html>