using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ComunityClinicApp.DLL.DAO
{
    public class Patient
    {
        public string NationalId { set; get; }
        public string Description { set; get; }
        public int CenterId { set; get; }
        public int DoctorId { set; get; }
        public int DeaseaseId { set; get; }
        public int MedicineId { set; get; }
        public int Consulted { set; get; }
        public int Quantity { set; get; }

    }
}