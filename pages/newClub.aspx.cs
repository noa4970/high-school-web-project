using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalProject.pages
{


    public partial class newClub : System.Web.UI.Page
    {
        public string name = "", password = "", birthDate = "", mail = "", masadName = "masad2.mdf", tblName = "clubTbl", sqlCheck = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["send"] != null)
            {
                name = Request.Form["userName"];
                password = Request.Form["password"];
                birthDate = Request.Form["birthDate"];
                mail = Request.Form["mail"];
                sqlCheck = $"insert into {tblName} values (N'{name}','{password}','{birthDate}','{mail}')";
                Helper.DoQuery(masadName, sqlCheck);

                Response.Redirect("homepage.html");
            }
        }
    }
}
