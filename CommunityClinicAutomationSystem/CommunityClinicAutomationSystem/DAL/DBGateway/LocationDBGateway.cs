using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using CommunityClinicAutomationSystem.DAL.DAO;

namespace CommunityClinicAutomationSystem.DAL.DBGateway
{
    public class LocationDBGateway : Gateway
    {
        public LocationDBGateway()
        {
            aSqlConnection = new SqlConnection(connectionString);
        }
        public List<District> GetAllDistricts()
        {
            string query = "SELECT * FROM t_district";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader = aSqlCommand.ExecuteReader();

            List<District> districtList = new List<District>();

            while (aSqlDataReader.Read())
            {
                District aDistrict = new District();
                aDistrict.Id = Convert.ToInt32(aSqlDataReader["id"]);
                aDistrict.Name = aSqlDataReader["district_name"].ToString();

                districtList.Add(aDistrict);

            }
            aSqlConnection.Close();
            return districtList;
        }

        public District FindDistrict(int id)
        {
            string query = "SELECT * FROM t_district WHERE id=" + id + ";";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader = aSqlCommand.ExecuteReader();
            if (aSqlDataReader.HasRows)
            {
                District aDistrict = new District();
                while (aSqlDataReader.Read())
                {

                    aDistrict.Id = Convert.ToInt32(aSqlDataReader["id"]);
                    aDistrict.Name = aSqlDataReader["district_name"].ToString();


                }
                aSqlConnection.Close();
                return aDistrict;
            }
            else
            {
                aSqlConnection.Close();
                return null;
            }

        }

        public List<Thana> GetAllThana()
        {
            string query = "SELECT * FROM t_thana";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader = aSqlCommand.ExecuteReader();

            List<Thana> thanatList = new List<Thana>();

            while (aSqlDataReader.Read())
            {
                Thana aThana = new Thana();
                aThana.Id = Convert.ToInt32(aSqlDataReader["id"]);
                aThana.Name = aSqlDataReader["thana_name"].ToString();
                aThana.DistrictId = Convert.ToInt32(aSqlDataReader["district_id"]);

                thanatList.Add(aThana);

            }
            aSqlConnection.Close();
            return thanatList;
        }
        public List<Thana> FindThana(int id)
        {
            string query = "SELECT * FROM t_thana WHERE district_id=" + id + ";";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader = aSqlCommand.ExecuteReader();

            List<Thana> thanaList = new List<Thana>();
            while (aSqlDataReader.Read())
            {
                Thana aThana = new Thana();
                aThana.Id = Convert.ToInt32(aSqlDataReader["id"]);
                aThana.Name = aSqlDataReader["thana_name"].ToString();
                aThana.DistrictId = Convert.ToInt32(aSqlDataReader["district_id"]);
                thanaList.Add(aThana);                
            }
            aSqlConnection.Close();
            return thanaList;
        }
    }
}
