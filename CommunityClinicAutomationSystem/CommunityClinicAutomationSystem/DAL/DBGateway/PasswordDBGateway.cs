using System.Data.SqlClient;
using CommunityClinicAutomationSystem.DAL.DAO;

namespace CommunityClinicAutomationSystem.DAL.DBGateway
{
    public class PasswordDBGateway : Gateway
    {
        CenterDBGateway aCenterDbGateway = new CenterDBGateway();
        public PasswordDBGateway()
        {
            aSqlConnection = new SqlConnection(connectionString);
        }

        public int SaveCodeAndPassword(Center aCenter)
        {
            string query = "INSERT INTO t_center_login VALUES('" + aCenter.Code + "','" + aCenter.Password + "','" + aCenter.Id + "')";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            int rowAffected = aSqlCommand.ExecuteNonQuery();
            aSqlConnection.Close();
            return rowAffected;
        }

        public Center CheckCodeAndPassword(Center aCenter)
        {
            string query = "SELECT * FROM t_center_login WHERE code = '" + aCenter.Code + "' AND password='" + aCenter.Password + "'";
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlConnection.Open();
            aSqlDataReader = aSqlCommand.ExecuteReader();

            if (aSqlDataReader.HasRows)
            {
                Center bCenter = new Center();
                aSqlDataReader.Read();
                bCenter.Id = (int)aSqlDataReader["id"];
                bCenter.Code = aSqlDataReader["code"].ToString();
                bCenter.Password = aSqlDataReader["password"].ToString();
                aSqlDataReader.Close();
                aSqlConnection.Close();
                return bCenter;
            }
            else
            {
                aSqlDataReader.Close();
                aSqlConnection.Close();
                return null;
            }
        }

        public Center FindCodeAndPasswordByCenterId(int CenterId)
        {
            string query = "SELECT * FROM t_center_login WHERE center_id = '" + CenterId + "'";
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlConnection.Open();
            aSqlDataReader = aSqlCommand.ExecuteReader();

            if (aSqlDataReader.HasRows)
            {
                Center bCenter = new Center();
                aSqlDataReader.Read();
                bCenter.Id = (int)aSqlDataReader["id"];
                bCenter.Code = aSqlDataReader["code"].ToString();
                bCenter.Password = aSqlDataReader["password"].ToString();
                aSqlDataReader.Close();
                aSqlConnection.Close();
                return bCenter;
            }
            else
            {
                aSqlDataReader.Close();
                aSqlConnection.Close();
                return null;
            }
        }


        public int Find(string centerName)
        {
            foreach (Center selectedCenter in aCenterDbGateway.GetAll())
            {
                if (selectedCenter.CenterName == centerName)
                {
                    return selectedCenter.Id;
                }
            }
            return 0;
        }

        public int FindCode(string code)
        {
            string query = "SELECT * FROM t_center_login WHERE code= '" + code + "'";
            aSqlConnection.Open();
            aSqlCommand = new SqlCommand(query, aSqlConnection);
            aSqlDataReader = aSqlCommand.ExecuteReader();
            if (aSqlDataReader.Read())
            {
                aSqlDataReader["code"].ToString();
                aSqlDataReader.Close();
                aSqlDataReader.Close();
                return 1;
            }
            else
            {
                aSqlDataReader.Close();
                aSqlConnection.Close();
                return 0;
            }
        }
    }
}
