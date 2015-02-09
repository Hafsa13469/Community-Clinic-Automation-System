using System;
using CommunityClinicAutomationSystem.BLL;
using CommunityClinicAutomationSystem.DAL.DAO;

namespace CommunityClinicAutomationSystem.UI
{
    public partial class DisplayCodeAndPasswordUI : System.Web.UI.Page
    {
        CenterManager aCenterManager = new CenterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            Center aCenter = aCenterManager.Find(id);
            nameLabel.Text = "Center Name: "+ aCenter.CenterName;
            aCenter = aCenterManager.FindCodeAndPasswordByCenterId(id);
            codeLabel.Text = "Center Code: " + aCenter.Code;
            passwordLabel.Text = "Password: " + aCenter.Password;
        }
    }
}