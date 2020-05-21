namespace Booker.API.Entities
{
    public class BookAuthor
    {
        public int Book { get; set; }
        public int Author { get; set; }

        public virtual Author AuthorNavigation { get; set; }
        public virtual Book BookNavigation { get; set; }
    }
}
