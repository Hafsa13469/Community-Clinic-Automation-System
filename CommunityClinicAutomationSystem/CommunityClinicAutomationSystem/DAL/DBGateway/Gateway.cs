using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace CommunityClinicAutomationSystem.DAL.DBGateway
{
    public class Gateway
    {
        public string connectionString = WebConfigurationManager.ConnectionStrings["connectionStringForCommunityClinic"].ConnectionString;
        public SqlConnection aSqlConnection { set; get; }
        public SqlCommand aSqlCommand { set; get; }
        public SqlDataReader aSqlDataReader { set; get; }
    }
}