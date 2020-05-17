using System;
using System.Collections.Generic;

namespace Booker.Infrastructure
{
    public class BookTag
    {
        public int Book { get; set; }
        public int Tag { get; set; }

        public virtual Book BookNavigation { get; set; }
        public virtual Tags TagNavigation { get; set; }
    }
}
