using System;
using System.Collections.Generic;

namespace Booker.Infrastructure
{
    public class Publisher
    {
        public Publisher()
        {
            Books = new HashSet<Book>();
        }

        public int Id { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Book> Books { get; set; }
    }
}
