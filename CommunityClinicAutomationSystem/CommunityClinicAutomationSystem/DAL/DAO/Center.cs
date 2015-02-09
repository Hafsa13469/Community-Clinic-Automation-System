namespace CommunityClinicAutomationSystem.DAL.DAO
{
    public class Center
    {
        public int Id { set; get; }
        public string CenterName { set; get; }
        public int DistrictId { set; get; }
        public int ThanaId { set; get; }

        public string Code { set; get; }

        public string Password { set; get; }

    }
}
