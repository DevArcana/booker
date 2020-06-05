using System.Collections.Generic;
using System.Linq;

namespace Booker.API.Entities
{
    public class Building : BaseEntity
    {
        private Building()
        {
            
        }

        public Building(string name, string? displayName = null, string? address = null)
        {
            _name = name;
            _displayName = displayName ?? name;
            _address = address;
        }

        private string _name;
        public string Name => _name;

        private string? _address;
        public string? Address => _address;
        
        private string _displayName;
        public string DisplayName => _displayName;

        private readonly HashSet<Library> _libraries= new HashSet<Library>();
        public IEnumerable<Library> Libraries => _libraries;
    }
}
