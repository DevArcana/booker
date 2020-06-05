using Booker.API.Entities;

namespace Booker.API.Models
{
    public class BookDto
    {
        public int Id { get; set; }
        public string? Isbn { get; set; }
        public string? Title { get; set; }
        public string? OriginalTitle { get; set; }
        public short? Date { get; set; }

        public BookDto()
        {
            
        }
        
        public BookDto(Book book)
        {
            Id = book.Id;
            Isbn = book.Isbn;
            Title = book.Title;
            OriginalTitle = book.OriginalTitle;
            Date = book.Date;
        }
    }
}