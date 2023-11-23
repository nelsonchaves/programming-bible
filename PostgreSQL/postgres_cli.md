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

```ruby
# List all databases
\l    
```

#### Creating a Database

```ruby
# Create a new database
create database my_database;
```

#### Deleting a Database

```ruby
# Delete a database
drop database my_database;
```

#### Creating a User

```ruby
# Create a new user (role)
create role nelson_chaves;
```

```ruby
# Grant privileges to a user
grant all privileges on database my_database to nelson_chaves;
```

#### Using a Specific Database

```ruby
# Connect to a specific database
\c my_database;
```

#### Listing Tables

```ruby
# List all tables
\d
```

#### Describing a Table

```ruby
# Describe a specific table
\d <table-name>
```

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

```ruby
# Show current database and user
\c
```

#### Exiting the Postgres CLI

```ruby
# Quit psql
\q
```

#### Altering Tables

```ruby
# Drop a column from a table
alter table <table-name> drop column <column_name>;
```

```ruby
# Drop a table
drop table <table-name>;
```
