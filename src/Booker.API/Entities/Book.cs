using System.Collections.Generic;

namespace Booker.API.Entities
{
    public class Book : BaseEntity
    {
        public Book()
        {
            BookAuthor = new HashSet<BookAuthor>();
            BookCopies = new HashSet<BookCopy>();
            BookGenre = new HashSet<BookGenre>();
            BookTag = new HashSet<BookTag>();
        }
        public string Isbn { get; set; }
        public int? Publisher { get; set; }
        public string Title { get; set; }
        public string OriginalTitle { get; set; }
        public short? Date { get; set; }

        public virtual Publisher PublisherNavigation { get; set; }
        public virtual ICollection<BookAuthor> BookAuthor { get; set; }
        public virtual ICollection<BookCopy> BookCopies { get; set; }
        public virtual ICollection<BookGenre> BookGenre { get; set; }
        public virtual ICollection<BookTag> BookTag { get; set; }
    }
}
