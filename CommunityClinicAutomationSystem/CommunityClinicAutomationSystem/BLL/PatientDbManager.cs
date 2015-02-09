using System.Collections.Generic;
using CommunityClinicAutomationSystem.DAL.DBGateway;
using ComunityClinicApp.DLL.DAO;

namespace CommunityClinicAutomationSystem.BLL
{
    public class PatientDbManager
    {PatientDbGateways aPatientDbGateways=new PatientDbGateways();
        public void Save(Patient aPatient)
        {
            aPatientDbGateways.Save(aPatient);
        }

        public List<Patient> GetAllPatients()
        {
            return aPatientDbGateways.GetAllPatients();
        } 
    }
}