use codeup_test_db;

#Select all albums
select * from albums;
update albums set sales = (sales * 10);
select * from albums;
#Select albums before 1990
select record_name from albums where release_date < 1980;
#Move all the albums before 1980 back to the 1800s.
update albums set release_date = 1800 where release_date < 1980;
select * from albums;
#Select albums only for MJ
select record_name from albums where artist_name = 'michael jackson';
#Change 'Michael Jackson' to 'Peter Jackson'
update albums set artist_name = 'Peter Jackson' where artist_name = 'Michael Jackson';