using System;
using CommunityClinicAutomationSystem.BLL;
using ComunityClinicApp.DLL.DAO;

namespace CommunityClinicAutomationSystem.UI
{
    public partial class DoctorEntry : System.Web.UI.Page
    {DocotorDbManager aDocotorDbManager=new DocotorDbManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Doctor aDoctor=new Doctor();
            aDoctor.CenterId = Convert.ToInt32(Session["Center_LogIn"]);
            //aDoctor.CenterId = Convert.ToInt32((string) centerId.Text);
            aDoctor.Degree = degreeTextBox.Text;
            aDoctor.Name = nameTextBox.Text;
            aDoctor.Specialization = spTextBox.Text;
            string msg=aDocotorDbManager.Save(aDoctor);
            saveText.Text = msg;
        }

    }
}