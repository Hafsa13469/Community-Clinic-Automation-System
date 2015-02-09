using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using CommunityClinicAutomationSystem.DAL.DAO;
using ComunityClinicApp.DLL.DAO;

namespace CommunityClinicAutomationSystem.DAL.DBGateway
{
    public class SendMedicineDbGateway : Gateway
    {
        public SendMedicineDbGateway()
        {
            aSqlConnection = new SqlConnection(connectionString);
        }


        public List<Center> FindCenter(int id, int thanaId)
        {
            string query = "SELECT * FROM t_center WHERE district_id=" + id + " AND thana_id = " + thanaId + ";";

            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader = aSqlCommand.ExecuteReader();

            List<Center> centerList = new List<Center>();

            while (aSqlDataReader.Read())
            {
                Center aCenter = new Center();

                aCenter.Id = Convert.ToInt32(aSqlDataReader["id"]);
                aCenter.CenterName = aSqlDataReader["center_name"].ToString();
                aCenter.DistrictId = Convert.ToInt32(aSqlDataReader["district_id"]);
                aCenter.ThanaId = Convert.ToInt32(aSqlDataReader["thana_id"]);

                centerList.Add(aCenter);


            }
            aSqlConnection.Close();
            return centerList;
        }

        public ViewMedicine FindInCenter(ViewMedicine aViewMedicine)
        {
            string query = "SELECT * FROM medicineForCenter WHERE medicineId = '" + aViewMedicine.MedicineId + "' AND centerId='" + aViewMedicine.CenterId + "'";
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlConnection.Open();
            aSqlDataReader = aSqlCommand.ExecuteReader();

            ViewMedicine medicine;

            if (aSqlDataReader.HasRows)
            {
                medicine = new ViewMedicine();
                aSqlDataReader.Read();
                medicine.Id = (int)aSqlDataReader["id"];
                medicine.CenterId = (int)aSqlDataReader["centerId"];
                medicine.MedicineId = (int)aSqlDataReader["medicineId"];
                medicine.Quantity = (int)aSqlDataReader["quantity"];

                aSqlDataReader.Close();
                aSqlCommand.Dispose();
                aSqlConnection.Close();
                return medicine;
            }
            else
            {
                aSqlDataReader.Close();
                aSqlCommand.Dispose();
                aSqlConnection.Close();
                return null;
            }
        }

       

        
        public Medicine FindMedicineByName(string name)
        {
            string query = "SELECT * FROM t_medicine WHERE generic_name='" + name + "'";

            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader = aSqlCommand.ExecuteReader();
            Medicine aMedicine;


            if (aSqlDataReader.HasRows)
            {
                aMedicine = new Medicine();
                aSqlDataReader.Read();
                aMedicine.Id = (int)aSqlDataReader["id"];
                aMedicine.Name = aSqlDataReader["generic_name"].ToString();
                aMedicine.Power = aSqlDataReader["power"].ToString();
                aMedicine.Type = aSqlDataReader["type"].ToString();

                aSqlDataReader.Close();
                aSqlCommand.Dispose();
                aSqlConnection.Close();
                return aMedicine;
            }
            else
            {
                aSqlDataReader.Close();
                aSqlCommand.Dispose();
                aSqlConnection.Close();
                return null;
            }
        }
        public void SendMedicine(ViewMedicine aViewMedicine)
        {
            string query = "INSERT INTO medicineForCenter VALUES('" + aViewMedicine.MedicineId + "','" + aViewMedicine.CenterId + "','" + aViewMedicine.Quantity + "')";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);

            aSqlCommand.ExecuteNonQuery();
            aSqlCommand.Dispose();
            aSqlConnection.Close();
        }

        public void UpdateMedicineInCenter(ViewMedicine aViewMedicine)
        {
            string query = "UPDATE  medicineForCenter SET quantity+= '" + aViewMedicine.Quantity + "' WHERE id = '" +
                           aViewMedicine.Id + "'";

            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);

            aSqlCommand.ExecuteNonQuery();
            aSqlCommand.Dispose();
            aSqlConnection.Close();

        }



        public List<ViewMedicine> GetAllMedicineByCenter(int centerId)
        {
            string query = "select t_Medicine.generic_name,medicineForCenter.quantity from t_Medicine inner join medicineForCenter on t_Medicine.id=medicineForCenter.medicineId where centerId='" + centerId + "'";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader = aSqlCommand.ExecuteReader();
            List<ViewMedicine> aMedicineviewList = new List<ViewMedicine>();
            if (aSqlDataReader.HasRows)
            {
                

                while (aSqlDataReader.Read())
                {
                    ViewMedicine aMedicineView = new ViewMedicine();
                    aMedicineView.Quantity = Convert.ToInt32(aSqlDataReader["quantity"]);
                    aMedicineView.Name = aSqlDataReader["generic_name"].ToString();
                    aMedicineviewList.Add(aMedicineView);
                }
                aSqlConnection.Close();
                return aMedicineviewList;
            }
            else
            {

                aSqlConnection.Close();
                return null;
            }
        }



    }

}


