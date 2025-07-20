using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalProject.pages
{

    public partial class existingClub : System.Web.UI.Page
    {
        public string name = "", password = "", errorAnnounce = "", masadName = "masad2.mdf", tblName = "clubTBL", sqlCheck = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["send"] != null)
            {
                name = Request.Form["name"];
                password = Request.Form["password"];
                sqlCheck = $"select * from {tblName} where name=N'{name}' and password='{password}'";
                if (Helper.IsExist(masadName, sqlCheck))
                    Response.Redirect("homepage.html");
                else
                    errorAnnounce = "<h3>שם משתמש או סיסמא שגויים<h3/>";
            }
            else
                errorAnnounce = "";
        }
    }
}

