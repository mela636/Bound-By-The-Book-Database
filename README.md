# Bound-By-The-Book-Database
Project that served as a format for a database of a fictional bookseller retail company based in the United States.

Excutive Summary of Business: 
Bound by the Book is a bookseller retail company based in the United States. Its purpose is to provide a space for customers to purchase literature and to foster a love for reading.

Problems:
- Establishing a connection to create regular customers
- Organizing books in person and in the database
- Marketing for the company itself and individual books
- Formatting the inventory within the database

Solutions:
- Efficient Database Organization
- Classify Items into Broad Categories

Constraints and Defined Objectives:
- Product Supertype
- Book Supertype
- ISBN & book_id

Key Business Rules:
- One customer can purchase one membership
- One customer orders many customer orders
- One product can be either technology, a toy, or a book
- One author writes many books/ Many authors can write one book
- Many books can fall under one book category
- One publisher can publish many books

Bound by the Book Entity Relationships: [ERD](https://github.com/user-attachments/assets/3199675d-3e71-4865-90c4-dbdd11a67c53)

The Biggest Challenges:
- Organizing the database in an effective manner with the large variety of relationships that come with books​
- Creating a product table that can encapsulate three types of items. 

Summary of Database Solution:
- Utilized Product table as the foundation of the database
- Product allowed for connection between customers and vendors
- Product is a supertype for the three items sold: technology, toys, and books
- Books fleshed out through connection of languages, authors, publishers, etc.
- Books is supertype for audiobooks, which led to narrator table
