<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="RadFinalWeb.Employees.EmployeeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
        .css-ddl {
            appearance:none;
            border:none;
            pointer-events:none;
        }
                .navbar {
            background-color: #333;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

    </style>

</head>
<body>
            <div class="navbar">
            <asp:HyperLink ID="lnkHomePage" runat="server" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Customers/Customer.aspx">Customers</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Employees/Employee.aspx">Employees</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Orders/Order.aspx">Orders</asp:HyperLink>
            <asp:HyperLink ID="lnkLogout" runat="server" NavigateUrl="~/Default.aspx" Style="float: right;">Logout</asp:HyperLink>
        </div>
        <h1><%=Request.QueryString["Name"]%></h1>

    <form id="form1" runat="server">
        <div>
             <hr />
        </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="ObjectDataSource1">
            <EditItemTemplate>
                id:
                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                <br />
                empFirst:
                <asp:TextBox ID="empFirstTextBox" runat="server" Text='<%# Bind("empFirst") %>' />
                <br />
                empLast:
                <asp:TextBox ID="empLastTextBox" runat="server" Text='<%# Bind("empLast") %>' />
                <br />
                position:
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="css-ddl" DataSourceID="ObjectDataSource2" DataTextField="posName" DataValueField="id" SelectedValue='<%# Bind("posID") %>'>
                </asp:DropDownList>
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                empFirst:
                <asp:TextBox ID="empFirstTextBox" runat="server" Text='<%# Bind("empFirst") %>' />
                <br />
                empLast:
                <asp:TextBox ID="empLastTextBox" runat="server" Text='<%# Bind("empLast") %>' />
                <br />
                posID:
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                empFirst:
                <asp:Label ID="empFirstLabel" runat="server" Text='<%# Bind("empFirst") %>' />
                <br />
                empLast:
                <asp:Label ID="empLastLabel" runat="server" Text='<%# Bind("empLast") %>' />
                <br />
                position:
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource2" DataTextField="posName" DataValueField="id" SelectedValue='<%# Bind("posID") %>' CssClass="css-ddl">
                </asp:DropDownList>
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;
            </ItemTemplate>
        </asp:FormView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="RadFinalProject.EmmasDataSetTableAdapters.employeeTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="empFirst" Type="String" />
                <asp:Parameter Name="empLast" Type="String" />
                <asp:Parameter Name="posID" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Param1" SessionField="SelectedEmployee" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="empFirst" Type="String" />
                <asp:Parameter Name="empLast" Type="String" />
                <asp:Parameter Name="posID" Type="Int32" />
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <p>
        <asp:Button ID="btnBack" runat="server" OnClick="Back_Click" Text="Back" />
        </p>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="RadFinalProject.EmmasDataSetTableAdapters.positionTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="posName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="posName" Type="String" />
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>
