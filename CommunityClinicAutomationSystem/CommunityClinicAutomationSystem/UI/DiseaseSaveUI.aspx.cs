using System;
using CommunityClinicAutomationSystem.BLL;
using CommunityClinicAutomationSystem.DAL.DAO;

namespace CommunityClinicAutomationSystem.UI
{
    public partial class DiseaseSaveUI : System.Web.UI.Page
    {
        DiseaseManager aDiseaseManager;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void saveDiseaseButton_Click(object sender, EventArgs e)
        {
            aDiseaseManager = new DiseaseManager();
            Disease aDisease = new Disease();
            aDisease.DiseaseName = diseaseNameTextBox.Text;
            aDisease.Description = descriptionTextBox.Text;
            aDisease.TreatmentProcedure = treatmentProcedureTextBox.Text;
            aDisease.PreferredDrugs = preferredDrugsTextBox.Text;
            string msg = aDiseaseManager.Save(aDisease);
            messageLabel.Text = msg;
        }
    }
}