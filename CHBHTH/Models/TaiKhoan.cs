namespace CHBHTH.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TaiKhoan")]
    public partial class TaiKhoan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TaiKhoan()
        {
            DonHangs = new HashSet<DonHang>();
        }

        [Key]
        [Display(Name = "User ID")]
        public int MaNguoiDung { get; set; }

        [Display(Name = "Fullname")]
        [StringLength(50, MinimumLength = 5, ErrorMessage = "The name need to has 5 to 50 characters")]
        [Required]
        public string HoTen { get; set; }

        [Display(Name = "Email")]
        [StringLength(50)]
        [Required]
        [EmailAddress(ErrorMessage = "A valid email is required!")]
        public string Email { get; set; }

        [Display(Name = "Tel. no.")]
        [StringLength(50)]
        [Required]
        [Phone]
        public string Dienthoai { get; set; }

        [Display(Name = "Password")]
        [StringLength(50, MinimumLength = 5, ErrorMessage = "Password must have 5 to 50 characters")]
        [Required]
        public string Matkhau { get; set; }

        [Display(Name = "Role ID")]
        public int? IDQuyen { get; set; }

        [Display(Name = "Address")]
        [StringLength(200, MinimumLength = 5, ErrorMessage = "Address must have 5 to 200 characters")]
        [Required]
        public string Diachi { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DonHang> DonHangs { get; set; }

        public virtual PhanQuyen PhanQuyen { get; set; }
    }
}
