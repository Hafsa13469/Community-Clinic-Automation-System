using System.Collections.Generic;
using CommunityClinicAutomationSystem.DAL.DBGateway;
using ComunityClinicApp.DLL.DAO;

namespace CommunityClinicAutomationSystem.BLL
{
    public class DocotorDbManager
    {DoctorDBGateways aDoctorDbGateways=new DoctorDBGateways();

        public string Save(Doctor aDoctor)
        {
            aDoctorDbGateways.Save(aDoctor);
            
            
                return "Saved!";
          
        }
        public List<Doctor> LoadDoctorList()
        {
            return aDoctorDbGateways.LoadDoctorList();
        }
    }
}