using System.Collections.Generic;

namespace Booker.API.Entities
{
    public class Genre : BaseEntity
    {
        public Genre()
        {
            BookGenre = new HashSet<BookGenre>();
        }
        
        public string Name { get; set; }
        public string DisplayName { get; set; }

        public virtual ICollection<BookGenre> BookGenre { get; set; }
    }
}
