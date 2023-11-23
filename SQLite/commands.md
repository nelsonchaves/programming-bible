### SQLite Commands

SQLite is a lightweight, file-based database system used in many Rails applications. Here's a simple guide to some basic SQLite commands:

#### Entering SQLite Database Console

In Rails, you can access the SQLite console for your application:

```ruby
# Enter Rails database console
rails db
```

#### Listing All Tables

To see all the tables in your SQLite database:

```ruby
# List all tables
.tables
```

#### Inserting Data into a Table

To add a new record to a table, such as `users`:

```ruby
# Insert a new record into the 'users' table
INSERT INTO users (name, email, bio, age, happy, created_at, updated_at) VALUES ("John", "john@example.com", "", 25, true, "2022-01-01", "2022-01-01");
```

This command adds a new user with specified attributes to the `users` table.

#### Changing Display Mode

To improve the readability of query results:

```ruby
# Set display mode to 'column'
.mode column
```

This command changes the display mode to `column`, making the output more readable.

#### Selecting and Viewing Data

To view data from a table:

```ruby
# Select and view all records from 'users'
select * from users;
```

This command displays all records in the `users` table.
