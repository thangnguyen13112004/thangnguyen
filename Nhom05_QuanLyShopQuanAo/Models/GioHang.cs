using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom05_QuanLyShopQuanAo.Models
{
    public class GioHang
    {
        public string MaSanPham { get; set; }
        public string TenSanPham { get; set; }
        public decimal Gia { get; set; }
        public int SoLuong { get; set; }
        public string MoTa { get; set; }
    }
}