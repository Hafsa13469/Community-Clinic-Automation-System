using System;
using CommunityClinicAutomationSystem.BLL;
using CommunityClinicAutomationSystem.DAL.DAO;

namespace CommunityClinicAutomationSystem.UI
{
    public partial class MedicineStockReort : System.Web.UI.Page
    {
        MedicineManager aMedicineManager = new MedicineManager();
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                int centerId = Convert.ToInt32(Session["Center_LogIn"]);
                ReportGridView.DataSource = aMedicineManager.GetAllMedicineByCenter(centerId);
                ReportGridView.DataBind();
            }

        }
    }
}