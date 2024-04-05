namespace CHBHTH.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietDonHang")]
    public partial class ChiTietDonHang
    {
        [Display(Name = "Order detail ID")]
        [Key]
        public int CTMaDon { get; set; }

        [Display(Name = "Order ID")]
        public int MaDon { get; set; }

        [Display(Name = "Product name")]
        public int MaSP { get; set; }

        [Display(Name = "Quantity")]
        public int? SoLuong { get; set; }

        [Display(Name = "Unit price")]
        public decimal? DonGia { get; set; }

        [Display(Name = "Total")]
        public decimal? ThanhTien { get; set; }

        [Display(Name = "Payment method")]
        public int? PhuongThucThanhToan { get; set; }

        public virtual DonHang DonHang { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}
