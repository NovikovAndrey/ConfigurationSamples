using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConfigurationSample3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void ReadButton_Click(object sender, EventArgs e)
        {
            string path = @"system.web/customerErrors";
            CustomErrorsSection section = WebConfigurationManager.GetSection(path) as CustomErrorsSection;
            foreach(CustomError item in section.Errors)
            {
                Label1.Text += item.StatusCode;
                Label1.Text += " ";
                Label1.Text += item.Redirect;
                Label1.Text += "<br/>";
            }
        }
        protected void AddButton_Click(object sender, EventArgs e)
        {
            Configuration cfg = WebConfigurationManager.OpenWebConfiguration("/");
            CustomErrorsSection section = cfg.GetSection("system.web/customErrors") as CustomErrorsSection;
            CustomError tempErorr = new CustomError(501, "~/not_implemented.aspx");
            section.Errors.Add(tempErorr);
            cfg.Save();
        }
    }
}