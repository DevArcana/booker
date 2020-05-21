using Booker.API.Entities;
using Microsoft.EntityFrameworkCore;

namespace Booker.API
{
    public class BookerContext : DbContext
    {
        public BookerContext()
        {
            
        }

        public BookerContext(DbContextOptions<BookerContext> options) : base(options)
        {
            
        }

        public virtual DbSet<Author> Authors { get; set; }
        public virtual DbSet<BookAuthor> BookAuthor { get; set; }
        public virtual DbSet<BookCopy> BookCopies { get; set; }
        public virtual DbSet<BookGenre> BookGenre { get; set; }
        public virtual DbSet<BookTag> BookTag { get; set; }
        public virtual DbSet<Book> Books { get; set; }
        public virtual DbSet<Building> Buildings { get; set; }
        public virtual DbSet<Genre> Genres { get; set; }
        public virtual DbSet<Library> Libraries { get; set; }
        public virtual DbSet<Publisher> Publishers { get; set; }
        public virtual DbSet<Tag> Tags { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseNpgsql("Host=localhost;Database=booker;Username=postgres;Password=1qaz2wsx");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Author>(entity =>
            {
                entity.ToTable("authors");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.FirstName)
                    .HasColumnName("first_name")
                    .HasMaxLength(100);

                entity.Property(e => e.LastName)
                    .HasColumnName("last_name")
                    .HasMaxLength(100);

                entity.Property(e => e.MiddleName)
                    .HasColumnName("middle_name")
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<BookAuthor>(entity =>
            {
                entity.HasKey(e => new {e.Book, e.Author})
                    .HasName("book_author_pkey");

                entity.ToTable("book_author");

                entity.Property(e => e.Book).HasColumnName("book");

                entity.Property(e => e.Author).HasColumnName("author");

                entity.HasOne(d => d.AuthorNavigation)
                    .WithMany(p => p.BookAuthor)
                    .HasForeignKey(d => d.Author)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("book_author_author_fkey");

                entity.HasOne(d => d.BookNavigation)
                    .WithMany(p => p.BookAuthor)
                    .HasForeignKey(d => d.Book)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("book_author_book_fkey");
            });

            modelBuilder.Entity<BookCopy>(entity =>
            {
                entity.HasKey(e => new {e.Book, e.Library})
                    .HasName("book_copies_pkey");

                entity.ToTable("book_copies");

                entity.Property(e => e.Book).HasColumnName("book");

                entity.Property(e => e.Library).HasColumnName("library");

                entity.HasOne(d => d.BookNavigation)
                    .WithMany(p => p.BookCopies)
                    .HasForeignKey(d => d.Book)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("book_copies_book_fkey");

                entity.HasOne(d => d.LibraryNavigation)
                    .WithMany(p => p.BookCopies)
                    .HasForeignKey(d => d.Library)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("book_copies_library_fkey");
            });

            modelBuilder.Entity<BookGenre>(entity =>
            {
                entity.HasKey(e => new {e.Book, e.Genre})
                    .HasName("book_genre_pkey");

                entity.ToTable("book_genre");

                entity.Property(e => e.Book).HasColumnName("book");

                entity.Property(e => e.Genre).HasColumnName("genre");

                entity.HasOne(d => d.BookNavigation)
                    .WithMany(p => p.BookGenre)
                    .HasForeignKey(d => d.Book)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("book_genre_book_fkey");

                entity.HasOne(d => d.GenreNavigation)
                    .WithMany(p => p.BookGenre)
                    .HasForeignKey(d => d.Genre)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("book_genre_genre_fkey");
            });

            modelBuilder.Entity<BookTag>(entity =>
            {
                entity.HasKey(e => new {e.Book, e.Tag})
                    .HasName("book_tag_pkey");

                entity.ToTable("book_tag");

                entity.Property(e => e.Book).HasColumnName("book");

                entity.Property(e => e.Tag).HasColumnName("tag");

                entity.HasOne(d => d.BookNavigation)
                    .WithMany(p => p.BookTag)
                    .HasForeignKey(d => d.Book)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("book_tag_book_fkey");

                entity.HasOne(d => d.TagNavigation)
                    .WithMany(p => p.BookTag)
                    .HasForeignKey(d => d.Tag)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("book_tag_tag_fkey");
            });

            modelBuilder.Entity<Book>(entity =>
            {
                entity.ToTable("books");

                entity.HasIndex(e => e.Isbn)
                    .HasName("books_isbn_idx")
                    .HasMethod("hash");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Date).HasColumnName("date");

                entity.Property(e => e.Isbn)
                    .HasColumnName("isbn")
                    .HasMaxLength(17);

                entity.Property(e => e.OriginalTitle)
                    .HasColumnName("original_title")
                    .HasMaxLength(64);

                entity.Property(e => e.Publisher).HasColumnName("publisher");

                entity.Property(e => e.Title)
                    .IsRequired()
                    .HasColumnName("title")
                    .HasMaxLength(48);

                entity.HasOne(d => d.PublisherNavigation)
                    .WithMany(p => p.Books)
                    .HasForeignKey(d => d.Publisher)
                    .HasConstraintName("books_publisher_fkey");
            });

            modelBuilder.Entity<Building>(entity =>
            {
                entity.ToTable("buildings");

                entity.HasIndex(e => e.Name)
                    .HasName("buildings_name_idx")
                    .HasMethod("hash");

                entity.Property(e => e.Id)
                    .HasColumnName("id")
                    .ValueGeneratedNever();

                entity.Property(e => e.Address)
                    .HasColumnName("address")
                    .HasMaxLength(128);

                entity.Property(e => e.DisplayName)
                    .IsRequired()
                    .HasColumnName("display_name")
                    .HasMaxLength(32);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasColumnName("name")
                    .HasMaxLength(16);
            });

            modelBuilder.Entity<Genre>(entity =>
            {
                entity.ToTable("genres");

                entity.HasIndex(e => e.DisplayName)
                    .HasName("genres_display_genre_key")
                    .IsUnique();

                entity.HasIndex(e => e.Name)
                    .HasName("genres_genre_idx")
                    .HasMethod("hash");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.DisplayName)
                    .IsRequired()
                    .HasColumnName("display_genre")
                    .HasMaxLength(32);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasColumnName("genre")
                    .HasMaxLength(16);
            });

            modelBuilder.Entity<Library>(entity =>
            {
                entity.ToTable("libraries");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Building).HasColumnName("building");

                entity.Property(e => e.DisplayName)
                    .IsRequired()
                    .HasColumnName("display_name")
                    .HasMaxLength(32);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasColumnName("name")
                    .HasMaxLength(16);

                entity.HasOne(d => d.BuildingNavigation)
                    .WithMany(p => p.Libraries)
                    .HasForeignKey(d => d.Building)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("libraries_building_fkey");
            });

            modelBuilder.Entity<Publisher>(entity =>
            {
                entity.ToTable("publishers");

                entity.HasIndex(e => e.Name)
                    .HasName("publishers_name_idx")
                    .HasMethod("hash");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasColumnName("name")
                    .HasMaxLength(128);
            });

            modelBuilder.Entity<Tag>(entity =>
            {
                entity.ToTable("tags");

                entity.HasIndex(e => e.DisplayName)
                    .HasName("tags_display_tag_key")
                    .IsUnique();

                entity.HasIndex(e => e.Name)
                    .HasName("tags_tag_idx")
                    .HasMethod("hash");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.DisplayName)
                    .IsRequired()
                    .HasColumnName("display_tag")
                    .HasMaxLength(32);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasColumnName("tag")
                    .HasMaxLength(16);
            });
        }
    }
}