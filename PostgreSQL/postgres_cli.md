# Postgres CLI
```ruby
# Start Postgres server
psql
psql -h localhost -U postgres

# list of databases (it's a lowercase L)
\l    

# Create a database
create database my_database;
CREATE DATABASE align_app_development;

# Delete database
drop database my_database;

# Create a user
create role nelson_chaves;  
Grant all privileges on my_database to nelson_chaves; # not sure about this


# use that DB (so you can run sql queries)
\c MyApp_development;  

# List tables
\d

# list, Describe a table
$ \d <table-name>

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

# drop a column
$ ALTER TABLE <table-name> DROP COLUMN <column_name>;

# drop a table
$ DROP TABLE <table-name>;
```
