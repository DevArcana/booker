using System;
using System.Collections.Generic;

namespace Booker.Infrastructure
{
    public class Author
    {
        public Author()
        {
            BookAuthor = new HashSet<BookAuthor>();
        }

        public int Id { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }

        public virtual ICollection<BookAuthor> BookAuthor { get; set; }
    }
}
