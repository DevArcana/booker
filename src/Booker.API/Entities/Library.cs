using System.Collections.Generic;

namespace Booker.API.Entities
{
    public class Library : BaseEntity
    {
        public Library()
        {
            BookCopies = new HashSet<BookCopy>();
        }
        
        public string Name { get; set; }
        public int Building { get; set; }
        public string DisplayName { get; set; }

        public virtual Building BuildingNavigation { get; set; }
        public virtual ICollection<BookCopy> BookCopies { get; set; }
    }
}
