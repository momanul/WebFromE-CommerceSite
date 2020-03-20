using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Buy.com.Data_Access_Layer.Models;

namespace Bye.com.Data_Access_Layer.Services
{
    public class CategoryWorkerServices
    {
        public Category InitilizeCategoryByCategoryLayer()
        {
            CategoryLayer categoryLayer = new CategoryLayer();
            Category category = new Category();

            category.ParentCatID = categoryLayer.ParentCatID;
            category.Name = categoryLayer.Name;
            category.DisplayOrder = categoryLayer.DisplayOrder;
            category.IsActive = categoryLayer.IsActive;

            return category;
        }
    }
}