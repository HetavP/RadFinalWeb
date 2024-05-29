using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RadFinalWeb.Orders
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if (GridView2.SelectedDataKey != null)
            {
                string name = DropDownList1.SelectedItem.ToString();
                int selectedID = Convert.ToInt32(GridView2.SelectedDataKey.Value);
                Session["SelectedOrder"] = selectedID;
                Response.Redirect("/Orders/OrderDetails.aspx?Name=" + name);
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DropDownList1.SelectedIndex = -1;
        }
    }
}