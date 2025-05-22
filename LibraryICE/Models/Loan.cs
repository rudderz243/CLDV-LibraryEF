using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryICE.Models
{
    public class Loan
    {
        [Key] public int LoanID { get; set; }
        [Required] public int BookID { get; set; }
        [Required] public DateTime LoanDate { get; set; }
    }
}
