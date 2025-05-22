using Microsoft.EntityFrameworkCore;

namespace LibraryICE.Models
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions options) : base(options)
        {
        }

        public DbSet<BookType> BookType { get; set; }
        public DbSet<Book> Book { get; set; }
        public DbSet<Loan> Loan { get; set; }
    }
}
