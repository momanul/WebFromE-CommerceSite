using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Buy.com.Data_Access_Layer.Models
{
    public class CategoryLayer
    {
        public long ID { get; set; }
        public long ParentCatID { get; set; }
        public string Name { get; set; }
        public int DisplayOrder { get; set; }
        public bool IsActive { get; set; }
    }
}