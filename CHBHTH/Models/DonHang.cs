namespace CHBHTH.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DonHang")]
    public partial class DonHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DonHang()
        {
            ChiTietDonHangs = new HashSet<ChiTietDonHang>();
        }

        [Display(Name = "Order ID")]
        [Key]
        public int MaDon { get; set; }

        [Display(Name = "Order date")]
        public DateTime? NgayDat { get; set; }

        [Display(Name = "Status")]
        public int? TinhTrang { get; set; }

        [Display(Name = "Payment method")]
        public int? ThanhToan { get; set; }

        [Display(Name = "Delivery address")]
        [StringLength(100)]
        public string DiaChiNhanHang { get; set; }

        [Display(Name = "Orderer")]
        public int? MaNguoiDung { get; set; }

        [Display(Name = "Total")]
        public decimal? TongTien { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDonHang> ChiTietDonHangs { get; set; }

        public virtual TaiKhoan TaiKhoan { get; set; }
    }
}
