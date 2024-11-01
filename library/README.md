# Overview

The purpose of this database is to keep track of what books I have read, what books I want to read, and information about their authors. I also used some queries to learn more about what my favorite genres are.

This program integrates with a SQL relational database by performing several joins between tables to gain information about books, authors, and what genres I have spent the most time reading. It seeks to be a dynamic database that can be updated in the future as my personal library increases and I read more books.

I chose to create this database as, as a data scientist, I felt my SQL skills were my weakpoint and I wanted to learn more of the ins and outs of SQL, databases, and how to use MySQL. It is for this purpose that I chose to use MySQL over SQLite or other SQL distributions. I also want to keep track of what books I have read and want to read.

[Software Demo Video](https://youtu.be/GhcbvkG56rA)

# Relational Database

The database itself is a simple 4 table database I designed myself and inserted data I collected myself into.

THe four tables and columns are as follows:

```
{
    books: book_id, title, year_published, author_id, read,
    authors: author_id, fname, lname, born, died,
    genres: genre_id, genre,
    book_has_genre: books_id, genre_id
}
```

# Development Environment

The tools I used for this project consisted primarily of MySQL Workbench, and the SQL language. I used the MySQL ERD creator to build the structure and define relationships between tables, and then used to forward engineer feature to build up the database.

No libraries were used in this project, just SQL and MySQL.

# Useful Websites

- [Hevo Data](https://hevodata.com/)
- [Geeks for Geeks](https://www.geeksforgeeks.org/)

# Future Work

- This database can be continually maintained through SQL and be updated as my personal library expands
- I am yet to explore all the interesting insights that can be gained from this database. More exploration could be very interesting.
- Finding a more convenient way to insert data into tables would be ideal.