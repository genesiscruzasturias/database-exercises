use codeup_test_db;
#Select pink floyd albums
select * from albums where artist_name = 'pink floyd' or artist_name = 'Pink Floyd';
#Select release date for beetles song
select release_date from albums where record_name = 'Sgt. Pepper\'s Lonely Hearts Club Band';
#Select Genre
select genre from albums where record_name = 'Dangerous';
#Select 1990 release date
select record_name from albums where release_date >= 1990;
#Select less than 20.0 million sales
select record_name from albums where sales <= 20.0;
#Select rock genre
select record_name from albums where genre = 'Rock';

