# Bookmark Manager Challenge

This repository provides a Bookmark Manager with the following user stories:

```
As a user
So that I can quickly access my favourite web pages
I would like to be able to view my bookmark list.

As a user
So that I can save my favourite web pages
I would like to add new bookmarks to my list.
```

Functionality:

- a user is able to view their bookmarks.

Run "bundle" to install the gems (Sinatra, Capybara, Ruby, Rack).

![Bookmark Manager domain model](/Users/student/Downloads/Untitled_Diagram.drawio)

rackup -p 3000
```

To view bookmarks, navigate to `localhost:3000/bookmarks`

### To run tests:

```
In order to set-up the database, follow these steps:
- Connect to psql
- Create the database using the psql command CREATE DATABASE bookmark_manager;
- Connect to the database using the pqsl command \c bookmark_manager;
- Run the query we have saved in the file 01_create_bookmarks_table.sql
In order to set-up the test database, follow these steps:
- Connect to psql
- Create the database using the psql command CREATE DATABASE bookmark_manager_test;
- Connect to the database using the pqsl command \c bookmark_manager_test;
- Run the query we have saved in the file 01_create_bookmarks_table.sql
```
