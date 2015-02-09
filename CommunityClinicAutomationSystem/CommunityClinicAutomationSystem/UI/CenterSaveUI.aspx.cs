using System;
using CommunityClinicAutomationSystem.BLL;
using CommunityClinicAutomationSystem.DAL.DAO;

namespace CommunityClinicAutomationSystem.UI
{
    public partial class CenterSaveUI : System.Web.UI.Page
    {
        CenterManager aCenterManager = new CenterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                districtDropDown.DataSource = aCenterManager.GetAllDistricts();
                districtDropDown.DataTextField = "Name";
                districtDropDown.DataValueField = "Id";
                districtDropDown.DataBind();

                GetThana();
            }
        }
        protected void districtDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetThana();
        }

        private void GetThana()
        {
            Thana aThana = new Thana();
            aThana.DistrictId = Convert.ToInt32(districtDropDown.SelectedValue);
            thanaDropDown.DataSource = aCenterManager.FindThana(aThana.DistrictId);
            thanaDropDown.DataTextField = "Name";
            thanaDropDown.DataValueField = "Id";
            thanaDropDown.DataBind();
        }


        protected void centerSaveButton_Click(object sender, EventArgs e)
        {
            Center aCenter = new Center();
            aCenter.CenterName = centerNameText.Text;
            aCenter.DistrictId = Convert.ToInt32(districtDropDown.SelectedValue);
            aCenter.ThanaId = Convert.ToInt32(thanaDropDown.SelectedValue);

            int centerId = Convert.ToInt32(aCenterManager.Save(aCenter));
            if (centerId > 0)
            {
                Response.Redirect("DisplayCodeAndPasswordUI.aspx?Id=" + centerId);
            }
            else
            {
                messageLabel.Text = "Could not save center!";
            }
        }
    }
}