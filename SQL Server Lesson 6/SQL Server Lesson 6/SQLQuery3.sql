select author_lname from books order by author_lname;
select author_lname from books order by author_lname desc;
select distinct released_year from books order by released_year;
select title, author_fname, author_lname from books order by 2;
select top 5 author_fname, author_lname from books order by author_lname desc;
select author_lname from books where author_fname like '%da%';
select author_lname from books where author_fname like '%da'
select title from books where stock_quantity like'____';
