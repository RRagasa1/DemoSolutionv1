using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eRestaurantSystem.Data.POCOs
{
    public class MenuCategoryFoodItemPOCO
    {
        public int ItemID { get; set; }
        public string Description { get; set; }
        public decimal CurrentPrice { get; set; }
        public int TImesServed { get; set; }
    }
}
