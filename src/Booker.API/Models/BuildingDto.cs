using Booker.API.Entities;

namespace Booker.API.Models
{
    public class BuildingDto
    {
        public string Name { get; set; }
        public string? DisplayName { get; set; }
        public string? Address { get; set; }

        public BuildingDto()
        {
            
        }
        
        public BuildingDto(Building building)
        {
            Name = building.Name;
            DisplayName = building.DisplayName;
            Address = building.Address;
        }
    }
}