using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Buy.com.Data_Access_Layer.Models
{
    public class ProductLayer
    {
        public long ID { get; set; }
        public long CategoryID { get; set; }
        public string Brand { get; set; }
        public string Name { get; set; }
        public string Details { get; set; }
        public double Price { get; set; }
        public double StockQuantity { get; set; }
        public bool IsFavorite { get; set; }
        public bool IsActive { get; set; }
    }
}