-- LOOKUP TABLE, BookType
CREATE TABLE BookType (
TypeID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
BookType NVARCHAR(100) NOT NULL
);

-- Book Table, that uses BookType
CREATE TABLE Book (
BookID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Title NVARCHAR(255) NOT NULL,
Author NVARCHAR(255) NOT NULL,
ISBN NVARCHAR(50) NOT NULL,
TypeID INT FOREIGN KEY REFERENCES BookType(TypeID) NOT NULL
);

-- Loans Table, for when people loan out books
CREATE TABLE Loan (
LoanID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
BookID INT FOREIGN KEY REFERENCES Book(BookID) NOT NULL,
LoanDate DATETIME NOT NULL
);

INSERT INTO BookType VALUES
('Fiction'), ('Non-Fiction'), ('Textbook'), ('Journal');

INSERT INTO Book VALUES
('How to Train Your Dragon', 'Whoever Wrote It', '123-456-7890', 1),
('Why do Computers Suck at Understanding What I Want', 'Science Man', '111-111-1111', 2),
('C# for People Who Have Never Seen a Computer Before', 'Reece', '121-121-1212', 3),
('Science Journal of Science-y Stuff', 'Varsity College', '999-999-9999', 4);

INSERT INTO Loan VALUES
(1, '2025-05-19 09:00:00'),
(3, '2025-05-19 10:00:00');