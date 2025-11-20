# Bertie's Books

Small Express + MySQL demo app for managing and searching a book catalog and basic user registration/login.

## Features
- List all books, bargain books (under £20), and search by title.
- Add books via a simple form.
- Register users with bcrypt-hashed passwords and basic login auditing.
- Simple EJS views and static CSS in [public/main.css](public/main.css).
- App-wide shop data exposed through [`app.locals.shopData`](index.js).

## Tech Stack
- Node.js
- Express
- EJS 
- HTML5 forms & basic CSS
- MySQL server

## Prerequisites
- Node.js
- MySQL server

## Setup

1. Install dependencies:
   ```sh
   npm install
   ```

2. Create the database (run in MySQL):
   - Execute [create_db.sql](create_db.sql)
   - Optionally insert seed data with [insert_test_data.sql](insert_test_data.sql)

3. Configure environment variables:
   - Copy or edit `.env` to match your MySQL credentials (the app reads DB settings from [.env](.env)):
     ```
     DB_USER=berties_books_app
     DB_PASSWORD=qwertyuiop
     DB_NAME=berties_books
     ```

4. Start the app:
   ```sh
   node index.js
   ```
   The server listens on port 8000 by default.

## Usage
- Open http://localhost:8000/
- Book routes are mounted under `/books` (see [routes/books.js](routes/books.js)):
  - /books/list - list all books
  - /books/bargainbooks - books under £20
  - /books/search - search page
  - /books/addbook - add a book
- User routes are under `/users` (see [routes/users.js](routes/users.js)):
  - /users/register - register a new user
  - /users/login - login
  - /users/audit - login attempts audit
