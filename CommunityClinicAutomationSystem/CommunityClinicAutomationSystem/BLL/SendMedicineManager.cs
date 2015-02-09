using System.Collections.Generic;
using CommunityClinicAutomationSystem.DAL.DAO;
using CommunityClinicAutomationSystem.DAL.DBGateway;
using ComunityClinicApp.DLL.DAO;

namespace CommunityClinicAutomationSystem.BLL
{
    public class SendMedicineManager
    {
        SendMedicineDbGateway aDbGateway = new SendMedicineDbGateway();
        LocationDBGateway aLocationDbGateway = new LocationDBGateway();
        MedicineDBGateway aMedicineDbGateway = new MedicineDBGateway();

        public List<Center> FindCenter(int id, int thanaId)
        {
            return aDbGateway.FindCenter(id, thanaId);
        }

        public Medicine FindMedicineByName(string name)
        {
            return aDbGateway.FindMedicineByName(name);
        }

       

        public string SendMedicine(ViewMedicine aViewMedicine)
        {
            if (aViewMedicine.CenterId != 0)

            {
                ViewMedicine medicine = aDbGateway.FindInCenter(aViewMedicine);
                if (medicine == null)
                {
                    aDbGateway.SendMedicine(aViewMedicine);
                    return "Success";
                }
                else
                {
                    medicine.Quantity = aViewMedicine.Quantity;
                    aDbGateway.UpdateMedicineInCenter(medicine);
                    return "Update Successfully";
                }
            }
            else
            {
                return "Failed";
            }

        }
           
            
        }
    }

