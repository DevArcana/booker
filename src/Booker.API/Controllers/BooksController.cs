using System.Collections.Generic;
using Booker.API.Interfaces;
using Booker.API.Models;
using Microsoft.AspNetCore.Mvc;

namespace Booker.API.Controllers
{
    public class BooksController : BaseApiController
    {
        private readonly IBookService _bookService;

        public BooksController(IBookService bookService)
        {
            _bookService = bookService;
        }

        [HttpGet]
        public ActionResult<IEnumerable<BookDto>> GetBooks()
        {
            return Ok(_bookService.GetBooks());
        }
    }
}