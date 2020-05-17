using System;
using System.Collections.Generic;

namespace Booker.Infrastructure
{
    public class Tags
    {
        public Tags()
        {
            BookTag = new HashSet<BookTag>();
        }

        public int Id { get; set; }
        public string Tag { get; set; }
        public string DisplayTag { get; set; }

        public virtual ICollection<BookTag> BookTag { get; set; }
    }
}
