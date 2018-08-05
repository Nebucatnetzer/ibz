using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Plattform.Models;
using Plattform.DB;
using Plattform.AirlineService;

namespace Plattform
{
    public partial class home : System.Web.UI.Page
    {
        public AirlineServiceClient service = new AirlineServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            RoomTypeDB typeDB = new RoomTypeDB();
            var types = typeDB.GetAllRoomTypes();
            DropDownRoomType.Items.Add(types.ToString());
        }

        protected void ButtonGetFlights_Click(object sender, EventArgs e)
        {
            FlightDB dataccess = new FlightDB();
            var flights = this.service.GetFreeFlights();
            foreach (var item in flights)
            {
                dataccess.CreateFlight(item);
            }
        }

        protected void ButtonAddRoom_Click(object sender, EventArgs e)
        {

        }
    }
}