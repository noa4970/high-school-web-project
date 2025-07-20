using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalProject.pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string club = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Form["send"] != null)
            {
                club = Request.Form["club"];
                if (club == "exist")
                    Response.Redirect("existingClub.aspx");
                else
                    Response.Redirect("newClub.aspx");
            }
        }
    }
}