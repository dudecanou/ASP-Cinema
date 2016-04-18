using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjLab5Donnee
{
    public partial class InsererFilm: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            FileUpload FileUploadControl = (FileUpload)DetailsView1.FindControl("FileUpload1");
            if (FileUploadControl.HasFile)
            {
                try
                {
                    string filename = System.IO.Path.GetFileName(FileUploadControl.FileName);
                    FileUploadControl.SaveAs(Server.MapPath("~/images/") + filename);
                    e.Values["Image"] = filename;
                }
                catch (Exception ex)
                {
                    ;
                }
            }
        }
    }
}