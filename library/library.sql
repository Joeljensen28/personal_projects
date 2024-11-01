USE library;

INSERT INTO authors (author_id, fname, lname, born, died)
VALUES
    (DEFAULT, 'Ray', 'Bradbury', STR_TO_DATE('08/22/1920', '%m/%d/%Y'), STR_TO_DATE('06/05/2012', '%m/%d/%Y')),
    (DEFAULT, 'George', 'Miller', STR_TO_DATE('09/16/1993', '%m/%d/%Y'), NULL),
    (DEFAULT, 'Jackson', 'Crawford', STR_TO_DATE('08/28/1985', '%m/%d/%Y'), NULL),
    (DEFAULT, 'Thomas', 'Froncek', NULL, NULL),
    (DEFAULT, 'BDK', 'America', NULL, NULL),
    (DEFAULT, 'Marcus', 'Follin', STR_TO_DATE('07/31/1989', '%m/%d/%Y'), NULL),
    (DEFAULT, 'Marcus', 'Aurelius', STR_TO_DATE('04/29/121', '%m/%d/%Y'), STR_TO_DATE('03/17/180', '%m/%d/%Y')),
    (DEFAULT, 'Julius', 'Evola', STR_TO_DATE('05/19/1898', '%m/%d/%Y'), STR_TO_DATE('06/11/1974', '%m/%d/%Y')),
    (DEFAULT, 'Yukio', 'Mishima', STR_TO_DATE('01/14/1925', '%m/%d/%Y'), STR_TO_DATE('11/25/1970', '%m/%d/%Y')),
    (DEFAULT, 'Liu', 'Cixin', STR_TO_DATE('06/23/1963', '%m/%d/%Y'), NULL),
    (DEFAULT, 'William', 'Gibson', STR_TO_DATE('03/17/1948', '%m/%d/%Y'), NULL),
    (DEFAULT, 'Snorri', 'Sturluson', STR_TO_DATE('01/01/1179', '%m/%d/%Y'), STR_TO_DATE('09/28/1241', '%m/%d/%Y')),
    (DEFAULT, 'Abhay', 'Charan De', STR_TO_DATE('09/01/1896', '%m/%d/%Y'), STR_TO_DATE('11/14/1977', '%m/%d/%Y'));
    
INSERT INTO authors (author_id, fname, lname, born, died)
VALUES
	(DEFAULT, 'J.R.R.', 'Tolkein', STR_TO_DATE('01/03/1892', '%m/%d/%Y'), STR_TO_DATE('09/02/1973', '%m/%d/%Y')),
    (DEFAULT, 'H.P.', 'Lovecraft', STR_TO_DATE('08/20/1890', '%m/%d/%Y'), STR_TO_DATE('03/15/1937', '%m/%d/%Y'));
    
SELECT * FROM authors;

ALTER TABLE books
MODIFY COLUMN title VARCHAR(70);
    
INSERT INTO books (book_id, title, year_published, author_id, `read`)
VALUES
	(DEFAULT, 'Dune', 1965, 1, 'y'),
    (DEFAULT, 'Dune Messiah', 1969, 1, 'y'),
    (DEFAULT, 'Children of Dune', 1979, 1, 'y'),
    (DEFAULT, 'God Emperor of Dune', 1981, 1, 'y'),
    (DEFAULT, 'Heretics of Dune', 1984, 1, 'y'),
    (DEFAULT, 'Chapterhouse: Dune', 1985, 1, 'n'),
    (DEFAULT, 'Fahrenheit 451', 1953, 2, 'y'),
    (DEFAULT, 'Francis of the Filth', 2017, 3, 'y'),
    (DEFAULT, 'The Poetic Edda', 2015, 4, 'y'),
    (DEFAULT, 'The Northmen', 1998, 5, 'y'),
    (DEFAULT, 'The Canonical Book of the Buddha\'s Lengthy Discourses Volume I', 2017, 6, 'y'),
    (DEFAULT, 'The Canonical Book of the Buddha\'s Lengthy Discourses Volume II', 2017, 6, 'y'),
    (DEFAULT, 'The Canonical Book of the Buddha\'s Lengthy Discourses Volume III', 2017, 6, 'y'),
    (DEFAULT, 'Dauntless', 2019, 7, 'y'),
    (DEFAULT, 'Meditations', 170, 8, 'y'),
    (DEFAULT, 'Revolt Against the Modern World', 1934, 9, 'y'),
    (DEFAULT, 'Sun and Steel', 1968, 10, 'y'),
    (DEFAULT, 'The Temple of the Golden Pavilion', 1956, 10, 'y'),
    (DEFAULT, 'The Three-Body Problem', 2008, 11, 'n'),
    (DEFAULT, 'The Dark Forest', 2008, 11, 'n'),
    (DEFAULT, 'Death\'s End', 2010, 11, 'n'),
    (DEFAULT, 'Neuromancer', 1984, 12, 'n'),
    (DEFAULT, 'The Prose Edda', 1220, 13, 'n'),
    (DEFAULT, 'Bhagavad-Gita As It Is', 1968, 14, 'n'),
    (DEFAULT, 'Lord of the Rings: The Fellowship of the Ring', 1954, 15, 'n'),
    (DEFAULT, 'Lord of the Rings: The Two Towers', 1954, 15, 'n'),
    (DEFAULT, 'Lord of the Rings: The Return of the King', 1955, 15, 'n'),
    (DEFAULT, 'The Hobbit', 1937, 15, 'n'),
    (DEFAULT, 'The Complete Fiction of H.P. Lovecraft', 2014, 16, 'y');
    
    INSERT INTO genres (genre_id, genre)
    VALUES
		(DEFAULT, 'Sci-fi'),
        (DEFAULT, 'Dystopian'),
        (DEFAULT, 'Fantasy'),
        (DEFAULT, 'Comedy'),
        (DEFAULT, 'Poetry'),
        (DEFAULT, 'History'),
        (DEFAULT, 'Religion'),
        (DEFAULT, 'Philosophy'),
        (DEFAULT, 'Politics'),
        (DEFAULT, 'Historical Fiction'),
        (DEFAULT, 'Realistic Fiction');
    
INSERT INTO book_has_genre (books_id, genre_id)
VALUES
	(30, 1),
    (31, 1),
    (32, 1),
    (33, 1),
    (34, 1),
    (35, 1),
    (36, 2),
    (36, 9),
    (37, 3),
    (37, 4),
    (38, 5),
    (38, 7),
    (38, 8),
    (39, 6),
    (40, 7),
    (40, 8),
    (41, 7),
    (41, 8),
    (42, 7),
    (42, 8),
    (43, 8),
    (43, 9),
    (44, 8),
    (45, 8),
    (45, 9),
    (46, 8),
    (47, 10),
    (47, 11),
    (48, 1),
    (49, 1),
    (50, 1),
    (51, 1),
    (51, 2),
    (52, 6),
    (52, 7),
    (53, 8),
    (53, 7),
    (53, 5),
    (54, 3),
    (55, 3),
    (56, 3),
    (57, 3),
    (58, 1),
    (58, 3),
    (58, 10);
    
DELETE FROM book_has_genre
WHERE books_id = 58 AND genre_id = 10;

UPDATE authors
SET fname = "Swami", lname = "Prabhupada"
WHERE author_id = 14;

-- What are all the books I have read recently and when were they published?
SELECT title, year_published
FROM books
WHERE `read` = "y";

-- What is the average year of all the books I have read?
SELECT ROUND(AVG(year_published)) AS avg_year
FROM books;

-- What genre have I read the most of?
SELECT g.genre, COUNT(b.book_id) AS book_count
FROM genres g
JOIN book_has_genre bhg ON g.genre_id = bhg.genre_id
JOIN books b ON bhg.books_id = b.book_id
WHERE b.`read` = "y"
GROUP BY g.genre
ORDER BY book_count DESC;