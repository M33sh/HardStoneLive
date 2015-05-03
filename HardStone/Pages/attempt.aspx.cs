using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using HardStone;

namespace HardStone.App_Code
{
    public partial class attempt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("Roll", System.Type.GetType("System.Int64"));
                dt.Columns.Add("Name");
                dt.Columns.Add("Email");

                DataRow oItem = dt.NewRow();
                oItem[0] = "1000";
                oItem[1] = "Shawpnendu";
                oItem[2] = "Shawpnendu@gmail.com";
                dt.Rows.Add(oItem);

                oItem = dt.NewRow();
                oItem[0] = "2000";
                oItem[1] = "Bimalandu";
                oItem[2] = "Bimalandu@gmail.com";
                dt.Rows.Add(oItem);

                oItem = dt.NewRow();
                oItem[0] = "3000";
                oItem[1] = "Purnendu";
                oItem[2] = "Purnendu@gmail.com";
                dt.Rows.Add(oItem);

                //GridView1.DataSource = dt;
                //GridView1.DataBind();
                ViewState["dt"] = dt;
            }
        }

        //protected void btnInsert_Click(object sender, EventArgs e)
        //{
        //    int id = Convert.ToInt32(Request.QueryString["ObjectID"]);
        //    Events ne = new Events();

        //    id.Text = new tb1.Text

        //}
    }
}