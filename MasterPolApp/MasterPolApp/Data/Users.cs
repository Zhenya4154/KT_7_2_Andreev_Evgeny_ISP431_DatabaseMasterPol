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
    
    public partial class Users
    {
        public int Id { get; set; }
        public string NameUser { get; set; }
        public string UserLogin { get; set; }
        public string UserPassword { get; set; }
        public int IdRole { get; set; }
    
        public virtual UserRole UserRole { get; set; }
    }
}
