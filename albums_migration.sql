#Use db
use codeup_test_db;

#drop table if exists
drop table if exists albums;

#create album table
CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist_name VARCHAR(50) NOT NULL,
                        record_name VARCHAR(50) NOT NULL,
                        release_date int(255) NOT NULL,
                        sales DECIMAL(3, 1) NOT NULL,
                        genre CHAR(255) NOT NULL,
                        PRIMARY KEY (id)
);




