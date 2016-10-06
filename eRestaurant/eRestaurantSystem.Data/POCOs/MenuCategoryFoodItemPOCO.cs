﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eRestaurantSystem.Data.POCOs
{
    public class MenuCategoryFoodItemPOCO
    {
        public int ItemID { get; set; }
        public string FoodDescription { get; set; }
        public decimal CurrentPrice { get; set; }
        public int ItemsServed { get; set; }
        public string MenuCategoryDescription { get; set; }
    }
}
