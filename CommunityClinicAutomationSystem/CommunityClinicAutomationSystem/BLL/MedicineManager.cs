using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CommunityClinicAutomationSystem.DAL.DAO;
using CommunityClinicAutomationSystem.DAL.DBGateway;
using ComunityClinicApp.DLL.DAO;

namespace CommunityClinicAutomationSystem.BLL
{
    public class MedicineManager
    {
        private MedicineDBGateway aMedicineDbGateway = new MedicineDBGateway();
        SendMedicineDbGateway aSendMedicineDbGateway=new SendMedicineDbGateway();
        public string SaveMedicine(Medicine aMedicine)
        {
            if (aMedicineDbGateway.UniqueCheker(aMedicine.Name) == null)
            {
                aMedicineDbGateway.SaveMedicine(aMedicine);
                return "Saved";
            }
            else
            {
                return "This Medicine Already Exsist!!!";
            }


        }

        public List<Medicine> GetAllMedicine()
        {
            return aMedicineDbGateway.GetAllMedicine();
        }

        public List<ViewMedicine> GetAllMedicineByCenter(int centerId)
        {
            return aSendMedicineDbGateway.GetAllMedicineByCenter(centerId);
        }
    }

}