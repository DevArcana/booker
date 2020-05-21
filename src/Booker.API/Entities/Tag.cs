using System.Collections.Generic;

namespace Booker.API.Entities
{
    public class Tag : BaseEntity
    {
        public Tag()
        {
            BookTag = new HashSet<BookTag>();
        }

        public string Name { get; set; }
        public string DisplayName { get; set; }

        public virtual ICollection<BookTag> BookTag { get; set; }
    }
}
