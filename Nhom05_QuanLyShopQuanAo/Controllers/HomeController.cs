using Nhom05_QuanLyShopQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Nhom05_QuanLyShopQuanAo.Controllers
{
    public class HomeController : Controller
    {
        ShopQuanAoDataContext db = new ShopQuanAoDataContext();

        // GET: Home
        public ActionResult Index()
        {
            var allProducts = db.SanPhams.ToList();

            var tab1Products = allProducts.Where(p => p.MaDanhMuc == "DM07").ToList(); //áo khoác
            var tab2Products = allProducts.Where(p => p.MaDanhMuc == "DM010").ToList(); //áo thun
            var tab3Products = allProducts.Where(p => p.MaDanhMuc == "DM02").ToList(); //quần short
            var tab4Products = allProducts.Where(p => p.MaDanhMuc == "DM1").ToList(); //áo thun

            ViewBag.Tab1Products = tab1Products;
            ViewBag.Tab2Products = tab2Products;
            ViewBag.Tab3Products = tab3Products;
            ViewBag.Tab4Products = tab4Products;
            return View();
        }


        public ActionResult DetailSanPham(string id)
        {
            var sanPham = db.SanPhams.FirstOrDefault(sp => sp.MaSanPham == id);

            if (sanPham == null)
            {
                return HttpNotFound();
            }

            return View(sanPham);
        }


        // GET: Trang liên hệ
        public ActionResult Contact()
        {
            return View(); // Trả về view liên hệ
        }

        [HttpPost]
        public ActionResult SubmitContact(string name, string email, string message)
        {
            // Xử lý dữ liệu từ biểu mẫu liên hệ
            ViewBag.Message = "Cảm ơn bạn đã liên hệ! Chúng tôi sẽ phản hồi sớm nhất.";
            return View("Contact"); // Trả về trang liên hệ với thông báo
        }



    }
}