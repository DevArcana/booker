using System.Collections.Generic;

namespace Booker.API.Entities
{
    public class Author : BaseEntity
    {
        public Author()
        {
            BookAuthor = new HashSet<BookAuthor>();
        }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }

        public virtual ICollection<BookAuthor> BookAuthor { get; set; }
    }
}
