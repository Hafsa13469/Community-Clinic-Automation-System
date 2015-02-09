using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using CommunityClinicAutomationSystem.DAL.DAO;

namespace CommunityClinicAutomationSystem.DAL.DBGateway
{
    public class DiseaseDBGateway:Gateway
    {
        public DiseaseDBGateway()
        {
            aSqlConnection = new SqlConnection(connectionString);
        }
        public void Save(Disease aDisease)
        {
            string query = "INSERT INTO t_disease VALUES ('" + aDisease.DiseaseName + "','" + aDisease.Description + "','" + aDisease.TreatmentProcedure + "','" + aDisease.PreferredDrugs + "')";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlCommand.ExecuteNonQuery();
            aSqlConnection.Close();
        }
        public List<Disease> GetAll()
        {

            string query = "SELECT * FROM t_disease";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader = aSqlCommand.ExecuteReader();
            List<Disease> diseaseList = new List<Disease>();
            while (aSqlDataReader.Read())
            {
                Disease aDisease = new Disease();
                aDisease.Id = Convert.ToInt32(aSqlDataReader["id"]);
                aDisease.DiseaseName = aSqlDataReader["disease_Name"].ToString();
                aDisease.Description = aSqlDataReader["description"].ToString();
                aDisease.TreatmentProcedure = aSqlDataReader["treatment_procedure"].ToString();
                aDisease.PreferredDrugs = aSqlDataReader["preferred_drugs"].ToString();
                diseaseList.Add(aDisease);
            }
            aSqlDataReader.Close();
            aSqlConnection.Close();
            return diseaseList;
        }
        public Disease Find(int id)
        {

            string query = "SELECT * FROM t_disease WHERE id='" + id + "'";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader = aSqlCommand.ExecuteReader();

            if (aSqlDataReader.HasRows)
            {
                aSqlDataReader.Read();
                Disease aDisease = new Disease();
                aDisease.Id = Convert.ToInt32(aSqlDataReader["id"]);
                aDisease.DiseaseName = aSqlDataReader["disease_Name"].ToString();
                aDisease.Description = aSqlDataReader["description"].ToString();
                aDisease.TreatmentProcedure = aSqlDataReader["treatment_procedure"].ToString();
                aDisease.PreferredDrugs = aSqlDataReader["preferred_drugs"].ToString();
                aSqlDataReader.Close();
                aSqlConnection.Close();
                return aDisease;
            }
            else
            {
                aSqlDataReader.Close();
                aSqlConnection.Close();
                return null;
            }

        }
    }
}
