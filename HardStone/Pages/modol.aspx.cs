using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HardStone.Pages
{
    public partial class modol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbkSelect_Click(object sender, EventArgs e)
        {
            LinkButton btndetails = sender as LinkButton;

            GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer;

            lblID.Text = gvProducts.DataKeys[gvrow.RowIndex].Value.ToString();
            lblProductName.Text = gvrow.Cells[2].Text;
            lblProductNumber.Text = gvrow.Cells[3].Text;
            lblPrice.Text = gvrow.Cells[4].Text;

            this.ctlModalPopupExtender.Show();
        }
    }
}