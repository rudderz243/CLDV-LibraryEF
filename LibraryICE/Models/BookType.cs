using System.ComponentModel.DataAnnotations;

namespace LibraryICE.Models
{
    public class BookType
    {
        [Key] public int TypeID { get; set; }
        [Required] public string? Type {  get; set; }
    }
}
