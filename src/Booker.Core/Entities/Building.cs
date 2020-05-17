using System;
using System.Collections.Generic;

namespace Booker.Infrastructure
{
    public class Building
    {
        public Building()
        {
            Libraries = new HashSet<Library>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string DisplayName { get; set; }

        public virtual ICollection<Library> Libraries { get; set; }
    }
}
