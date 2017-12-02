using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2017_12_02_states
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Session["Username"] = HttpContext.Current.User.Identity.Name;      
            }
            LabelUsername.Text = Session["Username"].ToString();
        }
    }
}