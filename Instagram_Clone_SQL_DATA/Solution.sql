use Instaclone;
select * from users order by created_at limit 5;/*select 5 oldest users*/
select username, dayname(created_at) as day, count(*) as total from users group by day order by total desc limit 2;/*select 2 days in the week that have most active users*/
select username from users left join photos on users.id=photos.user_id where photos.id is null; /*select non-aticve users*/
select username,photos.image_url, count(*) as like_term from users left join photos on users.id=photos.user_id left join likes on photos.id=likes.photo_id group by photos.image_url order by like_term desc; /*select most liked photo*/
select (select count(*) from photos)/
	   (select count(*) from users) as average_post;/* Average user post */
select tag_name, count(*) as usages from tags inner join photo_tags on tags.id=photo_tags.tag_id group by tag_name order by usages desc limit 10;/* 10 most hashtags */
select username, count(*) as total from users left join likes on likes.user_id=users.id  group by username having total=(select count(*) from photos);/* most active users */
