using RadFinalProject;
using RadFinalProject.EmmasDataSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RadFinalWeb
{
    public partial class Customer : System.Web.UI.Page
    {
        internal static EmmasDataSet dsEmma;

        static Customer()
        {
            dsEmma = new EmmasDataSet();
            customerLookupTableAdapter daCustomerLookup = new customerLookupTableAdapter();
            customerSearchTableAdapter daCustomerSearch = new customerSearchTableAdapter();
            daCustomerLookup.Fill(dsEmma.customerLookup);
            daCustomerSearch.Fill(dsEmma.customerSearch);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                GridView1.DataSource = dsEmma.customerLookup;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GridView1.SelectedDataKey != null)
            {
                string name = this.GridView1.SelectedRow.Cells[0].Text;
                int selectedID = Convert.ToInt32(GridView1.SelectedDataKey.Value);
                Session["SelectedCustomer"] = selectedID;
                Response.Redirect("/Customers/CustomerDetails.aspx?Name="+name);
            }

        }

        protected void Filter_Click(object sender, EventArgs e)
        {
            if (dsEmma.customerSearch.Count > 0)
            {
                string criteria = "";
                if (TextBox1.Text.Length > 0) criteria = "custFirst Like '%"
                        + this.TextBox1.Text + "%'" + "OR custLast Like '%" + this.TextBox1.Text + "%'";
                if (TextBox2.Text.Length > 0 && criteria.Length > 0)
                    criteria += " And custCity Like '%" + this.TextBox2.Text + "%'";
                else if (TextBox2.Text.Length > 0)
                    criteria += "custCity Like '%" + this.TextBox2.Text + "%'";

                DataRow[] customers = dsEmma.customerSearch.Select(criteria);
                GridView1.Columns.Clear();
                DataTable filteredTable = new DataTable();
                filteredTable.Columns.Add("id", typeof(int));
                filteredTable.Columns.Add("custFullName", typeof(string));

                foreach (DataRow row in customers)
                {
                    DataRow newRow = filteredTable.NewRow();
                    newRow["id"] = row["id"];
                    newRow["custFullName"] = row["custFullName"];
                    filteredTable.Rows.Add(newRow);
                }
                GridView1.Columns.Add(new BoundField { DataField = "custFullName", HeaderText = "Customer Full Name" });
                CommandField selectField = new CommandField();
                selectField.ButtonType = ButtonType.Link;
                selectField.ShowSelectButton = true;
                GridView1.Columns.Add(selectField);
                GridView1.DataSource = filteredTable;
                GridView1.DataBind();
            }

        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}