using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace first_webform
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CheckBoxList1.Items.Add(new ListItem("Mehr RAM", "mehr RAM"));
                CheckBoxList1.Items.Add(new ListItem("Mehr CPU", "Mehr CPU"));
                CheckBoxList1.Items.Add(new ListItem("Mehr SSD", "Mehr SSD"));
                CheckBoxList1.Items.Add(new ListItem("Schnelleres Internet", "Schnelleres Internet"));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox2.Text = DateTime.Now.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string LabelString = string.Empty;
            foreach (ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)
                {
                    LabelString += li.Text + ",";
                    Label2.Text = LabelString;
                } 
            }
        }
    }
}