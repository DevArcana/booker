using System;
using System.Collections.Generic;

namespace Booker.Infrastructure
{
    public class BookGenre
    {
        public int Book { get; set; }
        public int Genre { get; set; }

        public virtual Book BookNavigation { get; set; }
        public virtual Genres GenreNavigation { get; set; }
    }
}
