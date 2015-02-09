using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using CommunityClinicAutomationSystem.DAL.DAO;
using ComunityClinicApp.DLL.DAO;

namespace CommunityClinicAutomationSystem.DAL.DBGateway
{
    public class MedicineDBGateway :Gateway
    {
        public MedicineDBGateway()
        {
           aSqlConnection = new SqlConnection(connectionString);
        }
      
        public void SaveMedicine(Medicine aMedicine)
        {
            string query = "INSERT INTO t_medicine VALUES ('" +aMedicine.Name+ "' , '" +aMedicine.Power+"', '" +aMedicine.Type+"')";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlCommand.ExecuteNonQuery();
            aSqlConnection.Close();
        }

        public Medicine UniqueCheker(string name)
        {
            string query = "SELECT * FROM t_medicine WHERE generic_name='" + name + "'";

            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader= aSqlCommand.ExecuteReader();
            
            if (aSqlDataReader.HasRows)
            {
                Medicine aMedicine = new Medicine();

                while (aSqlDataReader.Read())
                {
                    aMedicine.Id = Convert.ToInt32(aSqlDataReader["id"]);
                    aMedicine.Name = aSqlDataReader["generic_name"].ToString();
                    aMedicine.Power = aSqlDataReader["power"].ToString();
                    aMedicine.Type = aSqlDataReader["type"].ToString();

                }
                aSqlConnection.Close();
                return aMedicine;
            }
            else
            {

                aSqlConnection.Close();
                return null;
            }
        }


        public List<Medicine> GetAllMedicine()
        {
            string query = "SELECT * FROM t_medicine";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader = aSqlCommand.ExecuteReader();

            List<Medicine> medicineList = new List<Medicine>();

            while (aSqlDataReader.Read())
            {
                Medicine aMedicine = new Medicine();
                aMedicine.Id = Convert.ToInt32(aSqlDataReader["id"]);
                aMedicine.Name = aSqlDataReader["generic_name"].ToString();
                aMedicine.Power = aSqlDataReader["power"].ToString();
                aMedicine.Type = aSqlDataReader["type"].ToString();
                medicineList.Add(aMedicine);

            }
            aSqlDataReader.Close();
            aSqlConnection.Close();
            return medicineList;
        }
        
    }
}