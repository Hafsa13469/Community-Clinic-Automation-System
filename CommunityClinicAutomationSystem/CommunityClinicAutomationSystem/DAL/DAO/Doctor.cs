using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ComunityClinicApp.DLL.DAO
{
    public class Doctor
    {
        public int Id { set; get; }
        public int CenterId { set; get; }
        public string Name { set; get; }
        public string Degree { set; get; }
        public string Specialization { set; get; }
    }
}