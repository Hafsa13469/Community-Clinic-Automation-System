using System.Collections.Generic;
using System.Data.SqlClient;
using ComunityClinicApp.DLL.DAO;

namespace CommunityClinicAutomationSystem.DAL.DBGateway
{
    public class PatientDbGateways:Gateway
    {
        public PatientDbGateways()
        {
            aSqlConnection = new SqlConnection(connectionString);
        }
        public void Save(Patient aPatient)
        {
            string query = "INSERT INTO t_treatment(national_id,description,doctor_id,center_id,consulted) VALUES('" + aPatient.NationalId + "','" + aPatient.Description + "','" + aPatient.DoctorId + "','" + aPatient.CenterId + "','" + aPatient.Consulted + "')";

            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);

            aSqlCommand.ExecuteNonQuery();
            aSqlConnection.Close();
        }

        public List<Patient> GetAllPatients()
        {
            List<Patient> patientList = new List<Patient>();
            string query = "SELECT * FROM t_treatment";
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlConnection.Open();
            SqlDataReader aSqlDataReader = aSqlCommand.ExecuteReader();

            while (aSqlDataReader.Read())
            {
               Patient aPatient = new Patient();

               aPatient.NationalId = aSqlDataReader["patient_id"].ToString();
                //aPatient.Description = aSqlDataReader["description"].ToString();
                //aPatient.DoctorId = (int)aSqlDataReader["doctor_id"];
                //aPatient.CenterId = (int)aSqlDataReader["center_id"];
             //   aPatient.Consulted = (int) aSqlDataReader["consulted"];
                patientList.Add(aPatient);
            }
            aSqlDataReader.Close();
            aSqlConnection.Close();

            return patientList;
        } 
    }
}