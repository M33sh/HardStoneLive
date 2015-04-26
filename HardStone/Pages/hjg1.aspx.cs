using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HardStone;

namespace HardStone.Pages
{
    public partial class hjg1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnOutside_Click(object sender, EventArgs e)
        {
            Label1.Text = "Button Outside Pressed";
        }
        protected void btn1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Button 1 Pressed";
        }
        protected void btn2_Click(object sender, EventArgs e)
        {
            Label1.Text = "Button 2 Pressed";
        }
    }
}