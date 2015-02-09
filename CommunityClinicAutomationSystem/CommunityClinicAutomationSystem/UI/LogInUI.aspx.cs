using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommunityClinicAutomationSystem.BLL;

namespace CommunityClinicAutomationSystem.UI
{
    public partial class LogInUI : System.Web.UI.Page
    {
        CenterManager aCenterManager = new CenterManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logInButton_Click(object sender, EventArgs e)
        {
            int aLogIn = aCenterManager.Find(centerCodeTextBox.Text, passwordTextBox.Text);

            if (aLogIn != 0)
            {
                Session["Center_LogIn"] = aLogIn;
                Response.Redirect("DoctorEntry.aspx");
            }
        else
            {
                msgLabel.Text = "Incorrect Center Code or Password!!!";
               
             }
        }
    }
}