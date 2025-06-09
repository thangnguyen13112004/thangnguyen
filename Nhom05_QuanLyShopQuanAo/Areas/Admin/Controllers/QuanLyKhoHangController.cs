using Nhom05_QuanLyShopQuanAo.Areas.Admin.Data;
using Nhom05_QuanLyShopQuanAo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Nhom05_QuanLyShopQuanAo.Areas.Admin.Controllers
{
    public class QuanLyKhoHangController : Controller
    {
        // GET: Admin/QuanLyKhoHang
        ShopQuanAoDataContext db = new ShopQuanAoDataContext();

        [HttpGet]
        public List<SanPhamInfor> loadctsp(string MaDanhMuc)
        {
            var sanPhams = string.IsNullOrEmpty(MaDanhMuc)
                           ? db.SanPhams.ToList()
                           : db.SanPhams.Where(sp => sp.MaDanhMuc == MaDanhMuc).ToList();

            List<SanPhamInfor> spIn4s = new List<SanPhamInfor>();
            var sizes = db.Sizes.ToList();

            foreach (var sanPham in sanPhams)
            {
                string DM = db.DanhMucs.FirstOrDefault(d => sanPham.MaDanhMuc == d.MaDanhMuc)?.TenDanhMuc ?? "N/A";

                var productSizes = sizes.Where(size => size.MaSanPham == sanPham.MaSanPham);
                if (productSizes.Any())
                {
                    foreach (var size in productSizes)
                    {
                        if (size.SoLuong > 0)
                            spIn4s.Add(new SanPhamInfor(sanPham.MaSanPham, sanPham.TenSanPham, DM, size.SoLuong, size.MoTaSize));
                    }
                }
                else
                {
                    if (sanPham.SoLuong > 0)
                        spIn4s.Add(new SanPhamInfor(sanPham.MaSanPham, sanPham.TenSanPham, DM, sanPham.SoLuong, "Không có size"));
                }
            }
            return spIn4s;
        }

        public List<SanPhamInfor> loadsp(string MaDanhMuc)
        {
            var sanPhams = string.IsNullOrEmpty(MaDanhMuc)
                           ? db.SanPhams.ToList()
                           : db.SanPhams.Where(sp => sp.MaDanhMuc == MaDanhMuc).ToList();

            List<SanPhamInfor> spIn4s = new List<SanPhamInfor>();

            foreach (var sanPham in sanPhams)
            {
                string DM = db.DanhMucs.FirstOrDefault(d => sanPham.MaDanhMuc == d.MaDanhMuc)?.TenDanhMuc ?? "N/A";
                spIn4s.Add(new SanPhamInfor(sanPham.MaSanPham, sanPham.TenSanPham, DM, null, "Không có size"));
            }
            return spIn4s;
        }

        public ActionResult Index()
        {
            var ctsanphams = loadctsp("");
            ViewBag.SoLuong = ctsanphams.Sum(x => x.SoLuong ?? 0);
            ViewBag.DanhMuc = db.DanhMucs.ToList();
            return View(ctsanphams);
        }

        [HttpPost]
        public ActionResult Index(string MaDanhMuc)
        {
            var ctsanphams = loadctsp(MaDanhMuc);
            ViewBag.SoLuong = ctsanphams.Sum(x => x.SoLuong ?? 0);
            ViewBag.DanhMuc = db.DanhMucs.ToList();
            return View(ctsanphams);
        }

        [HttpGet]
        public ActionResult ChonSanPham()
        {
            var ctsanphams = loadsp("");
            ViewBag.DanhMuc = db.DanhMucs.ToList();
            return View(ctsanphams);
        }

        [HttpPost]
        public ActionResult ChonSanPham(string MaDanhMuc)
        {
            var ctsanphams = loadsp(MaDanhMuc);
            ViewBag.DanhMuc = db.DanhMucs.ToList();
            return View(ctsanphams);
        }

        [HttpGet]
        public ActionResult AddKhoHang(string id)
        {
            var sanpham = db.SanPhams.FirstOrDefault(ct => ct.MaSanPham == id);
            if (sanpham == null)
            {
                return HttpNotFound();
            }

            ViewBag.DanhMuc = db.DanhMucs.FirstOrDefault(dm => sanpham.MaDanhMuc == dm.MaDanhMuc)?.TenDanhMuc ?? "N/A";

            var sizes = db.Sizes.Where(s => s.MaSanPham == sanpham.MaSanPham).ToList();
            ViewBag.Size = sizes.Any()
            ? sizes
            : new List<Nhom05_QuanLyShopQuanAo.Models.Size> { new Nhom05_QuanLyShopQuanAo.Models.Size { MaSize = null, MoTaSize = "Không có size" } };


            return View(sanpham);
        }

        [HttpPost]
        public ActionResult AddKhoHang(string MaSanPham, string Size, int SoLuong)
        {
            if (ModelState.IsValid)
            {
                var selectedSize = db.Sizes.FirstOrDefault(s => s.MaSize == Size);
                if (selectedSize != null)
                {
                    selectedSize.SoLuong += SoLuong;
                }
                else
                {
                    var sanpham = db.SanPhams.FirstOrDefault(sp => MaSanPham == sp.MaSanPham);
                    sanpham.SoLuong += SoLuong;
                }
                db.SubmitChanges();
                return RedirectToAction("Index", "QuanLyKhoHang");
            }
            return View();
        }



    }
}