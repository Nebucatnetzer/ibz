using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_textfile
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {


            // https://stackoverflow.com/questions/1268766/writing-file-to-web-server-asp-net#1268773
            WriteToFile.SaveToFile(UserInputBox.Text, Server.MapPath("~/string_data.txt"));
        }

        protected void UserInputBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ShowUserInputCheckBox_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}