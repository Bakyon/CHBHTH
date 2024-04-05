namespace CHBHTH.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TinTuc")]
    public partial class TinTuc
    {
        [Key]
        [Display(Name = "News ID")]
        public int MaTT { get; set; }

        [StringLength(100)]
        [Display(Name = "Title")]
        public string TieuDe { get; set; }

        [Display(Name = "Inhalt")]
        [Column(TypeName = "ntext")]
        public string NoiDung { get; set; }
    }
}
