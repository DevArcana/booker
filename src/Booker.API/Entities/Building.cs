using System.Collections.Generic;

namespace Booker.API.Entities
{
    public class Building : BaseEntity
    {
        public Building()
        {
            Libraries = new HashSet<Library>();
        }
        
        public string Name { get; set; }
        public string Address { get; set; }
        public string DisplayName { get; set; }

        public virtual ICollection<Library> Libraries { get; set; }
    }
}
