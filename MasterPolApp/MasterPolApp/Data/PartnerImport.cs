//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MasterPolApp.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class PartnerImport
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PartnerImport()
        {
            this.PartnerProductImport = new HashSet<PartnerProductImport>();
        }
    
        public int Id { get; set; }
        public int IdTypePartner { get; set; }
        public string NamePartner { get; set; }
        public int IdNameDirector { get; set; }
        public string Mail { get; set; }
        public string NumberPhone { get; set; }
        public int IdAddress { get; set; }
        public string INN { get; set; }
        public int Rating { get; set; }
    
        public virtual Address Address { get; set; }
        public virtual NameDirector NameDirector { get; set; }
        public virtual TypePartner TypePartner { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PartnerProductImport> PartnerProductImport { get; set; }
    }
}
