using System.Collections.Generic;
using System.Data.SqlClient;
using CommunityClinicAutomationSystem.DAL.DAO;
using ComunityClinicApp.DLL.DAO;

namespace CommunityClinicAutomationSystem.DAL.DBGateway
{
    public class DoctorDBGateways:Gateway

    {
        public DoctorDBGateways()
        {
            aSqlConnection = new SqlConnection(connectionString);
        }
        public void Save(Doctor aDoctor)
        {
            string query = "INSERT INTO tDoctor VALUES('" + aDoctor.Name + "','" + aDoctor.Degree + "','" + aDoctor.Specialization + "','" + aDoctor.CenterId + "')";

            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);

            aSqlCommand.ExecuteNonQuery();
            aSqlConnection.Close();

        }

        public List<Doctor> LoadDoctorList()
        {
            List<Doctor> doctorList = new List<Doctor>();
            string query = "SELECT * FROM tDoctor";
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlConnection.Open();
            SqlDataReader aSqlDataReader = aSqlCommand.ExecuteReader();

            while (aSqlDataReader.Read())
            {
                Doctor aDoctor = new Doctor();
                aDoctor.Id = (int)aSqlDataReader["id"];
                aDoctor.Name = aSqlDataReader["doctor_name"].ToString();
               
                doctorList.Add(aDoctor);
            }
            aSqlDataReader.Close();
            aSqlConnection.Close();

            return doctorList;
        }


    }
}