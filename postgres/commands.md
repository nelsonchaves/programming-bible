# Postgres Commands
```ruby
Postgres CLI
# Start Postgres server
psql

# list of databases (it's a lowercase L)
\l    

# Create a database
create database my_database;

# Delete database
drop database my_database;

# Create a user
create role brian_spinos;  
Grant all privileges on my_database to brian_spinos; # not sure about this


# use that DB (so you can run sql queries)
\c MyApp_development;  

# List tables
\d

# Describe table schema
\d+ my_table;  

# Describe table schema, including table size on disk!
\d+

# restart the ID's (primary keys will start from 1)
truncate my_table;

# show current database and user
\c
#=> You are now connected to database "my_database" as user "dude".

# Quit psql
\q
```
```ruby
$ rails db

# drop a column
$ ALTER TABLE <table-name> DROP COLUMN <column_name>;

# drop a table
$ DROP TABLE <table-name>;

# list databases
$ \l

# list, discribe tables
$ \d

# list, discribe a table
$ \d <table-name>
```
```ruby
DROP TABLE items;

CREATE TABLE items(
    id SERIAL PRIMARY KEY,
    text VARCHAR(255) NOT NULL,
    is_done boolean NOT NULL
);


SELECT * FROM items;

INSERT INTO items (text, is_done) VALUES ('wash car again', false);
INSERT INTO items (text, is_done) VALUES ('wash dishes', false);
INSERT INTO items (text, is_done) VALUES ('wash house', false);

UPDATE users SET password_digest='$2a$10$kuM1Tuxbu5cfNkgeBAX4yupgC8dMQkQVXUhtwTsj1d9gPnJxHdF7q' WHERE id = 1;
```
