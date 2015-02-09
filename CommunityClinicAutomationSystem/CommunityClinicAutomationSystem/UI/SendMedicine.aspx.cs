using System;
using CommunityClinicAutomationSystem.BLL;
using CommunityClinicAutomationSystem.DAL.DAO;
using ComunityClinicApp.DLL.DAO;

namespace CommunityClinicAutomationSystem.UI
{
    public partial class SendMedicine : System.Web.UI.Page
    {

        SendMedicineManager aSendMedicineManager = new SendMedicineManager();
        CenterManager aCenterManager = new CenterManager();
        MedicineManager aMedicineManager = new MedicineManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                districtDropDownList.DataSource = aCenterManager.GetAllDistricts();


                districtDropDownList.DataTextField = "Name";
                districtDropDownList.DataValueField = "Id";
                districtDropDownList.DataBind();

                GetThana();
                GetCenter();

                medicineDropDownList.DataSource = aMedicineManager.GetAllMedicine();
                medicineDropDownList.DataBind();

            }
        }

        protected void districtDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetThana();

            GetCenter();
        }
        protected void thanaDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetCenter();
        }

        protected void centerDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        private void GetThana()
        {
            Thana aThana = new Thana();
            aThana.DistrictId = Convert.ToInt32((string)districtDropDownList.SelectedValue);
            thanaDropDownList.DataSource = aCenterManager.FindThana(aThana.DistrictId);
            thanaDropDownList.DataTextField = "Name";
            thanaDropDownList.DataValueField = "Id";
            thanaDropDownList.DataBind();
        }



        private void GetCenter()
        {
            Center aCenter = new Center();
            aCenter.DistrictId = Convert.ToInt32((string)districtDropDownList.SelectedValue);
            aCenter.ThanaId = Convert.ToInt32((string)thanaDropDownList.SelectedValue);
            centerDropDownList.DataSource = aSendMedicineManager.FindCenter(aCenter.DistrictId, aCenter.ThanaId);
            centerDropDownList.DataTextField = "CenterName";
            centerDropDownList.DataValueField = "Id";
            centerDropDownList.DataBind();
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            var nameList = medicineName.Value;
            medicineName.Value = "";
            string[] name = nameList.Split(',');

            var quantityList = medicineQuantity.Value;
            medicineQuantity.Value = "";
            string[] quantity = quantityList.Split(',');

            for (int i = 0; i < name.Length - 1; i++)
            {
                Medicine aMedicine = aSendMedicineManager.FindMedicineByName(name[i]);

                ViewMedicine aViewMedicine = new ViewMedicine();
                aViewMedicine.MedicineId = aMedicine.Id;
                aViewMedicine.CenterId = Convert.ToInt32(centerDropDownList.SelectedValue);
                aViewMedicine.Quantity = Convert.ToInt32(quantity[i]);
                string msg = aSendMedicineManager.SendMedicine(aViewMedicine);
                statusLabel.Text = msg;
            }
        }
    }
}