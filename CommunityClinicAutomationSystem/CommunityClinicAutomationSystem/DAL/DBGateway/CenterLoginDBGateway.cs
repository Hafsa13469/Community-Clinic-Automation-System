using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CommunityClinicAutomationSystem.DAL.DBGateway
{
    public class CenterLoginDBGateway :Gateway
    {
        public CenterLoginDBGateway()
        {
            aSqlConnection = new SqlConnection(connectionString);
        }
        public int Find(string code, string password)
        {
            string query = "SELECT * FROM t_center_login WHERE code = '" + code + "' AND password= '" + password + "'";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader = aSqlCommand.ExecuteReader();

            if (aSqlDataReader.HasRows)
            {
                int centerId = 0;
                while (aSqlDataReader.Read())
                {
                    centerId = Convert.ToInt32(aSqlDataReader["center_id"]);
                }
                aSqlConnection.Close();
                return centerId;
            }
            else
            {
                aSqlConnection.Close();
                return 0;
            }

        }
    }
}