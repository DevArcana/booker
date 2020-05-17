using System;
using System.Collections.Generic;

namespace Booker.Infrastructure
{
    public class Library
    {
        public Library()
        {
            BookCopies = new HashSet<BookCopy>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public int Building { get; set; }
        public string DisplayName { get; set; }

        public virtual Building BuildingNavigation { get; set; }
        public virtual ICollection<BookCopy> BookCopies { get; set; }
    }
}
