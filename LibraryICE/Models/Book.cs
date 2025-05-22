using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryICE.Models
{
    public class Book
    {
        [Key] public int BookID { get; set; }
        [Required] public string? Title { get; set; }
        [Required] public string? Author { get; set; }
        [Required] public string? ISBN { get; set; }
        [Required] public int TypeID { get; set; }
        [NotMapped] public bool Available { get; set; }
        // public BookType? BookType { get; set; }
    }
}
