using Nhom05_QuanLyShopQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Nhom05_QuanLyShopQuanAo.Controllers
{
    public class GioHangController : Controller
    {
        // GET: GioHang
        ShopQuanAoDataContext db = new ShopQuanAoDataContext();

        public ActionResult Index()
        {
            var gioHang = (List<GioHang>)Session["GioHang"] ?? new List<GioHang>();
            return View(gioHang);
        }


        public ActionResult ThemVaoGioHang(string maSanPham)
        {
            // Kiểm tra nếu người dùng chưa đăng nhập
            if (Session["khach"] == null)
            {
                TempData["LoginRequired"] = "Bạn chưa đăng nhập !";
                return RedirectToAction("Login_NguoiDung", "DangNhap");
            }


            var gioHang = (List<GioHang>)Session["GioHang"] ?? new List<GioHang>();
            var existingItem = gioHang.FirstOrDefault(item => item.MaSanPham == maSanPham);

            if (existingItem != null)
            {
                existingItem.SoLuong++;
            }
            else
            {
                var product = db.SanPhams.FirstOrDefault(p => p.MaSanPham == maSanPham); // Lấy sản phẩm từ db
                if (product != null)
                {
                    var gioHangItem = new GioHang
                    {
                        MaSanPham = product.MaSanPham,
                        TenSanPham = product.TenSanPham,
                        Gia = (decimal)product.Gia,
                        SoLuong = 1,
                        MoTa = product.MoTa // Lấy mô tả sản phẩm
                    };
                    gioHang.Add(gioHangItem);
                }
            }

            Session["GioHang"] = gioHang;
            return RedirectToAction("Index", "GioHang");
        }

        [HttpPost]
        public ActionResult XoaKhoiGioHang(string maSanPham)
        {
            var gioHang = (List<GioHang>)Session["GioHang"] ?? new List<GioHang>();
            var itemToRemove = gioHang.FirstOrDefault(item => item.MaSanPham == maSanPham);
            if (itemToRemove != null)
            {
                gioHang.Remove(itemToRemove);
            }

            Session["GioHang"] = gioHang;
            return Json(new { success = true });
            //return RedirectToAction("Index");
        }


        [HttpPost]
        public ActionResult CapNhatSoLuong(string maSanPham, int soLuong)
        {
            var gioHang = (List<GioHang>)Session["GioHang"] ?? new List<GioHang>();
            var itemToUpdate = gioHang.FirstOrDefault(item => item.MaSanPham == maSanPham);

            if (itemToUpdate != null && soLuong > 0)
            {
                itemToUpdate.SoLuong = soLuong;
            }

            Session["GioHang"] = gioHang;
            return RedirectToAction("Index");
        }

        public int GetCartItemCount()
        {
            var gioHang = (List<GioHang>)Session["GioHang"] ?? new List<GioHang>();
            return gioHang.Sum(item => item.SoLuong);
        }

        public JsonResult GetCartCount()
        {
            int count = GetCartItemCount();
            return Json(count, JsonRequestBehavior.AllowGet);
        }



        //Tạo mã đơn hàng tự động
        private string GenerateMaDonHang()
        {
            string datePart = DateTime.Now.ToString("yyyyMMdd"); // Phần ngày hiện tại theo định dạng YYYYMMDD
            string prefix = "DH" + datePart; // Tiền tố mã đơn hàng
            int lastNumber = 1; // Số thứ tự mặc định

            // Tìm mã đơn hàng có số thứ tự cao nhất trong ngày hiện tại
            var lastOrder = db.DonHangs
                .Where(d => d.MaDonHang.StartsWith(prefix))
                .OrderByDescending(d => d.MaDonHang)
                .FirstOrDefault();

            if (lastOrder != null)
            {
                // Lấy số thứ tự cuối cùng từ mã đơn hàng và tăng lên 1
                string lastCode = lastOrder.MaDonHang;
                lastNumber = int.Parse(lastCode.Substring(prefix.Length)) + 1;
            }

            // Tạo mã đơn hàng mới với hai chữ số cho số thứ tự
            return prefix + lastNumber.ToString();
        }

        //Tạo mã chi tiết đơn hàng tự động
        private string GenerateMaChiTietDonHang()
        {
            string datePart = DateTime.Now.ToString("yyyyMMdd"); // Phần ngày hiện tại theo định dạng YYYYMMDD
            string prefix = "CTDH" + datePart; // Tiền tố mã chi tiết đơn hàng
            int lastNumber = 1; // Số thứ tự mặc định

            // Tìm mã chi tiết đơn hàng có số thứ tự cao nhất trong ngày hiện tại
            var lastDetail = db.ChiTietDonHangs
                .Where(d => d.MaChiTietDonHang.StartsWith(prefix))
                .OrderByDescending(d => d.MaChiTietDonHang)
                .FirstOrDefault();

            if (lastDetail != null)
            {
                // Lấy số thứ tự cuối cùng từ mã chi tiết đơn hàng và tăng lên 1
                string lastCode = lastDetail.MaChiTietDonHang;
                lastNumber = int.Parse(lastCode.Substring(prefix.Length)) + 1;
            }

            // Tạo mã chi tiết đơn hàng mới với hai chữ số cho số thứ tự
            return prefix + lastNumber.ToString();
        }



        //Chức năng Đặt Hàng
        public ActionResult DatHang()
        {
            // Kiểm tra nếu người dùng chưa đăng nhập
            if (Session["khach"] == null)
            {
                TempData["LoginRequired"] = "Bạn chưa đăng nhập !";
                return RedirectToAction("Login_NguoiDung", "DangNhap");
            }

            // Lấy giỏ hàng từ Session
            var gioHang = (List<GioHang>)Session["GioHang"] ?? new List<GioHang>();
            if (!gioHang.Any())
            {
                TempData["CartEmpty"] = "Giỏ hàng của bạn đang trống!";
                return RedirectToAction("Index");
            }

            // Kiểm tra số lượng đặt cho từng sản phẩm
            foreach (var item in gioHang)
            {
                if (item.SoLuong <= 0)
                {
                    TempData["StockError"] = "Số lượng đặt phải lớn hơn 0.";
                    return RedirectToAction("Index");
                }
            }

            // Kiểm tra số lượng tồn kho cho từng sản phẩm
            foreach (var item in gioHang)
            {
                var product = db.SanPhams.FirstOrDefault(p => p.MaSanPham == item.MaSanPham);
                if (product != null && item.SoLuong > product.SoLuong)
                {
                    TempData["StockError"] = "Sản phẩm này không đủ số lượng trong kho.";
                    return RedirectToAction("Index");
                }
            }

            // Lấy thông tin khách hàng từ Session
            var khach = Session["khach"] as UserAccount;

            // Tạo mới đơn hàng
            var donHang = new DonHang
            {
                MaDonHang = GenerateMaDonHang(), // Sử dụng mã đơn hàng tự động
                MaKhachHang = khach.TenDangNhap,
                NgayDat = DateTime.Now,
                DiaChiGiaoHang = khach.KhachHang.DiaChi, // Giả sử địa chỉ lấy từ thông tin khách hàng
                TrangThaiDonHang = "Chờ xử lý"
            };

            db.DonHangs.InsertOnSubmit(donHang);
            db.SubmitChanges();

            // Thêm chi tiết đơn hàng
            foreach (var item in gioHang)
            {
                var chiTietDonHang = new ChiTietDonHang
                {
                    MaChiTietDonHang = GenerateMaChiTietDonHang(), // Sử dụng mã chi tiết đơn hàng tự động
                    MaDonHang = donHang.MaDonHang,
                    MaSanPham = item.MaSanPham,
                    SoLuong = item.SoLuong,
                    GiaDonVi = item.Gia
                };
                db.ChiTietDonHangs.InsertOnSubmit(chiTietDonHang);
            }
            db.SubmitChanges();

            // Xóa giỏ hàng sau khi đặt hàng thành công
            Session["GioHang"] = null;
            TempData["OrderSuccess"] = "Đặt hàng thành công!";

            return RedirectToAction("Index", "GioHang");
        }







    }
}