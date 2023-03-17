-- Prepare a report of the library patrons
-- who have checked out the fewest books.

select p.FirstName,p.Email,count(l.LoanID)
from Patrons p
join Loans l on p.PatronID=l.PatronID
group by l.PatronID
order by count(l.LoanID)
limit 10;