namespace Booker.API.Entities
{
    public class BookGenre
    {
        public int Book { get; set; }
        public int Genre { get; set; }

        public virtual Book BookNavigation { get; set; }
        public virtual Genre GenreNavigation { get; set; }
    }
}
