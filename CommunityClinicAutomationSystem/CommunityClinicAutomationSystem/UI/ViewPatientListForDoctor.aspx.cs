using System;
using CommunityClinicAutomationSystem.BLL;

namespace ComunityClinicApp.UI
{
    public partial class TreatmentServiceUI : System.Web.UI.Page
    {PatientDbManager aPatientDbManager=new PatientDbManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridPatientListView.DataSource = aPatientDbManager.GetAllPatients();
            GridPatientListView.DataBind();
        }
    }
}