Create database ToyShop
go
use ToyShop
go

/*TÀI KHOẢN*/
Create table TaiKhoan
(MaNguoiDung int IDENTITY(1,1) NOT NULL,
	HoTen nvarchar(50) NULL,
	Email varchar(50) NULL,
	Dienthoai varchar(50) NULL,
	Matkhau varchar(50) NULL,
	IDQuyen int NULL,
	Diachi nvarchar(100) NULL,
	primary key(MaNguoiDung));

/*PHÂN QUYỀN*/
Create table PhanQuyen
(IDQuyen int IDENTITY(1,1) NOT NULL,
	TenQuyen nvarchar(20) NULL,
	primary key(IDQuyen));

/*NHÀ CUNG CẤP*/
Create table NhaCungCap
(MaNCC int IDENTITY(1,1) NOT NULL, 
	TenNCC nvarchar(100) NULL, 
	primary key(MaNCC));

/*LOẠI HÀNG*/
Create table LoaiHang
(MaLoai int IDENTITY(1,1) NOT NULL,
	TenLoai nvarchar(100) DEFAULT NULL,
	Primary key(MaLoai));

/*SẢN PHẨM*/
CREATE TABLE SanPham(
	MaSP int IDENTITY(1,1) NOT NULL,
	TenSP nvarchar (100) NULL,
	GiaBan decimal(18,0) NULL,	
	Soluong int NULL,
	MoTa ntext NULL,
	MaLoai int NULL,
	MaNCC int NULL,
	AnhSP nvarchar(100) NULL,
	Primary key(MaSP));


/*ĐƠN HÀNG*/
CREATE TABLE DonHang(
	Madon int IDENTITY(1,1) NOT NULL,	
	NgayDat  datetime NULL,
	TinhTrang  int NULL,
	ThanhToan int NULL,
	DiaChiNhanHang Nvarchar(100) NULL,
	MaNguoiDung int NULL,
	TongTien decimal(18,0),
	Primary key(Madon));

/*CT ĐƠN HÀNG*/
CREATE TABLE ChiTietDonHang(
	CTMaDon int IDENTITY(1,1) NOT NULL,
	MaDon int NOT NULL,
	MaSP int NOT NULL,
	SoLuong int NULL,
	DonGia decimal(18,0) NULL,
	ThanhTien decimal(18,0)  NULL,
	PhuongThucThanhToan int Null,
	Primary key(CTMaDon));

CREATE TABLE TinTuc(
	MaTT int IDENTITY(1,1) NOT NULL,
	TieuDe nvarchar(100),
	NoiDung ntext,
	Primary key(MaTT));


/*Ràng buộc TÀI KHOẢN*/
alter table TaiKhoan
add constraint FK_tk_pq foreign key(IDQuyen) references PhanQuyen(IDQuyen);

/*Ràng buộc SẢN PHẨM*/
alter table SanPham
add constraint FK_sp_ncc foreign key(MaNCC) references NhaCungCap(MaNCC);
alter table SanPham
add constraint FK_sp_loai foreign key(Maloai) references LoaiHang(Maloai);

/*Ràng buộc ĐƠN HÀNG*/
alter table DonHang
add constraint FK_hd_tk foreign key(MaNguoiDung) references taikhoan(MaNguoiDung);

/*Ràng buộc CHI TIẾT ĐƠN HÀNG*/
alter table ChiTietDonHang
add constraint FK_cthd_hd foreign key(MaDon) references DonHang(MaDon);
alter table ChiTietDonHang
add constraint FK_cthd_sp foreign key(MaSP) references SanPham(MaSP);

/*Phân quyền*/
insert into PhanQuyen values ('Admin');
insert into PhanQuyen values ('Member');

/*Tài khoảng*/
insert into TaiKhoan values (N'Luna Sylvestri','lunasylvestri@gmail.com','0904596810','123456',1,N'Hitler Dom');
insert into TaiKhoan values (N'Nguyễn Văn A','nguyenvana@gmail.com','0123456789','123456',2,N'Prosper A1-1902');
insert into TaiKhoan values (N'Nguyễn Văn B','nguyenvanb@gmail.com','0987654321','123456',2,N'666 Hell Diver');

/*Loại hàng*/
insert into LoaiHang values (N'Figure');
insert into LoaiHang values (N'Costume');
insert into LoaiHang values (N'Card');

/*Nhà cung cấp*/
insert into NhaCungCap values (N'Bandai Namco');
insert into NhaCungCap values (N'Max Factory');
insert into NhaCungCap values (N'Mega House');

/*Sản phẩm*/
insert into SanPham values (N'Sanji High Kick',380000,15,N'Sanji figure',1,1,N'\Images\sanji.jpg');
insert into SanPham values (N'Luffy Big Gun',470000,12,N'Luffy figure',1,1,N'\Images\luffy.jpg');
insert into SanPham values (N'Law',320000,11,N'Law figure',1,3,N'\Images\law.jpg');
insert into SanPham values (N'Zoro Triple Blade Stance ',420000,11,N'Zoro figure',1,2,N'\Images\zoro.jpg');
insert into SanPham values (N'Chopper n Cake',290000,11,N'Chopper figure',1,3,N'\Images\chopper.jpg');
insert into SanPham values (N'Miku Costume',220000,11,N'Hatsune Miku Costume, become the queen of onions!',2,3,N'\Images\miku-costume.jpg');
insert into SanPham values (N'Ram/Rem costume',220000,11,N'Ram/Rem costume, not includes wig',2,3,N'\Images\ram-rem-costume.jpg');
insert into SanPham values (N'Miku card ',52000,17,N'Miku card collection',3,1,N'\Images\miku-card.jpg');

/*ĐƠN HÀNG*/
insert into DonHang values ('2021-02-07',1,1,N'999 HUTECH',2,850000);
insert into DonHang values ('2021-02-07',NULL,1,N'588 HUTECH',2,380000);

/*CT_Hóa đơn*/
insert into ChiTietDonHang values (1,1,1,380000,380000,1);
insert into ChiTietDonHang values (1,2,1,470000,470000,1);
insert into ChiTietDonHang values (2,1,1,380000,380000,1);

/*Tin Tức*/
insert into TinTuc values (N'One Piece day',N'Being your favorite character is fun!');
