using System.Collections.Generic;
using Booker.API.Interfaces;
using Booker.API.Models;
using Booker.API.Services;
using Microsoft.AspNetCore.Mvc;

namespace Booker.API.Controllers
{
    public class BuildingsController : BaseApiController
    {
        private readonly IBuildingService _buildingService;

        public BuildingsController(IBuildingService buildingService)
        {
            _buildingService = buildingService;
        }

        [HttpGet]
        public ActionResult<IEnumerable<BookDto>> GetBuildings()
        {
            return Ok(_buildingService.GetBuildings());
        }
        
        [HttpPost]
        public ActionResult<BookDto> CreateBuilding([FromBody] BuildingDto dto)
        {
            return Ok(_buildingService.CreateBuilding(dto.Name, dto.DisplayName, dto.Address));
        }
    }
}