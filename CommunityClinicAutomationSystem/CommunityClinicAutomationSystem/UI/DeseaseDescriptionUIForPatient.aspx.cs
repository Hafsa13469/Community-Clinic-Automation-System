using System;
using CommunityClinicAutomationSystem.BLL;
using ComunityClinicApp.DLL.DAO;

namespace CommunityClinicAutomationSystem.UI
{
    public partial class DeseaseDescriptionUIForPatient : System.Web.UI.Page
    {
        DocotorDbManager aDocotorDbManager=new DocotorDbManager();
        PatientDbManager aPatientDbManager=new PatientDbManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            doctorDropDownList1.DataSource = aDocotorDbManager.LoadDoctorList();
            doctorDropDownList1.DataTextField = "Name";
            doctorDropDownList1.DataValueField = "Id";
            doctorDropDownList1.DataBind();
        }

        protected void RequestButton_Click(object sender, EventArgs e)
        {
            Patient aPatient=new Patient();
            aPatient.NationalId = nationalId.Text;
            aPatient.CenterId = Convert.ToInt32((string) centerId.Text);
            aPatient.Description = descriptionTextBox.Text;
            aPatient.DoctorId = Convert.ToInt32((string) doctorDropDownList1.SelectedValue);
            aPatient.Consulted = 0;
            aPatientDbManager.Save(aPatient);


        }
    }
}