using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommunityClinicAutomationSystem.BLL;
using CommunityClinicAutomationSystem.DAL.DAO;

namespace CommunityClinicAutomationSystem.UI
{
    public partial class MedicineSetupUI : System.Web.UI.Page
    {
       private MedicineManager aMedicineManager = new MedicineManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Medicine aMedicine = new Medicine();
            aMedicine.Name = genericNameTextBox.Text;
            aMedicine.Power = powerTextBox.Text;
            aMedicine.Type = typeDropDownList.SelectedValue;

            string mssg = aMedicineManager.SaveMedicine(aMedicine);
            msgLabel.Text = mssg;
        }
    }
}