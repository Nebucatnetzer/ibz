using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace first_webform
{
    public partial class titles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if (!Page.IsPostBack)
            {

                for (int i = 0; i < 6; i++)
                {
                    var h1 = new HtmlGenericControl("h1");
                    string chapter_number = Convert.ToString(i + 1);
                    h1.InnerHtml = "Kapitel " + chapter_number;
                    form1.Controls.Add(h1);

                    for (int j = 0; j < 3 ; j++)
                    {

                        var h2 = new HtmlGenericControl("h2");
                        string sub_chapter_number = Convert.ToString(j + 1);
                        h2.InnerHtml = "Kapitel " + chapter_number + "." + sub_chapter_number;
                        form1.Controls.Add(h2);
                    }
                }
                
            }
        }
    }
}