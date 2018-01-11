using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace picture_upload
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string filename = System.IO.Path.GetFileName(FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~/uploaded") + filename);
                    UploadStatusLabel.Text = "Upload status: File uploaded!";
                }
                catch (Exception ex)
                {
                    UploadStatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }
    }
}