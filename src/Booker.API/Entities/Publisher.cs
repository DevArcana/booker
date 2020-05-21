using System.Collections.Generic;

namespace Booker.API.Entities
{
    public class Publisher : BaseEntity
    {
        public Publisher()
        {
            Books = new HashSet<Book>();
        }

        public string Name { get; set; }

        public virtual ICollection<Book> Books { get; set; }
    }
}
