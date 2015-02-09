using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CommunityClinicAutomationSystem.DAL.DAO;
using CommunityClinicAutomationSystem.DAL.DBGateway;
//using CommunityClinicAutomationSystem.DAO;

namespace CommunityClinicAutomationSystem.BLL
{
    public class DiseaseManager
    {
        DiseaseDBGateway aDiseaseDbGateway = new DiseaseDBGateway();
        public string Save(Disease aDisease)
        {
            if (aDiseaseDbGateway.Find(aDisease.Id) == null)
            {
                aDiseaseDbGateway.Save(aDisease);
                return "Disease info saved!";
            }
            else
            {
                return "Info about this disease already exists!";
            }
            
        }
        public List<Disease> GetAll()
        {
            return aDiseaseDbGateway.GetAll();
        }
        public Disease Find(int id)
        {
            return aDiseaseDbGateway.Find(id);
        }
    }
}
