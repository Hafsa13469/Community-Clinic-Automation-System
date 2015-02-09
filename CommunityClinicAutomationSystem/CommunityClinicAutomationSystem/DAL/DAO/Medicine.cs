using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CommunityClinicAutomationSystem.DAL.DAO
{
    public class Medicine
    {
        public int Id { set; get; }
        public string Name { set; get; }
        public string Power { set; get; }
        public string Type { set; get; }

        public override string ToString()
        {
            return Name + "," + Power  + Type;
        }
    }
}