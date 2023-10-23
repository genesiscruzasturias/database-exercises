#Use db
use codeup_test_db;

#drop table if exists
drop table if exists albums;

#create album table
CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist_name VARCHAR(50) DEFAULT 'NONE',
                        record_name VARCHAR(50) DEFAULT 'NONE',
                        release_date int(255),
                        sales DECIMAL(12, 2),
                        genre CHAR(255) DEFAULT 'NONE',
                        PRIMARY KEY (id)
);




