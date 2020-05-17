using System;
using System.Collections.Generic;

namespace Booker.Infrastructure
{
    public class BookCopy
    {
        public int Book { get; set; }
        public int Library { get; set; }

        public virtual Book BookNavigation { get; set; }
        public virtual Library LibraryNavigation { get; set; }
    }
}
