using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Nhom05_QuanLyShopQuanAo.Models;

namespace Nhom05_QuanLyShopQuanAo.Controllers
{
    public class ThongTinController : Controller
    {
        ShopQuanAoDataContext db = new ShopQuanAoDataContext();
        // GET: ThongTin
        public ActionResult ThongTinNguoiDung()
        {
            var user = (UserAccount)Session["khach"];
            if (user == null)
            {
                return RedirectToAction("Login_NguoiDung", "DangNhap");
            }

            var khachHang = db.KhachHangs.FirstOrDefault(kh => kh.TenDangNhap == user.TenDangNhap);
            return View(khachHang);
        }

        [HttpPost]
        public ActionResult CapNhatThongTin(KhachHang model)
        {
            var user = (UserAccount)Session["khach"];
            if (user == null)
            {
                ViewBag.Message = "Cập nhật thất bại!";
                return RedirectToAction("Login_NguoiDung", "DangNhap");
            }

            var khachHang = db.KhachHangs.FirstOrDefault(kh => kh.TenDangNhap == user.TenDangNhap);
            if (khachHang != null)
            {
                khachHang.Ho = model.Ho;
                khachHang.Ten = model.Ten;
                khachHang.GioiTinh = model.GioiTinh;
                khachHang.DienThoai = model.DienThoai;
                khachHang.Email = model.Email;


                db.SubmitChanges();
                ViewBag.Message = "Cập nhật thành công!";
            }
            else
            {
                ViewBag.Message = "Cập nhật thất bại!";
            }

            return View("ThongTinNguoiDung",khachHang);



        }
    }
}