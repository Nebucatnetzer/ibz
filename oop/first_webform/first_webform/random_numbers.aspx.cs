using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace first_webform
{
    public partial class random_numbers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if (!Page.IsPostBack)
            {
            int iterations = 10;
            Random rnd = new Random();

                for (int i = 0; i < iterations; i++)
                {
                    var paragraph = new HtmlGenericControl("p");

                    int random_number = rnd.Next(1, 101);
                    paragraph.InnerHtml = Convert.ToString(random_number);
                    form1.Controls.Add(paragraph);
                }
            }
        }
    }
}