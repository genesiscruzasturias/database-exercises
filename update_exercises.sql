use codeup_test_db;

#Select all albums
select record_name from albums;
#Select albums before 1990
select record_name from albums where release_date < 1980;
#Select albums only for MJ
select record_name from albums where artist_name = 'michael jackson';