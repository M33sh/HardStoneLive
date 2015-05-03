using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HardStone;

namespace HardStone.Venues
{
    public partial class Listings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnOutside_Click(object sender, EventArgs e)
        {
            Label1.Text = "Returning Home";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( 'http://hardstonelive.azurewebsites.net/', null, 'height=700,width=760,status=yes,toolbar=yes,scrollbars=yes,menubar=yes,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);

        }
        protected void btn1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Visit Maine!";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( 'http://www.visitmaine.com', null, 'height=700,width=760,status=yes,toolbar=yes,scrollbars=yes,menubar=yes,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
                        
        }
        protected void btn2_Click(object sender, EventArgs e)
        {
            Label1.Text = "Visit New Hampshire!";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( 'http://www.visitnewhampshire.com', null, 'height=700,width=760,status=yes,toolbar=yes,scrollbars=yes,menubar=yes,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);

        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            Label1.Text = "Visit Pennsylvania!";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( 'http://www.visitpa.com', null, 'height=700,width=760,status=yes,toolbar=yes,scrollbars=yes,menubar=yes,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);

        }
        protected void btn4_Click(object sender, EventArgs e)
        {
            Label1.Text = "Visit New York!";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( 'http://www.iloveny.com', null, 'height=700,width=760,status=yes,toolbar=yes,scrollbars=yes,menubar=yes,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);

        }

        protected void btn5_Click(object sender, EventArgs e)
        {
            Label1.Text = "Visit Virginia!";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( 'http://www.virginia.org', null, 'height=700,width=760,status=yes,toolbar=yes,scrollbars=yes,menubar=yes,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);

        }
        protected void btn6_Click(object sender, EventArgs e)
        {
            Label1.Text = "Visit North Carolina!";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( 'http://www.visitnc.com', null, 'height=700,width=760,status=yes,toolbar=yes,scrollbars=yes,menubar=yes,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);

        }

        protected void btn7_Click(object sender, EventArgs e)
        {
            Label1.Text = "Visit Georgia!";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( 'http://www.exploregeorgia.org', null, 'height=700,width=760,status=yes,toolbar=yes,scrollbars=yes,menubar=yes,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);

        }
        protected void btn8_Click(object sender, EventArgs e)
        {
            Label1.Text = "Visit Florida!";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( 'http://www.visitflorida.com', null, 'height=700,width=760,status=yes,toolbar=yes,scrollbars=yes,menubar=yes,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);

        }
        
    }
}