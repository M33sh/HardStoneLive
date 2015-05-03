using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Xml.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using HardStone;


namespace HardStone.Pages
{
    public partial class EventsGV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindData();
            }
        }       

        protected void lbkSelect_Click(object sender, EventArgs e)
        {
            LinkButton btndetails = sender as LinkButton;

            GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer;

            lb1.Text = GridView1.DataKeys[gvrow.RowIndex].Value.ToString();
            lb2.Text = gvrow.Cells[3].Text;
            lb3.Text = gvrow.Cells[4].Text;
            lb4.Text = gvrow.Cells[5].Text;
            lb5.Text = gvrow.Cells[6].Text;
            lb6.Text = gvrow.Cells[7].Text;      
            

            this.ctlModalPopupExtender.Show();
        }


        private String strConnString = ConfigurationManager.ConnectionStrings["HardStoA2bZzPFS7ConnectionString"].ConnectionString;
        

        private void BindData()
        {
            string strQuery = "select Id,Event,Venue,Date,Time,Category" +
                               " from Events";
            SqlCommand cmd = new SqlCommand(strQuery);
            GridView1.DataSource = GetData(cmd);
            GridView1.DataBind();
        }

        private DataTable GetData(SqlCommand cmd)
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    con.Open();
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                    return dt;
                }
            }
        }


        protected void Add(object sender, EventArgs e)
        {
            txtID.ReadOnly = false;
            txtEvent.Text = string.Empty;
            txtVenue.Text = string.Empty;
            txtTime.Text = string.Empty;
            TextDate.Text = string.Empty;
            txtCategory.Text = string.Empty;

            popup.Show();
        }


        protected void Edit(object sender, EventArgs e)
        {
            LinkButton btndetails = sender as LinkButton;
            GridViewRow gvrow1 = (GridViewRow)btndetails.NamingContainer;
            using (GridViewRow row = (GridViewRow)((LinkButton)sender).Parent.Parent)
            {
                txtID.ReadOnly = true;
                txtID.Text = GridView1.DataKeys[gvrow1.RowIndex].Value.ToString();
                txtEvent.Text = row.Cells[3].Text;
                txtVenue.Text = row.Cells[4].Text;
                TextDate.Text = row.Cells[5].Text;
                txtTime.Text = row.Cells[6].Text;
                txtCategory.Text = row.Cells[7].Text;                
                popup.Show();
            }
        }


        protected void Save(object sender, EventArgs e)
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddUpdateEvent";
                cmd.Parameters.AddWithValue("@Id", txtID.Text);
                cmd.Parameters.AddWithValue("@Event", txtEvent.Text);
                cmd.Parameters.AddWithValue("@Venue", txtVenue.Text);
                cmd.Parameters.AddWithValue("@Date", TextDate.Text);
                cmd.Parameters.AddWithValue("@Time", txtTime.Text);
                cmd.Parameters.AddWithValue("@Category", txtCategory.Text);
                GridView1.DataSource = this.GetData(cmd);
                GridView1.DataBind();
            }
        }
    }
}