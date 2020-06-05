using System.Collections.Generic;
using Booker.API.Models;

namespace Booker.API.Interfaces
{
    public interface IBuildingService
    {
        IEnumerable<BuildingDto> GetBuildings();
        BuildingDto CreateBuilding(string name, string? displayName, string? address);
    }
}