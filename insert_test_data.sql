# Insert data into the tables

USE berties_books;

INSERT INTO books (name, price)VALUES('Brighton Rock', 20.25),('Brave New World', 25.00), ('Animal Farm', 12.99);

INSERT INTO userData (username, first_name, last_name, email, hashedPassword)VALUES ('gold', 'Gold', 'User', 'gold@example.com', '$2b$10$Cqouh.7mvp8eBCrm5YwHd.t653kYBoNP6buYtafxSNoR/C8MMoWiG');