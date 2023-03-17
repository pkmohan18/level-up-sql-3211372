-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

select l.DueDate, b.Title, p.FirstName, p.Email
from Books b
join Loans l on b.BookID=l.BookID
join Patrons p on p.PatronID=l.PatronID
where l.DueDate="2022-07-13"
AND Loans.ReturnedDate IS NULL;