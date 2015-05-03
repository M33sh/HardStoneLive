using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HardStone.Pages
{
    public partial class Events : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Add(object sender, EventArgs e)
        {
            txtCustomerID.ReadOnly = false;
            txtCustomerID.Text = string.Empty;
            txtContactName.Text = string.Empty;
            txtCompany.Text = string.Empty;
            popup.Show();
        }



        protected void Edit(object sender, EventArgs e)
        {
            using (GridViewRow row = (GridViewRow)((LinkButton)sender).Parent.Parent)
            {
                txtCustomerID.ReadOnly = true;
                txtCustomerID.Text = row.Cells[0].Text;
                txtContactName.Text = row.Cells[1].Text;
                txtCompany.Text = row.Cells[2].Text;
                popup.Show();
            }
        }


      




    }
}