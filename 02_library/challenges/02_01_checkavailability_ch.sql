-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

select count(*) as No_of_books 
from Books
where Title="Dracula";

SELECT count(*) as No_of_books 
FROM Loans 
JOIN Books ON Loans.BookID = Books.BookID 
WHERE Books.Title = 'Dracula' 
  AND Loans.ReturnedDate IS NULL;

SELECT
  (SELECT count(*) as No_of_books
    FROM Books 
    WHERE Books.Title = 'Dracula') - 
  (SELECT count(*) as No_of_books
    FROM Books 
    JOIN Loans ON Books.BookID = Loans.BookID 
    WHERE Books.Title = 'Dracula' 
    AND Loans.ReturnedDate IS NULL)
  AS AvailableCopies;