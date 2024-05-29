using RadFinalProject.EmmasDataSetTableAdapters;
using RadFinalProject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RadFinalWeb.Employees
{
    public partial class Employee : System.Web.UI.Page
    {
        internal static EmmasDataSet dsEmma;

        static Employee()
        {
            dsEmma = new EmmasDataSet();
            employeeLookupTableAdapter daEmployeeLookup = new employeeLookupTableAdapter();
            employeeSearchTableAdapter daEmployeeSearch = new employeeSearchTableAdapter();
            daEmployeeLookup.Fill(dsEmma.employeeLookup);
            daEmployeeSearch.Fill(dsEmma.employeeSearch);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                gvEmployee.DataSource = dsEmma.employeeLookup;
                gvEmployee.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (gvEmployee.SelectedDataKey != null)
            {
                string name = this.gvEmployee.SelectedRow.Cells[1].Text;
                int selectedID = Convert.ToInt32(gvEmployee.SelectedDataKey.Value);
                Session["SelectedEmployee"] = selectedID;
                Response.Redirect("/Employees/EmployeeDetails.aspx?Name=" + name);
            }

        }

        protected void Filter_Click1(object sender, EventArgs e)
        {
            if (dsEmma.employeeSearch.Count > 0)
            {
                string criteria = "";
                if (!string.IsNullOrEmpty(TextBox1.Text))
                {
                    criteria = "empFirst LIKE '%" + TextBox1.Text + "%' OR empLast LIKE '%" + TextBox1.Text + "%'";
                }

                if (DropDownList1.SelectedIndex > 0)
                {
                    if (!string.IsNullOrEmpty(criteria))
                    {
                        criteria += " AND ";
                    }
                    criteria += "posID = " + DropDownList1.SelectedValue;
                }

                DataRow[] employees = dsEmma.employeeSearch.Select(criteria);
                gvEmployee.Columns.Clear();
                DataTable filteredTable = new DataTable();
                filteredTable.Columns.Add("id", typeof(int));
                filteredTable.Columns.Add("empFullName", typeof(string));

                foreach (DataRow row in employees)
                {
                    DataRow newRow = filteredTable.NewRow();
                    newRow["id"] = row["id"];
                    newRow["empFullName"] = row["empFullName"];
                    filteredTable.Rows.Add(newRow);
                }
                gvEmployee.Columns.Add(new BoundField { DataField = "empFullName", HeaderText = "Employee Full Name" });
                CommandField selectField = new CommandField();
                selectField.ButtonType = ButtonType.Link;
                selectField.ShowSelectButton = true;
                gvEmployee.Columns.Add(selectField);
                gvEmployee.DataSource = filteredTable;
                gvEmployee.DataBind();
            }

        }

        protected void Clear_Click1(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            DropDownList1.SelectedIndex = -1;
        }
    }
}
