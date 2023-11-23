### Postgres CLI

Using the Postgres Command Line Interface (CLI) is essential for managing PostgreSQL databases. Here's a simplified guide to some common commands:

#### Starting the Postgres Server

To start the Postgres server and connect to it:

```ruby
# Start and connect to the Postgres server
psql
# or specify host and user
psql -h localhost -U postgres
```

#### Listing Databases

To view all the databases:

```ruby
# List all databases
\l    
```

#### Creating a Database

To create a new database:

```ruby
# Create a new database
create database my_database;
```

#### Deleting a Database

To delete an existing database:

```ruby
# Delete a database
drop database my_database;
```

#### Creating a User

To create a new user (role):

```ruby
# Create a new user
create role nelson_chaves;
```

To grant privileges to a user on a database:

```ruby
# Grant privileges to a user
grant all privileges on database my_database to nelson_chaves;
```

#### Using a Specific Database

To switch to a particular database:

```ruby
# Connect to a specific database
\c my_database;
```

#### Listing Tables

To list all tables in the current database:

```ruby
# List all tables
\d
```

#### Describing a Table

To describe a specific table:

```ruby
# Describe a specific table
\d <table-name>
```

To get detailed information about a table's schema:

```ruby
# Describe table schema in detail
\d+ my_table;
```

#### Resetting Table IDs

To truncate a table (reset primary keys to start from 1):

```ruby
# Truncate a table
truncate my_table;
```

#### Showing Current Database and User

To display the current database and user:

```ruby
# Show current database and user
\c
```

#### Exiting the Postgres CLI

To quit the Postgres CLI:

```ruby
# Quit psql
\q
```

#### Altering Tables

To drop a column from a table:

```ruby
# Drop a column from a table
alter table <table-name> drop column <column_name>;
```

To drop a table:

```ruby
# Drop a table
drop table <table-name>;
```
