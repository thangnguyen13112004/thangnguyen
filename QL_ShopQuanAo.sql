USE [master]
GO
/****** Object:  Database [QL_ShopQuanAo]    Script Date: 14/11/2024 6:10:58 AM ******/
CREATE DATABASE [QL_ShopQuanAo]
GO
USE [QL_ShopQuanAo]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 14/11/2024 6:10:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaChiTietDonHang] [varchar](50) NOT NULL,
	[MaDonHang] [varchar](50) NULL,
	[MaSanPham] [varchar](50) NULL,
	[SoLuong] [int] NULL,
	[GiaDonVi] [decimal](10, 2) NULL,
	[MaSize] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 14/11/2024 6:10:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaDanhGia] [varchar](50) NOT NULL,
	[MaSanPham] [varchar](50) NULL,
	[MaKhachHang] [nvarchar](50) NULL,
	[DanhGia] [int] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayDanhGia] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 14/11/2024 6:10:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [varchar](50) NOT NULL,
	[TenDanhMuc] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 14/11/2024 6:10:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [varchar](50) NOT NULL,
	[MaKhachHang] [nvarchar](50) NULL,
	[NgayDat] [datetime] NULL,
	[DiaChiGiaoHang] [nvarchar](255) NULL,
	[TrangThaiDonHang] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 14/11/2024 6:10:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[Ho] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[Tinh] [nvarchar](50) NULL,
	[MaZip] [nvarchar](10) NULL,
	[ChucVu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MaGiamGia]    Script Date: 14/11/2024 6:10:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaGiamGia](
	[MaGiamGia] [varchar](50) NOT NULL,
	[PhanTramGiam] [decimal](5, 2) NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGiamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 14/11/2024 6:10:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[Ho] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](20) NULL,
	[ChucVu] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 14/11/2024 6:10:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [varchar](50) NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[GioiTinh] [nvarchar](255) NOT NULL,
	[MaDanhMuc] [varchar](50) NULL,
	[MaThuongHieu] [varchar](50) NULL,
	[Gia] [decimal](10, 2) NULL,
	[MoTa] [nvarchar](max) NULL,
	[Anh] [varchar](100) NULL,
	[SoLuong] [int] NULL DEFAULT ((0)),
	[TrangThai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPhamMaGiamGia]    Script Date: 14/11/2024 6:10:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPhamMaGiamGia](
	[MaSanPham] [varchar](50) NOT NULL,
	[MaGiamGia] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC,
	[MaGiamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Size]    Script Date: 14/11/2024 6:10:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Size](
	[MaSize] [varchar](50) NOT NULL,
	[MaSanPham] [varchar](50) NULL,
	[MoTaSize] [nvarchar](255) NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 14/11/2024 6:10:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[MaThuongHieu] [varchar](50) NOT NULL,
	[TenThuongHieu] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 14/11/2024 6:10:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[ChucVu] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH00', N'DH20', N'SP05', 1, CAST(800000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH01', N'DH01', N'SP01', 10, CAST(5000000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH02', N'DH01', N'SP02', 7, CAST(4900000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH03', N'DH01', N'SP03', 3, CAST(4500000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH04', N'DH01', N'SP04', 3, CAST(1800000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH05', N'DH01', N'SP05', 10, CAST(8000000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH06', N'DH02', N'SP01', 7, CAST(3500000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH07', N'DH02', N'SP02', 1, CAST(700000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH08', N'DH02', N'SP03', 1, CAST(1500000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH09', N'DH02', N'SP04', 9, CAST(5400000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH10', N'DH02', N'SP05', 1, CAST(800000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH11', N'DH03', N'SP01', 5, CAST(2500000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH12', N'DH03', N'SP02', 10, CAST(7000000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH13', N'DH03', N'SP03', 1, CAST(1500000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH14', N'DH03', N'SP04', 3, CAST(1800000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH15', N'DH03', N'SP05', 2, CAST(1600000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH16', N'DH04', N'SP01', 4, CAST(2000000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH17', N'DH04', N'SP02', 7, CAST(4900000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH18', N'DH04', N'SP03', 4, CAST(6000000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH19', N'DH04', N'SP04', 5, CAST(3000000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH20', N'DH04', N'SP05', 2, CAST(1600000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH21', N'DH05', N'SP01', 5, CAST(2500000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH22', N'DH05', N'SP02', 8, CAST(5600000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH23', N'DH05', N'SP03', 8, CAST(12000000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH24', N'DH05', N'SP04', 7, CAST(4200000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH25', N'DH05', N'SP05', 9, CAST(7200000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH26', N'DH06', N'SP01', 6, CAST(3000000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH27', N'DH06', N'SP02', 6, CAST(4200000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH28', N'DH06', N'SP03', 3, CAST(4500000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH29', N'DH06', N'SP04', 2, CAST(1200000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH30', N'DH06', N'SP05', 1, CAST(800000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH31', N'DH07', N'SP01', 9, CAST(4500000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH32', N'DH07', N'SP02', 4, CAST(2800000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH33', N'DH07', N'SP03', 7, CAST(10500000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH34', N'DH07', N'SP04', 1, CAST(600000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH35', N'DH07', N'SP05', 6, CAST(4800000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH36', N'DH08', N'SP01', 1, CAST(500000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH37', N'DH08', N'SP02', 10, CAST(7000000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH38', N'DH08', N'SP03', 3, CAST(4500000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH39', N'DH08', N'SP04', 3, CAST(1800000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH40', N'DH08', N'SP05', 6, CAST(4800000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH41', N'DH09', N'SP01', 7, CAST(3500000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH42', N'DH09', N'SP02', 1, CAST(700000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH43', N'DH09', N'SP03', 10, CAST(15000000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH44', N'DH09', N'SP04', 8, CAST(4800000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH45', N'DH09', N'SP05', 4, CAST(3200000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH46', N'DH10', N'SP01', 9, CAST(4500000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH47', N'DH10', N'SP02', 6, CAST(4200000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH48', N'DH10', N'SP03', 1, CAST(1500000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH49', N'DH10', N'SP04', 10, CAST(6000000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH50', N'DH10', N'SP05', 8, CAST(6400000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH51', N'DH11', N'SP01', 4, CAST(2000000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH52', N'DH11', N'SP02', 5, CAST(3500000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH53', N'DH11', N'SP03', 1, CAST(1500000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH54', N'DH11', N'SP04', 8, CAST(4800000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH55', N'DH11', N'SP05', 4, CAST(3200000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH56', N'DH12', N'SP01', 9, CAST(4500000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH57', N'DH12', N'SP02', 9, CAST(6300000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH58', N'DH12', N'SP03', 1, CAST(1500000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH59', N'DH12', N'SP04', 6, CAST(3600000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH60', N'DH12', N'SP05', 9, CAST(7200000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH61', N'DH13', N'SP01', 3, CAST(1500000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH62', N'DH13', N'SP02', 10, CAST(7000000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH63', N'DH13', N'SP03', 9, CAST(13500000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH64', N'DH13', N'SP04', 10, CAST(6000000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH65', N'DH13', N'SP05', 9, CAST(7200000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH66', N'DH14', N'SP01', 3, CAST(1500000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH67', N'DH14', N'SP02', 5, CAST(3500000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH68', N'DH14', N'SP03', 3, CAST(4500000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH69', N'DH14', N'SP04', 6, CAST(3600000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH70', N'DH14', N'SP05', 2, CAST(1600000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH71', N'DH15', N'SP01', 9, CAST(4500000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH72', N'DH15', N'SP02', 3, CAST(2100000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH73', N'DH15', N'SP03', 3, CAST(4500000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH74', N'DH15', N'SP04', 8, CAST(4800000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH75', N'DH15', N'SP05', 7, CAST(5600000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH76', N'DH16', N'SP01', 2, CAST(1000000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH77', N'DH16', N'SP02', 2, CAST(1400000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH78', N'DH16', N'SP03', 8, CAST(12000000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH79', N'DH16', N'SP04', 4, CAST(2400000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH80', N'DH16', N'SP05', 1, CAST(800000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH81', N'DH17', N'SP01', 3, CAST(1500000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH82', N'DH17', N'SP02', 8, CAST(5600000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH83', N'DH17', N'SP03', 1, CAST(1500000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH84', N'DH17', N'SP04', 1, CAST(600000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH85', N'DH17', N'SP05', 7, CAST(5600000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH86', N'DH18', N'SP01', 7, CAST(3500000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH87', N'DH18', N'SP02', 8, CAST(5600000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH88', N'DH18', N'SP03', 1, CAST(1500000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH89', N'DH18', N'SP04', 7, CAST(4200000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH90', N'DH18', N'SP05', 4, CAST(3200000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH91', N'DH19', N'SP01', 5, CAST(2500000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH92', N'DH19', N'SP02', 7, CAST(4900000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH93', N'DH19', N'SP03', 3, CAST(4500000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH94', N'DH19', N'SP04', 4, CAST(2400000.00 AS Decimal(10, 2)), N'S010')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH95', N'DH19', N'SP05', 9, CAST(7200000.00 AS Decimal(10, 2)), N'S013')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH96', N'DH20', N'SP01', 2, CAST(1000000.00 AS Decimal(10, 2)), N'S001')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH97', N'DH20', N'SP02', 9, CAST(6300000.00 AS Decimal(10, 2)), N'S004')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH98', N'DH20', N'SP03', 6, CAST(9000000.00 AS Decimal(10, 2)), N'S007')
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi], [MaSize]) VALUES (N'CTDH99', N'DH20', N'SP04', 3, CAST(1800000.00 AS Decimal(10, 2)), N'S010')
GO
INSERT [dbo].[DanhGia] ([MaDanhGia], [MaSanPham], [MaKhachHang], [DanhGia], [NoiDung], [NgayDanhGia]) VALUES (N'DG01', N'SP01', N'user01', 5, N'Sản phẩm tuyệt vời!', CAST(N'2024-11-03 19:29:27.837' AS DateTime))
INSERT [dbo].[DanhGia] ([MaDanhGia], [MaSanPham], [MaKhachHang], [DanhGia], [NoiDung], [NgayDanhGia]) VALUES (N'DG02', N'SP02', N'user02', 4, N'Thích hợp cho thể thao.', CAST(N'2024-11-03 19:29:27.837' AS DateTime))
INSERT [dbo].[DanhGia] ([MaDanhGia], [MaSanPham], [MaKhachHang], [DanhGia], [NoiDung], [NgayDanhGia]) VALUES (N'DG03', N'SP03', N'user03', 5, N'Giày rất êm!', CAST(N'2024-11-03 19:29:27.837' AS DateTime))
INSERT [dbo].[DanhGia] ([MaDanhGia], [MaSanPham], [MaKhachHang], [DanhGia], [NoiDung], [NgayDanhGia]) VALUES (N'DG04', N'SP04', N'user04', 3, N'Chất liệu bình thường.', CAST(N'2024-11-03 19:29:27.837' AS DateTime))
INSERT [dbo].[DanhGia] ([MaDanhGia], [MaSanPham], [MaKhachHang], [DanhGia], [NoiDung], [NgayDanhGia]) VALUES (N'DG05', N'SP05', N'user05', 4, N'Rất đẹp và thời trang.', CAST(N'2024-11-03 19:29:27.837' AS DateTime))
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM01', N'Áo')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM02', N'Quần')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM03', N'Giày')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM04', N'Phụ kiện')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM05', N'Đồ lót')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM06', N'Váy')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM07', N'Áo khoác')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM08', N'Balo')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM09', N'Giày thể thao')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM10', N'Đồ thể thao')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH01', N'user01', CAST(N'2024-11-08 18:38:09.983' AS DateTime), N'123 Đường A, Hà Nội', N'Đã giao')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH02', N'user02', CAST(N'2024-11-09 18:38:09.983' AS DateTime), N'456 Đường B, Hồ Chí Minh', N'Đang giao hàng')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH03', N'user03', CAST(N'2024-10-10 18:38:09.983' AS DateTime), N'789 Đường C, Đà Nẵng', N'Đã giao')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH04', N'user04', CAST(N'2024-08-10 18:38:09.983' AS DateTime), N'321 Đường D, Hải Phòng', N'Đang xử lý')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH05', N'user05', CAST(N'2024-11-01 18:38:09.983' AS DateTime), N'654 Đường E, Khánh Hòa', N'Đã giao')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH06', N'user01', CAST(N'2024-11-03 18:38:09.983' AS DateTime), N'987 Đường F, Thái Nguyên', N'Đang giao hàng')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH07', N'user02', CAST(N'2024-11-02 18:38:09.983' AS DateTime), N'135 Đường G, Bắc Ninh', N'Đang xử lý')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH08', N'user03', CAST(N'2024-11-01 18:38:09.983' AS DateTime), N'246 Đường H, Ninh Bình', N'Đã giao')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH09', N'user04', CAST(N'2024-11-10 18:38:09.983' AS DateTime), N'357 Đường I, Hà Tĩnh', N'Đang xử lý')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH10', N'user05', CAST(N'2024-11-10 18:38:09.983' AS DateTime), N'468 Đường J, Nam Định', N'Đã giao')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH11', N'user01', CAST(N'2024-11-06 18:38:09.983' AS DateTime), N'123 Đường K, Hà Nội', N'Đang xử lý')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH12', N'user02', CAST(N'2024-10-15 18:38:09.983' AS DateTime), N'456 Đường L, Hồ Chí Minh', N'Đang giao hàng')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH13', N'user03', CAST(N'2024-10-20 18:38:09.983' AS DateTime), N'789 Đường M, Đà Nẵng', N'Đã giao')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH14', N'user04', CAST(N'2024-10-25 18:38:09.983' AS DateTime), N'321 Đường N, Hải Phòng', N'Đang xử lý')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH15', N'user05', CAST(N'2024-10-30 18:38:09.983' AS DateTime), N'654 Đường O, Khánh Hòa', N'Đã giao')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH16', N'user01', CAST(N'2024-11-10 18:38:09.983' AS DateTime), N'987 Đường P, Thái Nguyên', N'Đang giao hàng')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH17', N'user02', CAST(N'2024-09-10 18:38:09.983' AS DateTime), N'135 Đường Q, Bắc Ninh', N'Đang xử lý')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH18', N'user03', CAST(N'2024-11-10 18:38:09.983' AS DateTime), N'246 Đường R, Ninh Bình', N'Đã giao')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH19', N'user04', CAST(N'2024-11-08 18:38:09.983' AS DateTime), N'357 Đường S, Hà Tĩnh', N'Đang xử lý')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [DiaChiGiaoHang], [TrangThaiDonHang]) VALUES (N'DH20', N'user05', CAST(N'2024-11-10 18:38:09.983' AS DateTime), N'468 Đường T, Nam Định', N'Đã giao')
INSERT [dbo].[KhachHang] ([TenDangNhap], [Ho], [Ten], [GioiTinh], [Email], [DienThoai], [DiaChi], [ThanhPho], [Tinh], [MaZip], [ChucVu]) VALUES (N'user01', N'Nguyễn Văn', N'A', N'Nam', N'a@gmail.com', N'0123456789', N'123 Đường A', N'Hà Nội', N'Hà Nội', N'100000', N'Khách hàng')
INSERT [dbo].[KhachHang] ([TenDangNhap], [Ho], [Ten], [GioiTinh], [Email], [DienThoai], [DiaChi], [ThanhPho], [Tinh], [MaZip], [ChucVu]) VALUES (N'user02', N'Nguyễn Thị', N'B', N'Nữ', N'b@gmail.com', N'0123456790', N'456 Đường B', N'Hồ Chí Minh', N'Hồ Chí Minh', N'700000', N'Khách hàng')
INSERT [dbo].[KhachHang] ([TenDangNhap], [Ho], [Ten], [GioiTinh], [Email], [DienThoai], [DiaChi], [ThanhPho], [Tinh], [MaZip], [ChucVu]) VALUES (N'user03', N'Trần Văn', N'C', N'Nam', N'c@gmail.com', N'0123456791', N'789 Đường C', N'Đà Nẵng', N'Đà Nẵng', N'500000', N'Khách hàng')
INSERT [dbo].[KhachHang] ([TenDangNhap], [Ho], [Ten], [GioiTinh], [Email], [DienThoai], [DiaChi], [ThanhPho], [Tinh], [MaZip], [ChucVu]) VALUES (N'user04', N'Lê Thị', N'D', N'Nữ', N'd@gmail.com', N'0123456792', N'321 Đường D', N'Hải Phòng', N'Hải Phòng', N'400000', N'Khách hàng')
INSERT [dbo].[KhachHang] ([TenDangNhap], [Ho], [Ten], [GioiTinh], [Email], [DienThoai], [DiaChi], [ThanhPho], [Tinh], [MaZip], [ChucVu]) VALUES (N'user05', N'Phạm Văn', N'E', N'Nam', N'e@gmail.com', N'0123456793', N'654 Đường E', N'Khánh Hòa', N'Khánh Hòa', N'600000', N'Khách hàng')
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [PhanTramGiam], [NgayBatDau], [NgayKetThuc]) VALUES (N'GG01', CAST(10.00 AS Decimal(5, 2)), CAST(N'2024-11-03 19:17:13.430' AS DateTime), CAST(N'2024-12-03 19:17:13.430' AS DateTime))
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [PhanTramGiam], [NgayBatDau], [NgayKetThuc]) VALUES (N'GG02', CAST(15.00 AS Decimal(5, 2)), CAST(N'2024-11-03 19:17:13.430' AS DateTime), CAST(N'2024-12-03 19:17:13.430' AS DateTime))
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [PhanTramGiam], [NgayBatDau], [NgayKetThuc]) VALUES (N'GG03', CAST(5.00 AS Decimal(5, 2)), CAST(N'2024-11-03 19:17:13.430' AS DateTime), CAST(N'2024-12-03 19:17:13.430' AS DateTime))
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [PhanTramGiam], [NgayBatDau], [NgayKetThuc]) VALUES (N'GG04', CAST(20.00 AS Decimal(5, 2)), CAST(N'2024-11-03 19:17:13.430' AS DateTime), CAST(N'2024-12-03 19:17:13.430' AS DateTime))
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [PhanTramGiam], [NgayBatDau], [NgayKetThuc]) VALUES (N'GG05', CAST(25.00 AS Decimal(5, 2)), CAST(N'2024-11-03 19:17:13.430' AS DateTime), CAST(N'2024-12-03 19:17:13.430' AS DateTime))
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [PhanTramGiam], [NgayBatDau], [NgayKetThuc]) VALUES (N'GG06', CAST(30.00 AS Decimal(5, 2)), CAST(N'2024-11-03 19:17:13.430' AS DateTime), CAST(N'2024-12-03 19:17:13.430' AS DateTime))
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [PhanTramGiam], [NgayBatDau], [NgayKetThuc]) VALUES (N'GG07', CAST(10.00 AS Decimal(5, 2)), CAST(N'2024-11-03 19:17:13.430' AS DateTime), CAST(N'2024-12-03 19:17:13.430' AS DateTime))
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [PhanTramGiam], [NgayBatDau], [NgayKetThuc]) VALUES (N'GG08', CAST(50.00 AS Decimal(5, 2)), CAST(N'2024-11-03 19:17:13.430' AS DateTime), CAST(N'2024-12-03 19:17:13.430' AS DateTime))
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [PhanTramGiam], [NgayBatDau], [NgayKetThuc]) VALUES (N'GG09', CAST(5.00 AS Decimal(5, 2)), CAST(N'2024-11-03 19:17:13.430' AS DateTime), CAST(N'2024-12-03 19:17:13.430' AS DateTime))
INSERT [dbo].[MaGiamGia] ([MaGiamGia], [PhanTramGiam], [NgayBatDau], [NgayKetThuc]) VALUES (N'GG10', CAST(15.00 AS Decimal(5, 2)), CAST(N'2024-11-03 19:17:13.430' AS DateTime), CAST(N'2024-12-03 19:17:13.430' AS DateTime))
INSERT [dbo].[NhanVien] ([TenDangNhap], [Ho], [Ten], [GioiTinh], [Email], [DienThoai], [ChucVu]) VALUES (N'NV001', N'Nguyễn Văn', N'A', N'Nam', N'nva@gmail.com', N'0123456700', N'Nhân viên')
INSERT [dbo].[NhanVien] ([TenDangNhap], [Ho], [Ten], [GioiTinh], [Email], [DienThoai], [ChucVu]) VALUES (N'nv01', N'Nguyễn Văn', N'K', N'Nam', N'nvk@gmail.com', N'0123456799', N'Nhân viên')
INSERT [dbo].[NhanVien] ([TenDangNhap], [Ho], [Ten], [GioiTinh], [Email], [DienThoai], [ChucVu]) VALUES (N'nv02', N'Nguyễn Thị', N'L', N'Nữ', N'nvl@gmail.com', N'0123456800', N'Nhân viên')
INSERT [dbo].[NhanVien] ([TenDangNhap], [Ho], [Ten], [GioiTinh], [Email], [DienThoai], [ChucVu]) VALUES (N'nv03', N'Trần Văn', N'M', N'Nam', N'nvm@gmail.com', N'0123456801', N'Nhân viên')
INSERT [dbo].[NhanVien] ([TenDangNhap], [Ho], [Ten], [GioiTinh], [Email], [DienThoai], [ChucVu]) VALUES (N'nv04', N'Lê Thị', N'N', N'Nữ', N'lvn@gmail.com', N'0123456802', N'Nhân viên')
INSERT [dbo].[NhanVien] ([TenDangNhap], [Ho], [Ten], [GioiTinh], [Email], [DienThoai], [ChucVu]) VALUES (N'nv05', N'Phạm Văn', N'O', N'Nam', N'pvo@gmail.com', N'0123456803', N'Nhân viên')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP01', N'Áo thun Nike', N'Nam', N'DM01', N'TH01', CAST(500000.00 AS Decimal(10, 2)), N'Áo thun thể thao Nike, chất liệu cotton thoáng mát.', N'aothun_nike.png', 100, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP02', N'Quần jogger Adidas', N'Nam', N'DM02', N'TH02', CAST(700000.00 AS Decimal(10, 2)), N'Quần jogger Adidas, phong cách năng động.', N'quan_adidas.png', 134, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP03', N'Giày thể thao Puma', N'Nam', N'DM03', N'TH06', CAST(1500000.00 AS Decimal(10, 2)), N'Giày thể thao Puma, đệm nhẹ, êm ái.', N'product_5.png', 110, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP04', N'Váy xòe Zara', N'Nữ', N'DM06', N'TH03', CAST(600000.00 AS Decimal(10, 2)), N'Váy xòe thời trang, thích hợp cho mùa hè.', NULL, 100, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP05', N'Áo khoác H&M', N'Nữ', N'DM07', N'TH04', CAST(800000.00 AS Decimal(10, 2)), N'Áo khoác H&M, phù hợp cho mùa đông.', N'product_1.png', 100, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP06', N'Giày cao gót', N'Nữ', N'DM03', N'TH01', CAST(1200000.00 AS Decimal(10, 2)), N'Giày cao gót thời trang, tôn dáng.', NULL, 0, N'Hết hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP07', N'Balo thời trang', N'Nam', N'DM08', N'TH05', CAST(450000.00 AS Decimal(10, 2)), N'Balo thời trang, đựng vừa laptop.', NULL, 0, N'Hết hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP08', N'Áo hoodie Uniqlo', N'Nam', N'DM01', N'TH05', CAST(600000.00 AS Decimal(10, 2)), N'Áo hoodie chất liệu mềm mại, ấm áp.', NULL, 0, N'Hết hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP09', N'Giày Converse', N'Nữ', N'DM03', N'TH08', CAST(900000.00 AS Decimal(10, 2)), N'Giày Converse, phong cách cổ điển.', NULL, 0, N'Hết hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP10', N'Đồ thể thao Nike', N'Nam', N'DM10', N'TH01', CAST(750000.00 AS Decimal(10, 2)), N'Bộ đồ thể thao Nike, thoải mái khi vận động.', NULL, 15, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP11', N'Áo Khoác Dù Nón Tháo Rời, 2 Lớp AKD0045', N'Nam', N'DM07', N'TH01', CAST(380000.00 AS Decimal(10, 2)), N'Áo khoác Dù 2 lớp, nón tháo rời. Chất liệu vải dù mềm mịn, lót trong thoáng mát, có túi trong và ngoài. Nón có thể tháo rời phần cổ, gọn gàng và linh động mọi thời tiết, dây kéo YKK cao cấp. Form regular rộng rãi, phù hợp với mọi vóc dáng. Kín đáo và thoáng mát trong mọi hoạt động, diện đi nắng hoặc mưa nhỏ đều đẹp.', N'1.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP12', N'Áo Khoác Dù Nón Tháo Rời, 2 Lớp AKD0045', N'Nam', N'DM07', N'TH01', CAST(380000.00 AS Decimal(10, 2)), N'Áo khoác Dù 2 lớp, nón tháo rời. Chất liệu vải dù mềm mịn, lót trong thoáng mát, có túi trong và ngoài. Nón có thể tháo rời phần cổ, gọn gàng và linh động mọi thời tiết, dây kéo YKK cao cấp. Form regular rộng rãi, phù hợp với mọi vóc dáng. Kín đáo và thoáng mát trong mọi hoạt động, diện đi nắng hoặc mưa nhỏ đều đẹp.', N'2.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP13', N'Áo Khoác Dù 2 Lớp AKD0030', N'Nam', N'DM07', N'TH01', CAST(295000.00 AS Decimal(10, 2)), N'Áo khoác Dù năng động, thoải mái. Phong cách đơn giản, dế mặc, from áo chuẩn đẹp. Chất liệu: vải dù cao cấp, lót trong mịn mát. 

Hướng dẫn bảo quản:

- Không dùng hóa chất tẩy.

- Ủi ở nhiệt độ thích hợp, hạn chế dùng máy sấy.

- Giặt ở chế độ bình thường, với đồ có màu tương tự.', N'3.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP14', N'Áo Khoác Dù 2 Lớp AKD0030', N'Nam', N'DM07', N'TH01', CAST(295000.00 AS Decimal(10, 2)), N'Áo khoác Dù 2 lớp năng động, thoải mái. Phong cách đơn giản, dế mặc, from áo chuẩn đẹp. 

Có túi trong, dây rút phần hông, túi kéo YKK 2 bên tiện dụng. Mặc đi nắng, mưa nhẹ tiện lợi.

Chất liệu: vải dù cao cấp trượt nước, lót trong mịn mát. ', N'4.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP15', N'Áo Khoác Nỉ Có Nón Regular AKN0116', N'Nam', N'DM07', N'TH01', CAST(350000.00 AS Decimal(10, 2)), N'Áo khoác thun nỉ, đơn giản và năng động. Túi ngoài có dây kéo, mặt trong có túi tiện dụng. Mặc đi nắng hoặc trời se lạnh cực tốt. Phiên bản mới cải tiến với form dáng Regular rộng rãi, bo thun cotton ở cổ tay và eo tăng thêm sự thoải mái khi mặc.

Chất liệu: vải nỉ da cá cao cấp

Hướng dẫn bảo quản:

- Không dùng hóa chất tẩy.

- Ủi ở nhiệt độ thích hợp, hạn chế dùng máy sấy.

- Giặt ở chế độ bình thường, với đồ có màu tương tự.', N'5.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP16', N'Áo Thun Polo Nam ATP0039', N'Nam', N'DM10', N'TH01', CAST(280000.00 AS Decimal(10, 2)), N'Áo thun Polo cổ bẻ đơn giản và dễ mặc trong mọi dịp. Bo cổ cotton được dệt riêng. Chất vải tổ ong, mắt xích bắt mắt, mềm mại, co giãn và thoáng khí. Form regular thoải mái, dễ chịu khi mặc, 4 màu lựa chọn', N'6.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP17', N'Áo Thun Polo Nam ATP0039', N'Nam', N'DM10', N'TH01', CAST(280000.00 AS Decimal(10, 2)), N'Áo thun Polo cổ bẻ đơn giản và dễ mặc trong mọi dịp. Bo cổ cotton được dệt riêng. Chất vải tổ ong, mắt xích bắt mắt, mềm mại, co giãn và thoáng khí. Form regular thoải mái, dễ chịu khi mặc, 4 màu lựa chọn', N'7.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP18', N'Áo Thun Polo Nam ATP0039', N'Nam', N'DM10', N'TH01', CAST(280000.00 AS Decimal(10, 2)), N'Áo thun Polo cổ bẻ đơn giản và dễ mặc trong mọi dịp. Bo cổ cotton được dệt riêng. Chất vải tổ ong, mắt xích bắt mắt, mềm mại, co giãn và thoáng khí. Form regular thoải mái, dễ chịu khi mặc, 4 màu lựa chọn', N'8.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP19', N'Áo Thun Polo Nam ATP0039', N'Nam', N'DM10', N'TH01', CAST(280000.00 AS Decimal(10, 2)), N'Áo thun Polo cổ bẻ đơn giản và dễ mặc trong mọi dịp. Bo cổ cotton được dệt riêng. Chất vải tổ ong, mắt xích bắt mắt, mềm mại, co giãn và thoáng khí. Form regular thoải mái, dễ chịu khi mặc, 4 màu lựa chọn', N'9.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP20', N'Áo Thun Polo Cotton 100% ATP0043', N'Nam', N'DM10', N'TH01', CAST(320000.00 AS Decimal(10, 2)), N'Ra mắt dòng áo thun Polo chất liệu cotton 100%, co giãn 4 chiều, bo cổ dệt kim cao cấp. Đảm bảo thoáng mát và thoải mái cả ngày dài. Form slimfit vừa vặn, mix match theo nhiều phong cách và item khác nhau, đến Kenta thử ngay để cảm nhận chất liệu.', N'10.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP21', N'Quần Short Kaki Nam QSK0065', N'Nam', N'DM02', N'TH01', CAST(220000.00 AS Decimal(10, 2)), N'Quần Short Kaki nam năng động trẻ trung, from slim vừa vặn tôn dáng và không quá ôm sát, tạo sự thoải mái cho người mặc. Lót trong may hoàn thiện sắc nét, dây kéo YKK bền bỉ trong quá trình sử dụng. Quần short kaki dễ dàng phối với áo thun, polo đa dạng trong từng phong cách.

Chất liệu: vải kaki co giãn, bền màu, vải siêu mát và ít nhăn khi mặc.', N'11.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP22', N'Quần Short Kaki Nam QSK0065', N'Nam', N'DM02', N'TH01', CAST(220000.00 AS Decimal(10, 2)), N'Quần Short Kaki nam năng động trẻ trung, from slim vừa vặn tôn dáng và không quá ôm sát, tạo sự thoải mái cho người mặc. Lót trong may hoàn thiện sắc nét, dây kéo YKK bền bỉ trong quá trình sử dụng. Quần short kaki dễ dàng phối với áo thun, polo đa dạng trong từng phong cách.

Chất liệu: vải kaki co giãn, bền màu, vải siêu mát và ít nhăn khi mặc.', N'12.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP23', N'Quần Short Kaki Nam QSK0065', N'Nam', N'DM02', N'TH01', CAST(220000.00 AS Decimal(10, 2)), N'Quần Short Kaki nam năng động trẻ trung, from slim vừa vặn tôn dáng và không quá ôm sát, tạo sự thoải mái cho người mặc. Lót trong may hoàn thiện sắc nét, dây kéo YKK bền bỉ trong quá trình sử dụng. Quần short kaki dễ dàng phối với áo thun, polo đa dạng trong từng phong cách.

Chất liệu: vải kaki co giãn, bền màu, vải siêu mát và ít nhăn khi mặc.', N'13.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP24', N'Quần Short Kaki Nam QSK0065', N'Nam', N'DM02', N'TH01', CAST(220000.00 AS Decimal(10, 2)), N'Quần Short Kaki nam năng động trẻ trung, from slim vừa vặn tôn dáng và không quá ôm sát, tạo sự thoải mái cho người mặc. Lót trong may hoàn thiện sắc nét, dây kéo YKK bền bỉ trong quá trình sử dụng. Quần short kaki dễ dàng phối với áo thun, polo đa dạng trong từng phong cách.

Chất liệu: vải kaki co giãn, bền màu, vải siêu mát và ít nhăn khi mặc.', N'14.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP25', N'Quần Short Kaki Nam QSK0065', N'Nam', N'DM02', N'TH01', CAST(220000.00 AS Decimal(10, 2)), N'Quần Short Kaki nam năng động trẻ trung, from slim vừa vặn tôn dáng và không quá ôm sát, tạo sự thoải mái cho người mặc. Lót trong may hoàn thiện sắc nét, dây kéo YKK bền bỉ trong quá trình sử dụng. Quần short kaki dễ dàng phối với áo thun, polo đa dạng trong từng phong cách.

Chất liệu: vải kaki co giãn, bền màu, vải siêu mát và ít nhăn khi mặc.', N'15.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP26', N'Sơ Mi Nam Trắng Vải Lụa Dày SMD0089', N'Nam', N'DM01', N'TH01', CAST(295000.00 AS Decimal(10, 2)), N'Sơ mi tay dài luôn sang trọng, lịch lãm. Chất vải lụa dày mango thoáng mát và chất lượng, thấm hút cực tốt, định lượng vải dày dặn chất lượng nhưng mặc lên cực mát. Đường may cuốn sườn tinh tế, form cực chuẩn. Chất vải ít nhăn, mềm mại tuyệt đối, hạn chế nhăn ra co rút và kháng khuẩn. Form dáng Slimfit ôm nhẹ, vừa vặn và tôn dáng tối đa khi mặc. 

Chất liệu vải lụa mango dày dặn: Giữ form dáng tốt, ít nhăn.Thân thiện với làn da. Mau khô. Hiện có 6 màu để quý khách lựa chọn', N'16.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP27', N'Sơ Mi Nam Xanh Vải Lụa Dày SMD0099', N'Nam', N'DM01', N'TH01', CAST(295000.00 AS Decimal(10, 2)), N'Sơ mi tay dài luôn sang trọng, lịch lãm. Chất vải lụa dày mango thoáng mát và chất lượng, thấm hút cực tốt, định lượng vải dày dặn chất lượng nhưng mặc lên cực mát. Đường may cuốn sườn tinh tế, form cực chuẩn. Chất vải ít nhăn, mềm mại tuyệt đối, hạn chế nhăn ra co rút và kháng khuẩn. Form dáng Slimfit ôm nhẹ, vừa vặn và tôn dáng tối đa khi mặc. 

Chất liệu vải lụa mango dày dặn: Giữ form dáng tốt, ít nhăn.Thân thiện với làn da. Mau khô ', N'17.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP28', N'Sơ Mi Nam Kem Vải Lụa Dày SMD0100', N'Nam', N'DM01', N'TH01', CAST(295000.00 AS Decimal(10, 2)), N'Sơ mi tay dài luôn sang trọng, lịch lãm. Chất vải lụa dày mango thoáng mát và chất lượng, thấm hút cực tốt, định lượng vải dày dặn chất lượng nhưng mặc lên cực mát. Đường may cuốn sườn tinh tế, form cực chuẩn. Chất vải ít nhăn, mềm mại tuyệt đối, hạn chế nhăn ra co rút và kháng khuẩn. Form dáng Slimfit ôm nhẹ, vừa vặn và tôn dáng tối đa khi mặc. 

Chất liệu vải lụa mango dày dặn: Giữ form dáng tốt, ít nhăn.Thân thiện với làn da. Mau khô ', N'18.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP29', N'Sơ Mi Nam Đen Vải Lụa Dày SMD0090', N'Nam', N'DM01', N'TH01', CAST(295000.00 AS Decimal(10, 2)), N'Sơ mi tay dài luôn sang trọng, lịch lãm. Chất vải lụa dày mango thoáng mát và chất lượng, thấm hút cực tốt, định lượng vải dày dặn chất lượng nhưng mặc lên cực mát. Đường may cuốn sườn tinh tế, form cực chuẩn. Chất vải ít nhăn, mềm mại tuyệt đối, hạn chế nhăn ra co rút và kháng khuẩn. Form dáng Slimfit ôm nhẹ, vừa vặn và tôn dáng tối đa khi mặc. ', N'19.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GioiTinh], [MaDanhMuc], [MaThuongHieu], [Gia], [MoTa], [Anh], [SoLuong], [TrangThai]) VALUES (N'SP30', N'Sơ Mi Nam Trắng Giấu Nút SMD0081', N'Nam', N'DM01', N'TH01', CAST(255000.00 AS Decimal(10, 2)), N'Sơ mi nam tay dài luôn sang trọng, lịch lãm. Chất vải thoáng mát và chất lượng, thấm hút cực tốt, chất liệu lụa dày. Đường may cuốn sườn tinh tế, form cực chuẩn. Chất vải ít nhăn, mềm mại tuyệt đối, hạn chế nhăn ra co rút và kháng khuẩn. Form dáng Slimfit ôm nhẹ, vừa vặn và tôn dáng tối đa khi mặc.', N'20.jpg', 10, N'Còn hàng')
INSERT [dbo].[SanPhamMaGiamGia] ([MaSanPham], [MaGiamGia]) VALUES (N'SP01', N'GG01')
INSERT [dbo].[SanPhamMaGiamGia] ([MaSanPham], [MaGiamGia]) VALUES (N'SP02', N'GG02')
INSERT [dbo].[SanPhamMaGiamGia] ([MaSanPham], [MaGiamGia]) VALUES (N'SP03', N'GG03')
INSERT [dbo].[SanPhamMaGiamGia] ([MaSanPham], [MaGiamGia]) VALUES (N'SP04', N'GG04')
INSERT [dbo].[SanPhamMaGiamGia] ([MaSanPham], [MaGiamGia]) VALUES (N'SP05', N'GG05')
INSERT [dbo].[SanPhamMaGiamGia] ([MaSanPham], [MaGiamGia]) VALUES (N'SP06', N'GG06')
INSERT [dbo].[SanPhamMaGiamGia] ([MaSanPham], [MaGiamGia]) VALUES (N'SP07', N'GG01')
INSERT [dbo].[SanPhamMaGiamGia] ([MaSanPham], [MaGiamGia]) VALUES (N'SP08', N'GG02')
INSERT [dbo].[SanPhamMaGiamGia] ([MaSanPham], [MaGiamGia]) VALUES (N'SP09', N'GG03')
INSERT [dbo].[SanPhamMaGiamGia] ([MaSanPham], [MaGiamGia]) VALUES (N'SP10', N'GG04')
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S001', N'SP01', N'S', 100)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S002', N'SP01', N'M', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S003', N'SP01', N'L', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S004', N'SP02', N'S', 100)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S005', N'SP02', N'M', 34)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S006', N'SP02', N'L', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S007', N'SP03', N'39', 100)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S008', N'SP03', N'40', 10)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S009', N'SP03', N'41', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S010', N'SP04', N'S', 100)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S011', N'SP04', N'M', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S012', N'SP04', N'L', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S013', N'SP05', N'S', 100)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S014', N'SP05', N'M', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S015', N'SP05', N'L', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S016', N'SP06', N'36', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S017', N'SP06', N'37', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S018', N'SP06', N'38', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S019', N'SP07', N'S', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S020', N'SP07', N'M', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S021', N'SP07', N'L', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S022', N'SP08', N'S', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S023', N'SP08', N'M', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S024', N'SP08', N'L', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S025', N'SP09', N'36', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S026', N'SP09', N'37', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S027', N'SP09', N'38', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S028', N'SP10', N'S', 0)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S029', N'SP10', N'M', 15)
INSERT [dbo].[Size] ([MaSize], [MaSanPham], [MoTaSize], [SoLuong]) VALUES (N'S030', N'SP10', N'L', 0)
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (N'TH01', N'Nike')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (N'TH02', N'Adidas')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (N'TH03', N'Zara')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (N'TH04', N'H&M')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (N'TH05', N'Uniqlo')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (N'TH06', N'Puma')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (N'TH07', N'Levi’s')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (N'TH08', N'Converse')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (N'TH09', N'Forever 21')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (N'TH10', N'Vans')
INSERT [dbo].[UserAccount] ([TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'NV001', N'pass1', N'Nhân viên')
INSERT [dbo].[UserAccount] ([TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'nv01', N'password6', N'Nhân viên')
INSERT [dbo].[UserAccount] ([TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'nv02', N'password7', N'Nhân viên')
INSERT [dbo].[UserAccount] ([TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'nv03', N'password8', N'Nhân viên')
INSERT [dbo].[UserAccount] ([TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'nv04', N'password9', N'Nhân viên')
INSERT [dbo].[UserAccount] ([TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'nv05', N'password10', N'Nhân viên')
INSERT [dbo].[UserAccount] ([TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'user01', N'password1', N'Khách hàng')
INSERT [dbo].[UserAccount] ([TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'user02', N'password2', N'Khách hàng')
INSERT [dbo].[UserAccount] ([TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'user03', N'password3', N'Khách hàng')
INSERT [dbo].[UserAccount] ([TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'user04', N'password4', N'Khách hàng')
INSERT [dbo].[UserAccount] ([TenDangNhap], [MatKhau], [ChucVu]) VALUES (N'user05', N'password5', N'Khách hàng')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KhachHan__A9D105341D965B1A]    Script Date: 14/11/2024 6:10:58 AM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KhachHan__A9D10534437D4618]    Script Date: 14/11/2024 6:10:58 AM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__NhanVien__A9D1053453B3B9C3]    Script Date: 14/11/2024 6:10:58 AM ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__NhanVien__A9D1053486CDB6F8]    Script Date: 14/11/2024 6:10:58 AM ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaSize])
REFERENCES [dbo].[Size] ([MaSize])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaSize])
REFERENCES [dbo].[Size] ([MaSize])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([TenDangNhap])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([TenDangNhap])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([TenDangNhap])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([TenDangNhap])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[UserAccount] ([TenDangNhap])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[UserAccount] ([TenDangNhap])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[UserAccount] ([TenDangNhap])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[UserAccount] ([TenDangNhap])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([MaThuongHieu])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([MaThuongHieu])
GO
ALTER TABLE [dbo].[SanPhamMaGiamGia]  WITH CHECK ADD FOREIGN KEY([MaGiamGia])
REFERENCES [dbo].[MaGiamGia] ([MaGiamGia])
GO
ALTER TABLE [dbo].[SanPhamMaGiamGia]  WITH CHECK ADD FOREIGN KEY([MaGiamGia])
REFERENCES [dbo].[MaGiamGia] ([MaGiamGia])
GO
ALTER TABLE [dbo].[SanPhamMaGiamGia]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[SanPhamMaGiamGia]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[Size]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[Size]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD CHECK  (([ChucVu]=N'Khách hàng'))
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD CHECK  (([ChucVu]=N'Khách hàng'))
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [CK__KhachHang__GioiT__3F466844] CHECK  (([GioiTinh]=N'Nữ' OR [GioiTinh]=N'Nam'))
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [CK__KhachHang__GioiT__3F466844]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([ChucVu]=N'Nhân viên'))
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([ChucVu]=N'Nhân viên'))
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([GioiTinh]=N'Nữ' OR [GioiTinh]=N'Nam'))
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([GioiTinh]=N'Nữ' OR [GioiTinh]=N'Nam'))
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [CK__SanPham__GioiTin__3B75D760] CHECK  (([GioiTinh]=N'Nữ' OR [GioiTinh]=N'Nam'))
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [CK__SanPham__GioiTin__3B75D760]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD CHECK  (([SoLuong]>=(0)))
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD CHECK  (([SoLuong]>=(0)))
GO
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD CHECK  (([ChucVu]=N'Khách hàng' OR [ChucVu]=N'Nhân viên'))
GO
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD CHECK  (([ChucVu]=N'Khách hàng' OR [ChucVu]=N'Nhân viên'))
GO
/****** Object:  Trigger [dbo].[trg_UpdateProductQuantity]    Script Date: 14/11/2024 6:10:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[trg_UpdateProductQuantity]
ON [dbo].[ChiTietDonHang]
AFTER INSERT, UPDATE
AS
BEGIN
    -- Giảm số lượng sản phẩm khi một chi tiết đơn hàng được thêm hoặc cập nhật
    UPDATE SanPham
    SET SoLuong = SanPham.SoLuong - i.SoLuong
    FROM SanPham
    INNER JOIN inserted i ON SanPham.MaSanPham = i.MaSanPham
    WHERE SanPham.SoLuong >= i.SoLuong; -- Đảm bảo không bị âm số lượng tồn kho

    -- Trường hợp nếu không đủ số lượng trong kho, có thể đưa ra thông báo lỗi
    IF EXISTS (SELECT * FROM SanPham sp INNER JOIN inserted i ON sp.MaSanPham = i.MaSanPham WHERE sp.SoLuong < 0)
    BEGIN
        RAISERROR ('Không đủ hàng trong kho để đáp ứng đơn hàng', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO
/****** Object:  Trigger [dbo].[trg_UpdateTrangThaiSanPham]    Script Date: 14/11/2024 6:10:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_UpdateTrangThaiSanPham]
ON [dbo].[SanPham]
AFTER INSERT,UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Cập nhật trạng thái thành 'Hết hàng' khi SoLuong = 0
    UPDATE dbo.SanPham
    SET TrangThai = N'Hết hàng'
    WHERE SoLuong = 0 AND MaSanPham IN (SELECT MaSanPham FROM inserted);

    -- Cập nhật trạng thái thành 'Còn hàng' khi SoLuong > 0
    UPDATE dbo.SanPham
    SET TrangThai = N'Còn hàng'
    WHERE SoLuong > 0 AND MaSanPham IN (SELECT MaSanPham FROM inserted);
END;

GO
/****** Object:  Trigger [dbo].[tri_updateSoLuong]    Script Date: 14/11/2024 6:10:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tri_updateSoLuong]
ON [dbo].[Size]
FOR INSERT, UPDATE
AS
BEGIN
    UPDATE SanPham
    SET SoLuong = sp.SoLuong + i.SoLuong
    FROM SanPham sp
    INNER JOIN inserted i ON sp.MaSanPham = i.MaSanPham;
END;

GO
USE [master]
GO
ALTER DATABASE [QL_ShopQuanAo] SET  READ_WRITE 
GO


--select * from DonHang