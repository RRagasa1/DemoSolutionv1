using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


#region Additional Namespaces
using System.ComponentModel; //ODS
using eRestaurantSystem.Data.Entities;
using eRestaurantSystem.Data.POCOs;
using eRestaurantSystem.Data.DTOs;
using eRestaurantSystem.DAL;

#endregion
namespace eRestaurantSystem.BLL
{
    [DataObject]
    public class ItemsController
    {
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<MenuCategoryFoodItemsDTO> MenuCategoryFoodItemsDTO_Get()
        {
            using (var context = new eRestaurantContext())
            {
                var results = from food in context.Items
                              group food by new { food.MenuCategory.Description } into tempdataset
                              select new MenuCategoryFoodItemsDTO //DTO's - complex dataset 'MenuCategoryFoodItemsDTO' ienumerable
                              {
                                  MenuCategoryDescription = tempdataset.Key.Description,
                                  FoodItems = (from x in tempdataset
                                              select new FoodItemCounts
                                              {
                                                  ItemID = x.ItemID,
                                                  Description = x.Description,
                                                  CurrentPrice = x.CurrentPrice,
                                                  ItemsServed = x.BillItems.Count()
                                              }).ToList()  //must convert to list
                              };
                return results.ToList();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<MenuCategoryFoodItemPOCO> MenuCategoryFoodItemsPOCO_Get()
        {
            using (var context = new eRestaurantContext())
            {
                var results = from food in context.Items
                              orderby food.MenuCategory.Description
                              select new MenuCategoryFoodItemPOCO //POCOS -flat dataset 'MenuCategoryFoodItemDPOCO'
                              {
                                  MenuCategoryDescription = food.MenuCategory.Description,
                                  ItemID = food.ItemID,
                                  CurrentPrice = food.CurrentPrice,
                                  ItemsServed = food.BillItems.Count()
                              };

                return results.ToList();
            }
        }

    }
}
