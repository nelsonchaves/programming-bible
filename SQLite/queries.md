# Where Method Queries
```ruby
User.where("name = 'John'") - Not advisable

# You may have

params = { search_term: "John" }


# You can do this but this is a bad idea because the search term does not escape someone can insert malicious code as part of the search term and become a security risk

User.where("name = '#{params[:search_term]}'")


# One way to prevent the issue above is using "provisional handlers".
# The question mark and the 1st argument will be replaced by the 2nd and 3rd arguments and in the proccess whatever string are in those arguments will be sanitized to prevent the security problem above which are called "sql injections"

User.where("name = ? AND email = ?", params[:search_term], "email")


# Another option is to use "placeholder conditions" with a hash as 2nd argument.

User.where("name = :name AND email = :email", { name: "John", email: "email" })


# And these commands generates the same SQL commands as above

User.where(name: "John")
User.where.not(name: "John")
User.where(name: "John").or(User.where(name: "John"))
User.where(name: "John").where(name: "Emma")


# This is generating an AND query 

User.where(name: "John", email: "jdoe@email.com")
```

# Ordering Queries
```ruby
# This is the place holder conditions here to filter out the the most recent users who joined before this month.
# You could fetch this in any order and then sort them in memory. It's more efficient to let the database do the sorting for you.

User.where("created_at >= :this_month", { this_month: Date.today.beginning_of_month }).order(created_at: :desc)
```
# Scopes
```ruby
# You can create scope queries with or without an argument


# This will pull all the active users

scope :active, -> { where(active: true) }
User.active


# This will pull all the users older than the age provided in the argument

scope :older_than, ->(age) { where("age > ?", age) }
User.older_than(25)


# You can daisy chain the scopes like this

User.older_than(25).active


# You can also have a default scope. One that applies to all queries even if you dont specify it.

default_scope { where(active: true) }


# This will pull all the users older than the age provided in the argument and the users created within the current year

scope :younger_than, ->(age) { where("age < ?", age).where("created_at > :this_year", { this_year: Date.today.beginning_of_year }) }


# This will pull all the users between the ages provided ex: between 20-45 age. And also all users that are happy

scope :min_max_happy, ->(min, max) { where("age >= ? AND age <= ?", min, max).where(happy: true) }
