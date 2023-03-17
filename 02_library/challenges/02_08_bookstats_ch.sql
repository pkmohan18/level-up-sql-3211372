-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

select Published, count(distinct(Title))
from Books
GROUP BY Published
order by count(Published) desc;

select b.BookID, b.Title, count(l.LoanID)
from Books b
join Loans l on b.BookID=l.BookID
group by l.BookID
order by count(LoanID) desc
limit 5;