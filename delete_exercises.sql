use codeup_test_db;

#Albums released after 1991
select * from albums where release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;


#Albums with the genre 'disco'
select * from albums where genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';
#Albums by 'Whitney Houston' (...or maybe an artist of your choice)
select * from albums where artist_name = 'Santana';
DELETE FROM albums WHERE artist_name = 'Santana';