select * from books;
select count(*) from books;
select count(distinct author_fname) from books;
select title from books where title like '%the%';
select count(*) from books where title like '%the%';