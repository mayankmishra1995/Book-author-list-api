# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

Requirement 1:
Create 2 models
Authors:
author_id
first_name
Last_name
date_of_birth

Books:
book_id
book_title

Requirement 2:
Books can have many authors and Authors can have many Books.
For example:
R D Sharma has written 2 Books Trigonometry and Advanced Trigonometry
On Advanced Trigonometry, he Collaborated with Deepika Yadav.
So Advanced Trigonometry itself is written by 2 Authors

Create any join tables if needed for above requirement

Requirement 3:
Create an interface from where you can:
Add Author
List Author
Edit Author
Delete Author

Add Book
List Book
Edit Book
Delete Book

While adding a book, you can select multiple authors from the author's table for that book.

Requirement 4:
Create an API to get author details
For Eg:
If I fire /authors/{author_id}
it will return the author details and all the books that the author has written for the {author_id}

To run the app
Bundle it
Setup the db
Boost up your server
Seed the db for inbuilt data.(optional)

Get the Api
http://localhost:3000/publisheds