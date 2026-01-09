1- jadvallar yaratildi

-- create table users(
-- id serial primary key,
-- full_name varchar(100),
-- email varchar(100),
-- password text,
-- created_at timestamp
-- )

-- create table books(
-- id serial primary key  ,
-- title varchar(150),
-- author_id integer references authors(id) ,
-- description text,
-- published_year integer,
-- genre_id integer references genres(id),
-- created_at timestamp
-- );

-- create table authors(
-- id serial primary key,
-- full_name varchar(100),
-- country varchar(100)
-- )

-- create table genres(
-- id serial primary key,
-- name varchar(100)
-- )

-- create table comments(
-- id serial primary key,
-- user_id integer references users(id),
-- book_id integer references books(id),
-- content text,
-- created_at timestamp
-- )


2- jadvallarga malumot qoshildi
-- INSERT INTO users (full_name, email, password)
-- VALUES
-- ('Ali Valiyev', 'ali@mail.com', 'h1'),
-- ('Vali Aliyev', 'vali@mail.com', 'h2'),
-- ('Hasan Karimov', 'hasan@mail.com', 'h3');

-- INSERT INTO authors (full_name, country)
-- VALUES
-- ('Robert Martin', 'USA'),
-- ('Martin Fowler', 'UK');

-- INSERT INTO genres (name)
-- VALUES
-- ('Dasturlash'),
-- ('Ilmiy'),
-- ('Tarix');

-- INSERT INTO books (title, author_id, description, published_year, genre_id)
-- VALUES
-- (' Cod', 1, 'Programming', 2008, 1),
-- ('otmagan kunlar', 2, 'romanini uqing', 1999, 1),
-- ('kimyo', 1, 'System ', 2017, 1),
-- ('susambil', 2, ' book', 2010, 2),
-- ('World History', 2, 'History book', 2005, 3);

-- INSERT INTO comments (user_id, book_id, content)
-- VALUES
-- (1, 1, 'Zo‘r kitob'),
-- (2, 1, 'Juda foydali'),
-- (3, 1, 'Tavsiya qilaman'),

-- (1, 2, 'Yaxshi'),
-- (2, 2, 'Murakkab'),

-- (1, 3, 'Arxitektura zo‘r'),

-- (2, 4, 'Qiziqarli');


3- (4ta) savolga javob yozildi
-- SELECT title, published_year
-- FROM books
-- ORDER BY published_year;

-- SELECT g.name, COUNT(b.id)
-- FROM genres g
-- LEFT JOIN books b ON b.genre_id = g.id
-- GROUP BY g.name;

-- SELECT b.title
-- FROM books b
-- LEFT JOIN comments c ON c.book_id = b.id
-- WHERE c.id IS NULL;

-- SELECT b.title, COUNT(c.id) AS comment_count
-- FROM books b
-- JOIN comments c ON c.book_id = b.id
-- GROUP BY b.title
-- ORDER BY comment_count DESC
-- LIMIT 5;