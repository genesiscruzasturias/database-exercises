use join_test_db;

# Create a database named join_test_db and run the SQL provided in the Join Example DB section above; to create the same setup used for this lesson.

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

# Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO roles (name) VALUES ('author');
DESCRIBE TABLE roles;
DESCRIBE TABLE users;
INSERT INTO users (name, email, role_id) VALUES
                                             ('Genesis', 'gen@example.com', 1),
                                             ('Vicky', 'vicky@example.com', 1),
                                             ('Martha', 'martha@example.com', 1),
                                             ('Azariah', 'azariah@example.com', null);
SELECT * from users;
SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

# Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a given role. Hint: You will also need to use GROUP BY in the query

SELECT users.role_id, COUNT(users.name)
FROM users
         LEFT JOIN roles ON roles.name = users.role_id
    AND roles.name = users.name
GROUP BY 1;

SELECT DISTINCT roles.name, COUNT(roles.name)
FROM roles
         LEFT JOIN users ON users.id = roles.name
    AND users.name = roles.name
GROUP BY roles.name;



