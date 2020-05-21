namespace Booker.API.Entities
{
    public class BookTag
    {
        public int Book { get; set; }
        public int Tag { get; set; }

        public virtual Book BookNavigation { get; set; }
        public virtual Tag TagNavigation { get; set; }
    }
}
