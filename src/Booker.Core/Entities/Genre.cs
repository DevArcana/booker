using System;
using System.Collections.Generic;

namespace Booker.Infrastructure
{
    public class Genres
    {
        public Genres()
        {
            BookGenre = new HashSet<BookGenre>();
        }

        public int Id { get; set; }
        public string Genre { get; set; }
        public string DisplayGenre { get; set; }

        public virtual ICollection<BookGenre> BookGenre { get; set; }
    }
}
