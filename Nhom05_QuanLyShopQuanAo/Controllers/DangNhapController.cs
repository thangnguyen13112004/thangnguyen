using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;
using System.Configuration;
using Nhom05_QuanLyShopQuanAo.Models;

namespace Nhom05_QuanLyShopQuanAo.Controllers
{
    public class DangNhapController : Controller
    {
        public string str;
        SqlConnection conn;
        public DangNhapController()
        {
            str = ConfigurationManager.ConnectionStrings["QLSHOPQUANAO"].ConnectionString;
            conn = new SqlConnection(str);
        }
        // GET: DangNhap
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(string manv,string mk)
        {
            if (ModelState.IsValid)
                conn.Open();
            string query = "SELECT count(*) FROM NhanVien WHERE TenDangNhap = '"+manv+ "' AND MatKhau = '" + mk + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            int kq = (int)cmd.ExecuteScalar();
            if (kq > 0)
            {
                return RedirectToAction("Index", "Home");
            }
            else
            {
                ViewBag.ErrorMessage = "Invalid Username or Password!";
                return View();
            }
        }

        
    }
}