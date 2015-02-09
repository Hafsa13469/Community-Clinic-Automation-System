using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using CommunityClinicAutomationSystem.DAL.DAO;
using CommunityClinicAutomationSystem.DAL.DBGateway;
//using CommunityClinicAutomationSystem.DAO;

namespace CommunityClinicAutomationSystem.BLL
{
    public class CenterManager
    {
        CenterDBGateway aCenterDbGateway = new CenterDBGateway();
        PasswordDBGateway aPasswordDbGateway = new PasswordDBGateway();
        LocationDBGateway aLocationDbGateway = new LocationDBGateway();
        CenterLoginDBGateway aCenterLoginDbGateway = new CenterLoginDBGateway();
        public int Save(Center aCenter)
        {
            if (aCenterDbGateway.CheckCenterUniqueness(aCenter) == null)
            {
                int tempSave = aCenterDbGateway.Save(aCenter);
                if (tempSave == 1)
                {
                    aCenter.Id = Convert.ToInt16(aCenterDbGateway.Find(aCenter.CenterName));
                    if (aCenter.Id > 0)
                    {
                        aCenter.Code = GenerateRandomCode(6);
                        aCenter.Password = GenerateRandomPassword(8);
                        int tempCode = aPasswordDbGateway.SaveCodeAndPassword(aCenter);
                        if (tempCode > 0)
                        {
                            return aCenter.Id;
                        }
                    }
                    else
                    {
                        return 0;
                    }
                }
                else
                {
                    return 0;
                }
            }
            else
            {
                return 0;
            }
            return 0;
        }
        public List<Center> GetAll()
        {
            return aCenterDbGateway.GetAll();
        }
        public int Find(string name)
        {
            return aCenterDbGateway.Find(name);
        }
        public List<District> GetAllDistricts()
        {
            return aLocationDbGateway.GetAllDistricts();
        }
        public District FindDistrict(int id)
        {
            return aLocationDbGateway.FindDistrict(id);
        }
        public List<Thana> GetAllThana()
        {
            return aLocationDbGateway.GetAllThana();
        }
        public List<Thana> FindThana(int id)
        {
            return aLocationDbGateway.FindThana(id);
        }

        public Center FindCodeAndPasswordByCenterId(int CenterId)
        {
            return aPasswordDbGateway.FindCodeAndPasswordByCenterId(CenterId);
        }

        public Center Find(int centerId)
        {
            return aCenterDbGateway.Find(centerId);
        }

        public string GenerateRandomCode(int codeLength)
        {
            char[] characters = new char[52];
            characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
            byte[] dataByte = new byte[1];
            RNGCryptoServiceProvider crypto = new RNGCryptoServiceProvider();
            crypto.GetNonZeroBytes(dataByte);
            dataByte = new byte[codeLength];
            crypto.GetNonZeroBytes(dataByte);
            StringBuilder result = new StringBuilder(codeLength);
            foreach (byte aByte in dataByte)
            {
                result.Append(characters[aByte % (characters.Length)]);
            }
            return result.ToString();
        }

        public string GenerateRandomPassword(int passwordLength)
        {
            char[] characters = new char[88];
            characters = ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890" + "!@#$%^&*()_-+=[{]};:<>|./?").ToCharArray();
            byte[] dataByte = new byte[1];
            RNGCryptoServiceProvider crypto = new RNGCryptoServiceProvider();
            crypto.GetNonZeroBytes(dataByte);
            dataByte = new byte[passwordLength];
            crypto.GetNonZeroBytes(dataByte);
            StringBuilder result = new StringBuilder(passwordLength);
            foreach (byte aByte in dataByte)
            {
                result.Append(characters[aByte % (characters.Length)]);
            }
            return result.ToString();
        }

        public void SaveCodeAndPassword(Center aCenter)
        {
            aPasswordDbGateway.SaveCodeAndPassword(aCenter);
        }


        public int Find(string code, string password)
        {
            return aCenterLoginDbGateway.Find(code, password);
        }


    }
}
