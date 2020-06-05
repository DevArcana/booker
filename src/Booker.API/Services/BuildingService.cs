using System.Collections.Generic;
using System.Linq;
using Booker.API.Entities;
using Booker.API.Interfaces;
using Booker.API.Models;

namespace Booker.API.Services
{
    public class BuildingService : IBuildingService
    {
        private BookerContext _context;

        public BuildingService(BookerContext context)
        {
            _context = context;
        }
        
        public IEnumerable<BuildingDto> GetBuildings()
        {
            return _context.Buildings.Select(building => new BuildingDto(building)).ToList();
        }

        public BuildingDto CreateBuilding(string name, string? displayName, string? address)
        {
            var building = new Building(name, displayName, address);
            _context.Add(building);
            _context.SaveChanges();
            
            return new BuildingDto(building);
        }
    }
}