using System.Collections.Generic;
using System.Linq;
using Booker.API.Interfaces;
using Booker.API.Models;
using Microsoft.EntityFrameworkCore;

namespace Booker.API.Services
{
    public class BookService : IBookService
    {
        private readonly BookerContext _context;

        public BookService(BookerContext context)
        {
            _context = context;
        }

        public IEnumerable<BookDto> GetBooks()
        {
            return _context.Books.Select(book => new BookDto(book)).ToList();
        }
    }
}