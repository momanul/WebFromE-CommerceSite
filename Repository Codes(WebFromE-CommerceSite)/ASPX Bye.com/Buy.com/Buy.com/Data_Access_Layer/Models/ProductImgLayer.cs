using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Buy.com.Data_Access_Layer.Models
{
    public class ProductImgLayer
    {
        public long ID { get; set; }
        public long ProductID { get; set; }
        public string ImgPath { get; set; }
        public string ThumbnailPath { get; set; }
        public int DisplayOrder { get; set; }
        public bool IsDefaultImg { get; set; }
    }
}