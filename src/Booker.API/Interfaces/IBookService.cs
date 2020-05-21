using System.Collections.Generic;
using Booker.API.Models;

namespace Booker.API.Interfaces
{
    public interface IBookService
    {
        IEnumerable<BookDto> GetBooks();
    }
}