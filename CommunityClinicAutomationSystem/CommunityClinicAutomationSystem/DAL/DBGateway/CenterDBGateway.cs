using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using CommunityClinicAutomationSystem.DAL.DAO;

namespace CommunityClinicAutomationSystem.DAL.DBGateway
{
    public class CenterDBGateway : Gateway
    {
        public CenterDBGateway()
        {
            aSqlConnection = new SqlConnection(connectionString);
        }
        public int Save(Center aCenter)
        {
            string query = "INSERT INTO t_center VALUES ('" + aCenter.CenterName + "','" + aCenter.DistrictId + "','" + aCenter.ThanaId + "')";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            int rowAffected = aSqlCommand.ExecuteNonQuery();
            aSqlConnection.Close();
            return rowAffected;
        }

        public List<Center> GetAll()
        {

            string query = "SELECT * FROM t_center";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            SqlDataReader aSqlDataReader = aSqlCommand.ExecuteReader();
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
            aSqlDataReader.Close();
            aSqlConnection.Close();
            return centerList;
        }

        public int Find(string centerName)
        {
            string query = "SELECT * FROM t_center WHERE center_name='"+ centerName +"'";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader = aSqlCommand.ExecuteReader();

            if (aSqlDataReader.HasRows)
            {
                aSqlDataReader.Read();
                Center aCenter = new Center();
                aCenter.Id = Convert.ToInt32(aSqlDataReader["id"]);
                aCenter.CenterName = aSqlDataReader["center_Name"].ToString();
                aCenter.DistrictId = Convert.ToInt32(aSqlDataReader["district_id"]);
                aCenter.ThanaId = Convert.ToInt32(aSqlDataReader["thana_id"]);
                aSqlDataReader.Close();
                aSqlConnection.Close();
                return aCenter.Id;
            }
            else
            {
                aSqlDataReader.Close();
                aSqlConnection.Close();
                return 0;
            }

        }

        public Center Find(int centerId)
        {
            string query = "SELECT * FROM t_center WHERE id='" + centerId + "'";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader = aSqlCommand.ExecuteReader();

            if (aSqlDataReader.HasRows)
            {
                aSqlDataReader.Read();
                Center aCenter = new Center();
                aCenter.Id = Convert.ToInt32(aSqlDataReader["id"]);
                aCenter.CenterName = aSqlDataReader["center_Name"].ToString();
                aCenter.DistrictId = Convert.ToInt32(aSqlDataReader["district_id"]);
                aCenter.ThanaId = Convert.ToInt32(aSqlDataReader["thana_id"]);
                aSqlDataReader.Close();
                aSqlConnection.Close();
                return aCenter;
            }
            else
            {
                aSqlDataReader.Close();
                aSqlConnection.Close();
                return null;
            }

        }


        public Center CheckCenterUniqueness(Center checkCenter)
        {
            string query = "SELECT * FROM t_center WHERE center_name= '" + checkCenter.CenterName + "' AND district_id='" + checkCenter.DistrictId + "'";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader = aSqlCommand.ExecuteReader();
            if (aSqlDataReader.HasRows)
            {
                aSqlDataReader.Read();
                Center aCenter = new Center();
                aCenter.CenterName = aSqlDataReader["center_name"].ToString();
                aCenter.DistrictId = Convert.ToInt16(aSqlDataReader["district_id"]);
                aCenter.ThanaId = Convert.ToInt16(aSqlDataReader["thana_id"]);
                aSqlDataReader.Close();
                aSqlConnection.Close();
                return aCenter;
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
