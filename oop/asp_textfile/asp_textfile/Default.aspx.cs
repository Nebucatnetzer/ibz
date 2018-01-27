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

        public delegate void DelText();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {


            DelText dt;
            string filePath = Server.MapPath("~/string_data.txt");
            dt = WriteToFile.Write;
            dt(UserInputBox.Text, filePath);
            if (UserInputBox_Checked) {
                dt += ReturnTextFile.Read(filePath);
            }

        }

        protected void UserInputBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ShowUserInputCheckBox_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
