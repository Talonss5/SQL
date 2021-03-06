select title from books where released_year<1980;
select title from books where author_lname in ('Eggers','Chabon');
select title from books where author_lname='Lahiri' and released_year>2000;
select title, pages from books where pages between 100 and 200;
select title, author_lname from books where author_lname like'c%' or author_lname like 's%';
select title, author_lname, case when title like '%stories%' then'Short Stories' when title like 'just kids and a heartbreaking work' then 'Memoir' else 'Novel' end as Type from books;
select title, author_lname, concat(count(title),' books') as count1 from books group by title, author_lname;