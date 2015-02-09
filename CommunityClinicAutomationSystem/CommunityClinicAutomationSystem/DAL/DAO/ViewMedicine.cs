using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ComunityClinicApp.DLL.DAO
{
    public class ViewMedicine
    {
        public int Id { set; get; }
        public string Name { set; get; }
        public string Power { set; get; }

        public int Quantity { set; get; }

        public int CenterId { set; get; }
        public int MedicineId { set; get; }

    }
}