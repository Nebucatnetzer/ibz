using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2017_12_02_states
{
    public partial class SecondPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonSecondPage_Click(object sender, EventArgs e)
        {
            TextBoxSecondPage.Text = Session["TextBoxDefault"].ToString();
        }
    }
}