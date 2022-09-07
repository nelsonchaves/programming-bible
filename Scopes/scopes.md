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
User.younger_than(25)

# This will pull all the users between the ages provided ex: between 20-45 age. And also all users that are happy
scope :min_max_happy, ->(min, max) { where("age >= ? AND age <= ?", min, max).where(happy: true) }
User.min_max_happy(20, 45)
```
